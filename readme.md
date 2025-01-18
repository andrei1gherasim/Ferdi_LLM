# **FERDI LEGAL DATA PROCESSING using LLM**
 - before running the notebooks:
    -   acquire the texts from the legal files using this repo:

         https://github.com/Dalitics/Ferdi.git
    -   create and populate all the databases using this repo:

        [paperless repo to be added]
## How to run the notebooks
 - use the notebooks provided in the:
    - *01_Textes_Table* folder
    - *02_Base_Fiscale* folder
 - prerequisites:
    - UBUNTU 22.04 machine/vm/WSL2
    - python 3.12.8
    - pip3
    - jupyter engine: Jupyter Notebooks or Jupyter Lab or a IDE with a Jupyter
      externsion (i.e. VSCode with Jupter extension)
 - install the requirements:
    - ```bash
      pip3 install -r requirements
 - configure the OPEN AI API key:
    - generate the API key
    - run:
      ```bash 
      export OPENAI_API_KEY=[paste here the key]
 - configure the VOYAGE AI API key:
    - generate the API key
    - run:
      ```bash 
      export VOYAGE_API_KEY=[paste here the key]
## What does the notebook/repo do
This repo is intended to help extract relevant data from the extracted legal texts.
It will first create a vectorized database and then use an LLM to generate extract
relevant information from the vector db, using prompts.

To do this for a specific country, enter a valid name in the .env file (i.e. COUNTRY_NAME = 'MLI Mali'). The valid country names and codes can be found in the general_config.py file

# Adding new sql files
 - use the <strong>sql_files</strong> directory
 - all the files that have the .sql extension from this dir will be accessible in python using the
 ```python
 from sql_files import sql_files
 ```

 # Database access
 ### Ferdi and postgress databases can be accessed using the credentials provided in the <strong>postgres_connection.py</strong> file
 ### Also, <a href="url">http://lexivision.com:5050/browser/</a> here we can access the GUI of the databases