CREATE OR REPLACE FUNCTION fuzzy_hash(TEXT) RETURNS TEXT AS 'ssdeep_psql.so', 'pg_fuzzy_hash' LANGUAGE 'c';
CREATE OR REPLACE FUNCTION fuzzy_compare(TEXT, TEXT) RETURNS INTEGER AS 'ssdeep_psql.so', 'pg_fuzzy_compare' LANGUAGE 'c';
CREATE OR REPLACE FUNCTION fuzzy_hash_compare(TEXT, TEXT) RETURNS INTEGER AS 'ssdeep_psql.so', 'pg_fuzzy_hash_compare' LANGUAGE 'c';
