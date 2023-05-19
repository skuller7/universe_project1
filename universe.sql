--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    key_id integer NOT NULL,
    name character varying(59),
    age integer,
    type text,
    distance integer,
    shape text,
    antiblud character varying(30) DEFAULT 'aabc'::character varying NOT NULL,
    galaxy_id integer NOT NULL,
    moon integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    key_id integer NOT NULL,
    name character varying(59),
    age numeric,
    dal boolean,
    type text,
    shape text,
    distance integer,
    antiblud character varying(30) DEFAULT 'abc'::character varying NOT NULL,
    moon integer NOT NULL,
    planet_id integer,
    moon_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon;


--
-- Name: moon_moon_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq1 OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq1 OWNED BY public.moon.moon_id;


--
-- Name: nijebitno; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nijebitno (
    nijebitno_id integer NOT NULL,
    name character varying(90),
    bitno text,
    kolona character varying(80) DEFAULT 'foo'::character varying NOT NULL,
    second_kolona character varying(40) DEFAULT 'loo'::character varying NOT NULL,
    bitnonijebitno text
);


ALTER TABLE public.nijebitno OWNER TO freecodecamp;

--
-- Name: nijebitno_nijebitno_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nijebitno_nijebitno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nijebitno_nijebitno_id_seq OWNER TO freecodecamp;

--
-- Name: nijebitno_nijebitno_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nijebitno_nijebitno_id_seq OWNED BY public.nijebitno.nijebitno_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    key_id integer NOT NULL,
    name character varying(59),
    age numeric,
    dal boolean,
    type text,
    shape text,
    distance integer,
    antiblud character varying(30) DEFAULT 'abc'::character varying NOT NULL,
    planet_id integer NOT NULL,
    star integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    key_id integer NOT NULL,
    name character varying(59),
    age integer,
    type text,
    distance integer,
    shape text,
    antiblud character varying(30) DEFAULT 'abc'::character varying NOT NULL,
    star_id integer NOT NULL,
    galaxy integer,
    galaxy_id_ref integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq1'::regclass);


