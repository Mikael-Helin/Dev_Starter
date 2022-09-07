--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7 (Debian 13.7-0+deb11u1)
-- Dumped by pg_dump version 13.7 (Debian 13.7-0+deb11u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: todos; Type: TABLE; Schema: todos; Owner: postgres
--

CREATE TABLE todos.todos (
    id integer NOT NULL,
    "isDone" boolean DEFAULT false NOT NULL,
    text text NOT NULL
);


ALTER TABLE todos.todos OWNER TO postgres;

--
-- Name: todos_id_seq; Type: SEQUENCE; Schema: todos; Owner: postgres
--

CREATE SEQUENCE todos.todos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE todos.todos_id_seq OWNER TO postgres;

--
-- Name: todos_id_seq; Type: SEQUENCE OWNED BY; Schema: todos; Owner: postgres
--

ALTER SEQUENCE todos.todos_id_seq OWNED BY todos.todos.id;


--
-- Name: todos id; Type: DEFAULT; Schema: todos; Owner: postgres
--

ALTER TABLE ONLY todos.todos ALTER COLUMN id SET DEFAULT nextval('todos.todos_id_seq'::regclass);


--
-- Data for Name: todos; Type: TABLE DATA; Schema: todos; Owner: postgres
--

INSERT INTO todos.todos VALUES (1, false, 'Install Docker');
INSERT INTO todos.todos VALUES (2, true, 'Eat lunch');
INSERT INTO todos.todos VALUES (3, false, 'Learn PostgreSQL');
INSERT INTO todos.todos VALUES (4, false, 'Tell Mikael he is great!');


--
-- Name: todos_id_seq; Type: SEQUENCE SET; Schema: todos; Owner: postgres
--

SELECT pg_catalog.setval('todos.todos_id_seq', 4, true);


--
-- Name: todos todos_id_key; Type: CONSTRAINT; Schema: todos; Owner: postgres
--

ALTER TABLE ONLY todos.todos
    ADD CONSTRAINT todos_id_key UNIQUE (id);


--
-- PostgreSQL database dump complete
--

