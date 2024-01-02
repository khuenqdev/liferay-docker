#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER lportal WITH ENCRYPTED PASSWORD 'liferay123';
    CREATE DATABASE lportal;
    GRANT ALL PRIVILEGES ON DATABASE lportal TO lportal;
EOSQL