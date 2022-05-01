CREATE DATABASE biblioteca_pessoal_development;
CREATE DATABASE biblioteca_pessoal_production;
CREATE DATABASE biblioteca_pessoal_test;
CREATE USER tesla WITH ENCRYPTED PASSWORD 'tesla';
GRANT ALL PRIVILEGES ON DATABASE biblioteca_pessoal_development TO tesla;
GRANT ALL PRIVILEGES ON DATABASE biblioteca_pessoal_production TO tesla;
GRANT ALL PRIVILEGES ON DATABASE biblioteca_pessoal_test TO tesla;

