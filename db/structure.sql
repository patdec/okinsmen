--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: gender; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE gender AS ENUM (
    'male',
    'female'
);


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: okm_core_addresses; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE okm_core_addresses (
    id integer NOT NULL,
    human_id integer,
    street character varying,
    zip character varying,
    city character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: okm_core_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE okm_core_addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: okm_core_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE okm_core_addresses_id_seq OWNED BY okm_core_addresses.id;


--
-- Name: okm_core_humen; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE okm_core_humen (
    id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    gender gender
);


--
-- Name: okm_core_humen_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE okm_core_humen_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: okm_core_humen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE okm_core_humen_id_seq OWNED BY okm_core_humen.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY okm_core_addresses ALTER COLUMN id SET DEFAULT nextval('okm_core_addresses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY okm_core_humen ALTER COLUMN id SET DEFAULT nextval('okm_core_humen_id_seq'::regclass);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: okm_core_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY okm_core_addresses
    ADD CONSTRAINT okm_core_addresses_pkey PRIMARY KEY (id);


--
-- Name: okm_core_humen_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY okm_core_humen
    ADD CONSTRAINT okm_core_humen_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_okm_core_addresses_on_human_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_okm_core_addresses_on_human_id ON okm_core_addresses USING btree (human_id);


--
-- Name: fk_rails_9ee2c1fe67; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY okm_core_addresses
    ADD CONSTRAINT fk_rails_9ee2c1fe67 FOREIGN KEY (human_id) REFERENCES okm_core_humen(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user",public;

INSERT INTO schema_migrations (version) VALUES ('20160722204104'), ('20160722204105');


