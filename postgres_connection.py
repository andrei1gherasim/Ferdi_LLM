import psycopg2
import pandas as pd

from sqlalchemy import create_engine

psql_conn_config ={
    "HOSTNAME": "cs.assist-ai.ro",
    "DATABASE": "paperless",
    "USERNAME": "paperless",
    "PASSWORD": "paperless",
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

    engine = create_engine(f'postgresql+psycopg2://{user}:{password}@{host}:port/{database}')

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


# # Create a cursor object
# connection = create_psql_connection()

# cursor = connection.cursor()

# # Execute a SQL query
# cursor.execute(sql_files['get_docs_per_country'].replace("%country_name%", COUNTRY_NAME))

# # Fetch all rows from the executed query
# records = cursor.fetchall()

# column_names = [desc[0] for desc in cursor.description]

# cursor.close()
# connection.close()

# pd.DataFrame(records, columns=column_names)
    