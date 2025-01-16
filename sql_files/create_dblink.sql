CREATE EXTENSION IF NOT EXISTS postgres_fdw;

CREATE EXTENSION dblink;

SELECT pg_namespace.nspname, pg_proc.proname 
FROM pg_proc, pg_namespace 
WHERE pg_proc.pronamespace=pg_namespace.oid 
   AND pg_proc.proname LIKE '%dblink%';

SELECT dblink_connect('host=localhost user=paperless password=paperless dbname=paperless');

CREATE FOREIGN DATA WRAPPER postgres VALIDATOR postgresql_fdw_validator;

CREATE SERVER paperless FOREIGN DATA WRAPPER postgres OPTIONS (hostaddr '127.0.0.1', dbname 'paperless');

CREATE USER MAPPING FOR paperless SERVER paperless OPTIONS (user 'paperless', password 'paperless');