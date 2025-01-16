import psycopg2
import pandas as pd

from sqlalchemy import create_engine

from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import sessionmaker, declarative_base

psql_conn_config ={
    "HOSTNAME": "cs.assist-ai.ro",
    "DATABASE": "paperless",
    "USERNAME": "paperless",
    "PASSWORD": "paperless",
    "PORT": 5432,
}

def create_psql_connection(psql_conn_config=psql_conn_config, db=psql_conn_config.get("DATABASE")):
    conn = psycopg2.connect(
        host = psql_conn_config.get("HOSTNAME"),
        database = db,
        user = psql_conn_config.get("USERNAME"),
        password = psql_conn_config.get("PASSWORD")
    )

    return conn

def create_psql_engine(psql_conn_config=psql_conn_config, db=psql_conn_config.get("DATABASE")):
    # Create a connection string
    host = psql_conn_config.get("HOSTNAME")
    database = db
    user = psql_conn_config.get("USERNAME")
    password = psql_conn_config.get("PASSWORD")
    port = psql_conn_config.get("PORT")

    engine = create_engine(f'postgresql+psycopg2://{user}:{password}@{host}:{port}/{database}')

    return engine



def get_postgress_data(query, db=psql_conn_config.get("DATABASE")):
    """
    Returns result of query as a pandas df
    Params:
        query, str, postgres sql compatible query
        psql_conn_config, dict, default psql_conn_config, 
                        psql connection details
    Returns:
        df, pandas DataFrame, containing the query result
    """
    conn = create_psql_connection(db=db)

    # Execute the query and load the data into a pandas DataFrame
    df = pd.read_sql(query, conn)

    # Close the connection
    conn.close()

    # engine = create_psql_engine(db=db)

    # pd.read_sql_query(query, engine)

    return df

def write_to_postgress_table(df, table_name, engine, if_exists='replace', index_=False):

    df.to_sql(table_name, engine, if_exists=if_exists, index=index_)

# ######################################################################################

engine = create_psql_engine(db="Ferdi")

# Create a configured "Session" class
Session = sessionmaker(bind=engine)

from data_models import Textes

def bulk_update_textes(
        textes_to_update, 
        column_name, 
        COUNTRY_NAME):
    """    
    :param employees_to_update: list of tuples (employee_id, new_annee_code_debut)
    :param column_name: valid column name from the textes table
    """
    # Create a Session
    session = Session()

    for texte_code, new_col_value in textes_to_update:
        try:
            # Query the employee
            text_title = session.query(Textes).filter_by(TexteCode=texte_code, PaysCode=COUNTRY_NAME.split(" ")[0]).one_or_none()
            if text_title:
                # text_title.AnneeCodeDebut = new_code
                setattr(text_title, column_name, f"{new_col_value}")
                session.commit()
                msg_ = f"{texte_code} column {column_name} updated to {new_col_value}."
                print(msg_)
                # logging.info(f"{texte_code} column {column_name} updated to {new_col_value}.")
            else:
                msg_ = f"{texte_code} not found."
                print(msg_)
                # logging.warning(f"{texte_code} not found.")
        except Exception as e:
            session.rollback()
            msg_ = f"Error updating {texte_code}: {e}"
            print(msg_)
            # logging.error(f"Error updating {texte_code}: {e}")

    # Close the session
    session.close()