--
-- Postgres database dump, entry-point for docker
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

-- BEGIN: create sequences
CREATE SEQUENCE users_id_seq
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 99999
CACHE 1;
-- END: create sequences

-- BEGIN: create tables
CREATE TABLE users (
  id integer DEFAULT nextval('users_id_seq'::regclass),
  username VARCHAR(15),
  email VARCHAR(30),
  password VARCHAR(15),
  remember_token VARCHAR(50) DEFAULT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NULL
);
-- END: create tables

-- BEGIN: set owner to table
ALTER TABLE users OWNER TO postgres;
-- END: set owner to table

-- BEGIN: set owner to seq
ALTER TABLE users_id_seq OWNER TO postgres;
ALTER SEQUENCE users_id_seq OWNED BY users.id;
-- END: set owner to seq

-- BEGIN: pkeys
ALTER TABLE ONLY users
  ADD CONSTRAINT users_id_pkey PRIMARY KEY (id);
-- END: pkeys

-- BEGIN: fkeys
-- END: fkeys

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;