--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: rooms; Type: TABLE; Schema: public; Owner: action; Tablespace: 
--

CREATE TABLE rooms (
    id integer NOT NULL,
    roomid integer,
    name character varying(255),
    free boolean,
    "user" character varying(255),
    sdate date,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    rletterday character varying(255),
    rperiod integer,
    rnumber integer,
    rdate date,
    rfree boolean
);


ALTER TABLE public.rooms OWNER TO action;

--
-- Name: rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: action
--

CREATE SEQUENCE rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_id_seq OWNER TO action;

--
-- Name: rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: action
--

ALTER SEQUENCE rooms_id_seq OWNED BY rooms.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: action; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO action;

--
-- Name: userinos; Type: TABLE; Schema: public; Owner: action; Tablespace: 
--

CREATE TABLE userinos (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.userinos OWNER TO action;

--
-- Name: userinos_id_seq; Type: SEQUENCE; Schema: public; Owner: action
--

CREATE SEQUENCE userinos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userinos_id_seq OWNER TO action;

--
-- Name: userinos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: action
--

ALTER SEQUENCE userinos_id_seq OWNED BY userinos.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: action; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO action;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: action
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO action;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: action
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: action
--

ALTER TABLE ONLY rooms ALTER COLUMN id SET DEFAULT nextval('rooms_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: action
--

ALTER TABLE ONLY userinos ALTER COLUMN id SET DEFAULT nextval('userinos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: action
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: action
--

COPY rooms (id, roomid, name, free, "user", sdate, created_at, updated_at, rletterday, rperiod, rnumber, rdate, rfree) FROM stdin;
5647	\N	Torture chamber	t	Will David	2015-01-25	2015-01-23 14:07:08.186108	2015-01-23 14:07:08.186108	\N	\N	\N	\N	\N
42	\N	Life, the Universe, and Everything	t	Theo Cooper	2015-01-23	2015-01-23 14:07:57.127391	2015-01-23 14:07:57.127391	\N	\N	\N	\N	\N
1	\N	One	f	Uno	2010-05-18	2015-01-23 14:19:06.121881	2015-01-23 14:19:06.121881	\N	\N	\N	\N	\N
420	\N	room in the cloud	t	Mr. Cloudface	2015-01-23	2015-01-23 14:21:36.31392	2015-01-23 14:21:36.31392	\N	\N	\N	\N	\N
404	\N	Cloud	f	The Cloud	2015-01-23	2015-01-23 14:06:50.84278	2015-03-05 18:18:20.222732		\N	\N	\N	\N
2147483647	\N	Max	t	Plowman, Max	2015-03-13	2015-03-13 16:14:58.518434	2015-03-13 16:14:58.518434	Plowman	\N	\N	\N	\N
-3	\N	1234	t	4321	2013-01-13	2015-03-13 16:16:13.211604	2015-03-13 16:16:13.211604	5678	\N	\N	\N	\N
123	\N	xeroderma pigmentosum	f	Will David	2015-01-29	2015-01-23 14:09:16.664017	2015-03-13 16:20:50.70506		\N	\N	\N	\N
\.


--
-- Name: rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: action
--

SELECT pg_catalog.setval('rooms_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: action
--

COPY schema_migrations (version) FROM stdin;
20141120142725
20141208181159
20141211134614
20150302141221
\.


--
-- Data for Name: userinos; Type: TABLE DATA; Schema: public; Owner: action
--

COPY userinos (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
\.


--
-- Name: userinos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: action
--

SELECT pg_catalog.setval('userinos_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: action
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	blackrambo57@gmail.com	$2a$10$VVze.0Yg9zocMPC4WdQOsOyCu7fGRWtECmQQOmzlWwUo7PjQSaa8W	\N	\N	\N	1	2014-12-11 13:49:55.424865	2014-12-11 13:49:55.424865	69.38.231.2	69.38.231.2	2014-12-11 13:49:55.415231	2014-12-11 13:49:55.426317
3	blackrambo5@gmail.com	$2a$10$84Evw5bf8ceVdsbX.M09/uiBxXpRQuveD4uYNDX.QtsgAETMHQK2O	\N	\N	\N	1	2015-01-14 14:15:06.821849	2015-01-14 14:15:06.821849	69.38.231.2	69.38.231.2	2015-01-14 14:15:06.710158	2015-01-14 14:15:06.823466
4	123@example.com	$2a$10$YdeIcfcS0CmnCLMqJxT5Yu9gwLY/MBsEB9s8xA39.lHeoY4elKYZu	\N	\N	\N	1	2015-01-23 14:05:08.690654	2015-01-23 14:05:08.690654	69.38.231.2	69.38.231.2	2015-01-23 14:05:08.633858	2015-01-23 14:05:08.692479
5	tecnerd3@gmail.com	$2a$10$BAaLyhtCBfPLbWSOu0EWj..km8FB514JNATjihl2GLIoDG0A7DYCy	\N	\N	\N	1	2015-01-23 14:06:32.389709	2015-01-23 14:06:32.389709	69.38.231.2	69.38.231.2	2015-01-23 14:06:32.384889	2015-01-23 14:06:32.39049
6	willdavid@but.com	$2a$10$pHR4sAqSwjTx2YAXJjo3XuPSjnchwF2VY37K99cNE1Si0xhDhuiHq	\N	\N	\N	1	2015-01-23 14:06:32.834357	2015-01-23 14:06:32.834357	69.38.231.2	69.38.231.2	2015-01-23 14:06:32.823414	2015-01-23 14:06:32.837774
7	jesus@googlemail.com	$2a$10$VY0IJTcJhySutO1LbUWLkeOpbfSg2VKu4aWU2.fewgI91pLESlpu6	\N	\N	\N	2	2015-02-20 14:18:28.208977	2015-02-20 13:54:09.377664	69.38.231.2	69.38.231.2	2015-02-20 13:54:09.301839	2015-02-20 14:18:28.211172
2	ja3437@trevor.org	$2a$10$KNLpYXHhYpq83L.lFnqiQOF0bpxK7NkT6QHP0vo9LQ4pYwcrHVOKK	\N	\N	\N	10	2015-04-13 13:06:19.364799	2015-03-13 16:11:30.46326	69.38.231.2	69.38.231.2	2014-12-11 13:57:29.626715	2015-04-13 13:06:19.366778
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: action
--

SELECT pg_catalog.setval('users_id_seq', 7, true);


--
-- Name: rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: action; Tablespace: 
--

ALTER TABLE ONLY rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- Name: userinos_pkey; Type: CONSTRAINT; Schema: public; Owner: action; Tablespace: 
--

ALTER TABLE ONLY userinos
    ADD CONSTRAINT userinos_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: action; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_userinos_on_email; Type: INDEX; Schema: public; Owner: action; Tablespace: 
--

CREATE UNIQUE INDEX index_userinos_on_email ON userinos USING btree (email);


--
-- Name: index_userinos_on_reset_password_token; Type: INDEX; Schema: public; Owner: action; Tablespace: 
--

CREATE UNIQUE INDEX index_userinos_on_reset_password_token ON userinos USING btree (reset_password_token);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: action; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: action; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: action; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: action
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM action;
GRANT ALL ON SCHEMA public TO action;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

