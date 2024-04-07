--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    black_holes_id integer NOT NULL,
    galaxy_name character varying(10) NOT NULL,
    size_in_miles integer,
    name character varying(30)
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_order_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_order_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_order_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    has_life boolean,
    planet_types text,
    name character varying(10)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_order_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_order_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_order_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_name character varying(30) NOT NULL,
    is_spherical boolean,
    description character varying(40),
    has_life boolean,
    planet_name character varying(30),
    name character varying(10)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_order_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_order_id_seq OWNER TO freecodecamp;

--
-- Name: moon_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_order_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying(30) NOT NULL,
    is_spherical boolean,
    distance_from_earth numeric,
    has_life boolean,
    star_name text,
    name character varying(10)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_order_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_order_id_seq OWNER TO freecodecamp;

--
-- Name: planet_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_order_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_million_of_years integer,
    galaxy_name character varying(10),
    name character varying(10)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_order_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_order_id_seq OWNER TO freecodecamp;

--
-- Name: star_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_order_id_seq OWNED BY public.star.star_id;


--
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_order_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_order_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_order_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_order_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_order_id_seq'::regclass);


--
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 'milkyway', 3, 'pit_of_despair');
INSERT INTO public.black_holes VALUES (2, 'pokey', 40, 'sucker');
INSERT INTO public.black_holes VALUES (3, 'farland', 29, 'big_boy');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkyway', 450, true, 'all types', NULL);
INSERT INTO public.galaxy VALUES (2, 'centari', 232, false, 'liquid', NULL);
INSERT INTO public.galaxy VALUES (3, 'tatoonie', 1000, true, 'rock', NULL);
INSERT INTO public.galaxy VALUES (4, 'farland', 710, false, 'air', NULL);
INSERT INTO public.galaxy VALUES (5, 'ellipse', 2, true, 'rock', NULL);
INSERT INTO public.galaxy VALUES (6, 'pokey', 1, false, 'liquid', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_man', true, 'rocky', true, 'speks', NULL);
INSERT INTO public.moon VALUES (2, 'lady_luck', true, 'gaseous', false, 'speks', NULL);
INSERT INTO public.moon VALUES (3, 'octo', true, 'liquid', true, 'speks', NULL);
INSERT INTO public.moon VALUES (4, 'balloon', true, 'gaseous', false, 'yellow', NULL);
INSERT INTO public.moon VALUES (5, 'great', false, 'rocky', true, 'yellow', NULL);
INSERT INTO public.moon VALUES (6, 'jor', true, 'rocky', true, 'name_here', NULL);
INSERT INTO public.moon VALUES (7, 'kay', false, 'liquid', true, 'name_here', NULL);
INSERT INTO public.moon VALUES (8, 'rocks', true, 'rocky', true, 'name_here', NULL);
INSERT INTO public.moon VALUES (9, 'H41-b', false, 'liquid', true, 'idk', NULL);
INSERT INTO public.moon VALUES (10, 'bndke', true, 'liquid', false, 'heck', NULL);
INSERT INTO public.moon VALUES (11, 'utf', false, 'gaseous', true, 'what', NULL);
INSERT INTO public.moon VALUES (12, 'pte3', true, 'liquid', false, 'what', NULL);
INSERT INTO public.moon VALUES (13, 'fame', false, 'rocky', true, 'what', NULL);
INSERT INTO public.moon VALUES (14, 'al342', false, 'gaseous', true, 'nope', NULL);
INSERT INTO public.moon VALUES (15, 'bleep', false, 'rocky', true, 'asdf', NULL);
INSERT INTO public.moon VALUES (16, 'air nation', true, 'gaseous', true, 'meep', NULL);
INSERT INTO public.moon VALUES (17, 'fire nation', true, 'gaseous', true, 'A2QP5', NULL);
INSERT INTO public.moon VALUES (18, 'water nation', false, 'liquid', true, 'maybe', NULL);
INSERT INTO public.moon VALUES (19, 'blood', false, 'liquid', false, 'maybe', NULL);
INSERT INTO public.moon VALUES (20, 'mtn', true, 'rocky', true, 'idk2', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'speks', true, 32, true, 'sun', NULL);
INSERT INTO public.planet VALUES (2, 'yellow', false, 200, false, 'sun', NULL);
INSERT INTO public.planet VALUES (10, 'name_here', true, 103, true, 'sun', NULL);
INSERT INTO public.planet VALUES (6, 'idk', false, 99, true, 'sun', NULL);
INSERT INTO public.planet VALUES (3, 'heck', true, 83, true, 'alpha12', NULL);
INSERT INTO public.planet VALUES (4, 'what', true, 9, false, 'alpha12', NULL);
INSERT INTO public.planet VALUES (5, 'nope', false, 400, false, 'B42G5', NULL);
INSERT INTO public.planet VALUES (7, 'asdf', true, 562, true, 'nebuli', NULL);
INSERT INTO public.planet VALUES (8, 'meep', false, 1, true, 'nebolu', NULL);
INSERT INTO public.planet VALUES (9, 'A2QP5', true, 3, true, 'nebolu', NULL);
INSERT INTO public.planet VALUES (11, 'maybe', false, 7, false, 'beta34q7', NULL);
INSERT INTO public.planet VALUES (12, 'idk2', true, 9, false, 'centi', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 7, 100, 'milkyway', NULL);
INSERT INTO public.star VALUES (2, 'alpha12', 10, 121, 'centari', NULL);
INSERT INTO public.star VALUES (3, 'B42G5', 24, 2, 'centari', NULL);
INSERT INTO public.star VALUES (4, 'nebuli', 532, 7, 'tatoonie', NULL);
INSERT INTO public.star VALUES (5, 'nebolu', 3, 7, 'tatoonie', NULL);
INSERT INTO public.star VALUES (6, 'beta34q7', 94, 1, 'farland', NULL);
INSERT INTO public.star VALUES (7, 'centi', 4, 685, 'farland', NULL);


--
-- Name: black_holes_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_order_id_seq', 3, true);


--
-- Name: galaxy_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_order_id_seq', 6, true);


--
-- Name: moon_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_order_id_seq', 20, true);


--
-- Name: planet_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_order_id_seq', 14, true);


--
-- Name: star_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_order_id_seq', 7, true);


--
-- Name: black_holes black_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_name_key UNIQUE (name);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (moon_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (planet_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (star_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_holes black_holes_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_galaxy_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star star_location_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_location_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

