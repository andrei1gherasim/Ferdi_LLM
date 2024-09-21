import os, sys

SQL_DIR_PATH = os.path.dirname(os.path.abspath(__file__))

sql_files = dict()

for file in os.listdir(SQL_DIR_PATH):
    filename = os.path.splitext(file)
    if filename[1] == ".sql":
        with open(os.path.join(SQL_DIR_PATH, file), 'r') as f:
            sql_files[filename[0]] = f.read()
