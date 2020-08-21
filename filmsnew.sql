--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    name text NOT NULL,
    date_of_birth date
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_seq OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;


--
-- Name: actors_movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors_movies (
    actor_id integer DEFAULT 0 NOT NULL,
    movie_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.actors_movies OWNER TO postgres;

--
-- Name: directors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.directors (
    id integer NOT NULL,
    name text NOT NULL,
    date_of_birth date
);


ALTER TABLE public.directors OWNER TO postgres;

--
-- Name: directors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directors_id_seq OWNER TO postgres;

--
-- Name: directors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.directors_id_seq OWNED BY public.directors.id;


--
-- Name: directors_movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.directors_movies (
    director_id integer DEFAULT 0 NOT NULL,
    movie_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.directors_movies OWNER TO postgres;

--
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    id integer NOT NULL,
    name character varying(200)
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_id_seq OWNER TO postgres;

--
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;


--
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    id integer NOT NULL,
    title character varying(200) DEFAULT 'noname'::character varying NOT NULL,
    genre_id character varying(200) DEFAULT 'noname'::character varying NOT NULL,
    oscars integer
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_id_seq OWNER TO postgres;

--
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;


--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- Name: directors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors ALTER COLUMN id SET DEFAULT nextval('public.directors_id_seq'::regclass);


--
-- Name: genres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);


--
-- Name: movies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (id, name, date_of_birth) FROM stdin;
2	Johnny Depp	1963-06-06
4	Keira Knightley	1985-03-26
5	Jessica Chastain	1977-03-24
3	Keanu Reeves	1964-09-02
\.


--
-- Data for Name: actors_movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors_movies (actor_id, movie_id) FROM stdin;
2	2
4	2
5	7
3	4
\.


--
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.directors (id, name, date_of_birth) FROM stdin;
1	Quentin Tarantino	1963-03-27
2	Christopher Nolan	1970-06-30
3	Martin Scorsese	1942-11-17
4	Darren Aronofsky	1969-02-12
\.


--
-- Data for Name: directors_movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.directors_movies (director_id, movie_id) FROM stdin;
1	5
2	1
3	8
4	7
\.


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres (id, name) FROM stdin;
1	Sci-Fi
2	Fantasy
3	Criminal
4	Thriller
\.


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (id, title, genre_id, oscars) FROM stdin;
1	Interstellar	1	1
2	Pirates of the Caribbean	2	0
4	The Matrix	1	4
5	Pulp Fiction	3	1
7	mother!	4	0
8	Shutter Island	4	0
\.


--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_id_seq', 5, true);


--
-- Name: directors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.directors_id_seq', 4, true);


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_id_seq', 4, true);


--
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_id_seq', 15, true);


--
-- PostgreSQL database dump complete
--

