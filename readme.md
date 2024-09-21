# Up to 20240921:
 textes_fiscaux_exacts.ipynb
 textes_legaux_exacts.ipynb

# Start local Ollama service with llama3.1

### with GPU
```sh
docker run -d --gpus=all -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
```

### without GPU 
```sh
docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
```

### enter the container
```sh
docker exec -it ollama bash
```

### and run the command below
```sh
ollama run llama3.1
```

# To run the notebooks
### first install the conda env
```sh
conda env create -f ferdi_env.yml
```
 - the <strong>ferdi_env.yml</strong> file is located in the repo root directory
### or, install the modules mentioned in the notebooks

# Adding new sql files
 - use the <strong>sql_files</strong> directory
 - all the files that have the .sql extension from this dir will be accessible in python using the
 ```python
 from sql_files import sql_files
 ```

 # Database access
 ### Ferdi and postgress databases can be accessed using the credentials provided in the <strong>postgres_connection.py</strong> file
 ### Also, <a href="url">http://lexivision.com:5050/browser/</a> here we can access the GUI of the databases