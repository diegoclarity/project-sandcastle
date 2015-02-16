CREATE TABLE data_master (
  did UUID PRIMARY KEY
  , external_id_0 TEXT
  , external_id_1 TEXT
  , .. 
);

CREATE TABLE providers (
  name TEXT PRIMARY KEY
  , contact_email TEXT
);

CREATE TABLE data_sets (
  data_series_name TEXT PRIMARY KEY
  , provider_name TEXT REFERENCES providers (name)
  , license TEXT
  , ingest_script TEXT
);

-- create by some ingest script
CREATE TABLE data_series_1 (
  did UUID REFERENCES data_master (did)
  , ts TIMESTAMP 
  , value0 NUMERIC
  , value1 TEXT
  , ..
);