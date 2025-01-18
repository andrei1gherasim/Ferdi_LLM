from postgres_connection import get_postgress_data
from sql_files import sql_files
import pandas as pd
import os

from llama_index.core import Document
from llama_index.core import Settings
from llama_index.core import VectorStoreIndex, load_index_from_storage

from llama_index.core.storage import StorageContext
from llama_index.core.node_parser import TokenTextSplitter

from llama_index.embeddings.voyageai import VoyageEmbedding

from llama_index.core import get_response_synthesizer

from llama_index.llms.openai import OpenAI

from llama_index.core.retrievers import VectorIndexRetriever

from llama_index.postprocessor.voyageai_rerank import VoyageAIRerank

from llama_index.core import get_response_synthesizer
from llama_index.core.response_synthesizers import ResponseMode
from llama_index.core.query_engine import RetrieverQueryEngine

from llama_index.core.vector_stores import (
    MetadataFilter,
    MetadataFilters,
)


VOYAGE_API_KEY = os.environ.get("VOYAGE_API_KEY", "")
OPENAI_API_KEY = os.environ.get("OPENAI_API_KEY", "")

EMBEDDING_MODEL_SETTINGS = {
    "VOYAGE_AI": {
        "name": "voyage-law-2",
        "api_key": VOYAGE_API_KEY
    },
    }

def get_country_legal_docs(country):
    df = get_postgress_data(sql_files['get_docs_per_country'].replace("%country_name%", country))

    df_droit = get_postgress_data(sql_files['get_droit_type_for_docs_per_country'].replace("%country_name%", country))

    df = pd.merge(df,df_droit,how='left', on='title')

    texts = df.to_dict(orient='index')
    # texts = dict(list(texts.items())[-30:])
    documents = [Document(text=txt['content'].replace('\x92', '\''), 
                          metadata={'title': txt['title'], 'law type': txt['tag']}) for txt in texts.values()]
    return (df, documents)

def get_voyage_ai_embedding_model():
    embed_model = VoyageEmbedding(
        model_name=EMBEDDING_MODEL_SETTINGS.get("VOYAGE_AI").get("name"),
        voyage_api_key=EMBEDDING_MODEL_SETTINGS.get("VOYAGE_AI").get("api_key")
    )

    return embed_model

def get_vector_db_from_documents(documents, country, embedding_model, chunk_size = int(1024)):
    Settings.embed_model = embedding_model

    transformations_example = [
        TokenTextSplitter(
            chunk_size=chunk_size,
            chunk_overlap=(100 if chunk_size > 1024 else int(chunk_size/10)),
            separator=" ",
        ),
        embedding_model,
    ]

    storage_name = f"storage_{country}_complete_1024_voyage-law"
    storage_path = os.path.join(os.curdir, "..", "saved_storage", storage_name)

    if not os.path.exists(storage_path):
        index = VectorStoreIndex.from_documents(documents, show_progress=True, transformations=transformations_example)
        # save index to disk
        index.set_index_id("vector_index")
        index.storage_context.persist(storage_path)
    else:
        print('loading from local')
        # rebuild storage context
        storage_context = StorageContext.from_defaults(persist_dir=storage_path)
        # load index
        index = load_index_from_storage(storage_context, index_id="vector_index")

    return index

def get_open_ai_llm():
    llm = OpenAI(model="gpt-4o-mini", temperature=0)

    os.environ["OPENAI_API_KEY"] = OPENAI_API_KEY

    Settings.llm = llm

    return llm

def create_vector_engine(vector_index, doc_name, llm, operator="==", config={}):
    if doc_name:
        filters = MetadataFilters(
            filters=[
                MetadataFilter(
                    key="title", 
                    value=doc_name,
                    operator=operator
                ),
            ]
        )
    else:
        filters = None

    voyageai_rerank = VoyageAIRerank(
        api_key=VOYAGE_API_KEY, top_k=config.get("rerank_top_k", 2), model="rerank-2", truncation=False
    )

    vector_retriever = VectorIndexRetriever(index=vector_index, similarity_top_k=config.get("similarity_top_k", 10), filters=filters)

    try:
        response_synthesizer = get_response_synthesizer(llm=llm, response_mode=ResponseMode.COMPACT, structured_answer_filtering=True)

        vector_query_engine = RetrieverQueryEngine(
            retriever=vector_retriever,
            response_synthesizer=response_synthesizer,
            node_postprocessors=[voyageai_rerank]
        )
    except AttributeError as e:
        print(e)

        response_synthesizer = get_response_synthesizer(llm=llm, response_mode=ResponseMode.COMPACT)

        vector_query_engine = RetrieverQueryEngine(
            retriever=vector_retriever,
            response_synthesizer=response_synthesizer,
            node_postprocessors=[voyageai_rerank]
        )
            
    return vector_query_engine
    