--
-- Name: nijebitno nijebitno_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nijebitno ALTER COLUMN nijebitno_id SET DEFAULT nextval('public.nijebitno_nijebitno_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 5, NULL, NULL, NULL, 'aabc', 1, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 14, 'spral', NULL, NULL, 'aabc', 2, NULL);
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf', 11, 'irregular', NULL, NULL, 'aabc', 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 13, 'elliptical', NULL, NULL, 'aabc', 4, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 56, 'lenticular', NULL, NULL, 'aabc', 5, NULL);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 11, 'spiral', NULL, NULL, 'aabc', 6, NULL);
INSERT INTO public.galaxy VALUES (7, 'Messier 81', 5, 'spiral', NULL, NULL, 'aabc', 7, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'Earths Satelite', 41, NULL, NULL, NULL, NULL, 'abc', 1, NULL, 1);
INSERT INTO public.moon VALUES (1, 'Europa', NULL, NULL, 'Ice', NULL, NULL, 'abc', 2, NULL, 2);
INSERT INTO public.moon VALUES (2, 'Luna', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 3, NULL, 3);
INSERT INTO public.moon VALUES (3, 'Phobos', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 4, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Triton', NULL, NULL, 'Ice', NULL, NULL, 'abc', 5, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Titan', NULL, NULL, 'Gas', NULL, NULL, 'abc', 6, NULL, 6);
INSERT INTO public.moon VALUES (7, 'lo', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 7, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Enceladus', NULL, NULL, 'Ice', NULL, NULL, 'abc', 8, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Callisto', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 9, NULL, 9);
INSERT INTO public.moon VALUES (10, 'Deimos', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 10, NULL, 10);
INSERT INTO public.moon VALUES (11, 'Hyperion', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 11, NULL, 11);
INSERT INTO public.moon VALUES (12, 'Rhea', NULL, NULL, 'Ice', NULL, NULL, 'abc', 12, NULL, 12);
INSERT INTO public.moon VALUES (13, 'Oberon', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 13, NULL, 13);
INSERT INTO public.moon VALUES (14, 'Lapetus', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 14, NULL, 14);
INSERT INTO public.moon VALUES (15, 'Miranda', NULL, NULL, 'Ice', NULL, NULL, 'abc', 15, NULL, 15);
INSERT INTO public.moon VALUES (16, 'Ariel', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 16, NULL, 16);
INSERT INTO public.moon VALUES (17, 'Umbriel', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 17, NULL, 17);
INSERT INTO public.moon VALUES (18, 'Dione', NULL, NULL, 'Tethys', NULL, NULL, 'abc', 18, NULL, 18);
INSERT INTO public.moon VALUES (19, 'Charon', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 19, NULL, 19);
INSERT INTO public.moon VALUES (20, 'Himalia', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 20, NULL, 20);
INSERT INTO public.moon VALUES (21, 'Kerberos', NULL, NULL, 'Auth', NULL, NULL, 'abc', 21, NULL, 21);
INSERT INTO public.moon VALUES (22, 'Hydra', NULL, NULL, 'Crack', NULL, NULL, 'abc', 22, NULL, 22);
INSERT INTO public.moon VALUES (23, 'Despina', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 23, NULL, 23);
INSERT INTO public.moon VALUES (24, 'Nix', NULL, NULL, 'Rocky', NULL, NULL, 'abc', 24, NULL, 24);
INSERT INTO public.moon VALUES (25, 'Larissa', NULL, NULL, 'Ice', NULL, NULL, 'abc', 25, NULL, 25);


--
-- Data for Name: nijebitno; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nijebitno VALUES (1, 'name0', 'important0', 'foo', 'loo', NULL);
INSERT INTO public.nijebitno VALUES (2, 'name1', 'important1', 'foo', 'loo', NULL);
INSERT INTO public.nijebitno VALUES (3, 'name2', 'important2', 'foo', 'loo', NULL);
INSERT INTO public.nijebitno VALUES (4, 'name3', 'important3', 'foo', 'loo', NULL);
INSERT INTO public.nijebitno VALUES (5, 'name4', 'important4', 'foo', 'loo', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', 65, NULL, NULL, NULL, NULL, 'abc', 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Earth', NULL, NULL, 'Terrestial', NULL, NULL, 'abc', 2, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', NULL, NULL, 'Gas', NULL, NULL, 'abc', 3, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'J-1407b', NULL, NULL, 'Gas', NULL, NULL, 'abc', 4, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Bespin', 4.2, NULL, 'Gas', NULL, NULL, 'abc', 5, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Crait', 1.6, NULL, 'Mineral', NULL, NULL, 'abc', 6, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Felucia', 6.35, NULL, 'Fungal', NULL, NULL, 'abc', 7, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Geonosis', 62.2, NULL, 'Rocky', NULL, NULL, 'abc', 8, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Hoth', 17.3, NULL, 'Ice', NULL, NULL, 'abc', 9, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Kamino', 10.5, NULL, 'Ocean', NULL, NULL, 'abc', 10, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Naboo', 4.2, NULL, 'Terrestial', NULL, NULL, 'abc', 11, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'Yavin IV', 25.1, NULL, 'Fores', NULL, NULL, 'abc', 12, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'Endor', 76.5, NULL, 'Forest', NULL, NULL, 'abc', 13, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 164, NULL, NULL, NULL, 'abc', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 5, 'M', NULL, NULL, 'abc', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Vega', 455, 'B', NULL, NULL, 'abc', 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Pollaris', 112, 'F', NULL, NULL, 'abc', 4, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Sirius', 2, 'A1V', NULL, NULL, 'abc', 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Alpha Centauri A', 2, 'G2V', NULL, NULL, 'abc', 6, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Alpha Cenatauri B', 1, 'K1V', NULL, NULL, 'abc', 7, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: moon_moon_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq1', 25, true);


--
-- Name: nijebitno_nijebitno_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nijebitno_nijebitno_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: nijebitno nijebitno_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nijebitno
    ADD CONSTRAINT nijebitno_pkey PRIMARY KEY (nijebitno_id);


--
-- Name: nijebitno notbitno; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nijebitno
    ADD CONSTRAINT notbitno UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uni_shape; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uni_shape UNIQUE (shape);


--
-- Name: moon uni_shape_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uni_shape_moon UNIQUE (shape);


--
-- Name: planet uni_shape_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uni_shape_planet UNIQUE (shape);


--
-- Name: star uni_shape_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uni_shape_star UNIQUE (shape);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planett_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planett_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moonplanet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moonplanet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--
