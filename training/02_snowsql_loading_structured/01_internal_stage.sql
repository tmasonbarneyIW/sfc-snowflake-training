USE ROLE TRAININGDBA;
USE DATABASE TRAINING;
USE SCHEMA PUBLIC;

CREATE OR REPLACE STAGE TRAINING.PUBLIC.INTERNAL_STAGE;

CREATE OR REPLACE FILE FORMAT TRAINING.PUBLIC.CSV_GENERIC_FORMAT
  TYPE = CSV
  FIELD_DELIMITER = ','
  SKIP_HEADER = 1
  NULL_IF = ('NULL', 'null','')
  EMPTY_FIELD_AS_NULL = true
  COMPRESSION = gzip;
