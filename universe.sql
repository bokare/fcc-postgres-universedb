--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
-- Name: fifth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth (
    fifth_id integer NOT NULL,
    name character varying(10) NOT NULL,
    age integer
);


ALTER TABLE public.fifth OWNER TO freecodecamp;

--
-- Name: fifth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_id_seq OWNED BY public.fifth.fifth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    age integer,
    mass numeric,
    type text,
    spiral_arms boolean,
    eliptical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_serial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_serial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_serial_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_serial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_serial_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(20),
    mass integer,
    radius integer,
    planet_name character varying(30),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_serial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_serial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_serial_id_seq OWNER TO freecodecamp;

--
-- Name: moon_serial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_serial_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(20),
    mass integer,
    radius integer,
    dist integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_serial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_serial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_serial_id_seq OWNER TO freecodecamp;

--
-- Name: planet_serial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_serial_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    type character varying(20) NOT NULL,
    luminosity character varying(20) NOT NULL,
    mass integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_serial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_serial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_serial_id_seq OWNER TO freecodecamp;

--
-- Name: star_serial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_serial_id_seq OWNED BY public.star.star_id;


--
-- Name: fifth fifth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth ALTER COLUMN fifth_id SET DEFAULT nextval('public.fifth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_serial_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_serial_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_serial_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_serial_id_seq'::regclass);


--
-- Data for Name: fifth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth VALUES (1, 'John', 25);
INSERT INTO public.fifth VALUES (2, 'Alice', 30);
INSERT INTO public.fifth VALUES (3, 'Bob', 28);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 30, 14, 1, 'SPIRAL', true, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 24, 13, 8, 'SPIRAL', true, false);
INSERT INTO public.galaxy VALUES (3, 'AnTriangulum', 10, 6, 5, 'SPIRAL', true, false);
INSERT INTO public.galaxy VALUES (4, 'M87', 190, 11, 6, 'ELIPTICAL', false, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 50, 11, 2, 'SPIRAL', true, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 25, 9, 3, 'SPIRAL', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Natural', 0, 1737, 'Earth', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Natural', 0, 11, 'Mars', 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Natural', 0, 6, 'Mars', 3);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Natural', 0, 2634, 'Jupiter', 4);
INSERT INTO public.moon VALUES (5, 'Titan', 'Natural', 0, 2576, 'Saturn', 5);
INSERT INTO public.moon VALUES (7, 'Io', 'Natural', 0, 1822, 'Jupiter', 1);
INSERT INTO public.moon VALUES (8, 'Europa', 'Natural', 0, 1561, 'Jupiter', 2);
INSERT INTO public.moon VALUES (9, 'Triton', 'Natural', 0, 1353, 'Neptune', 3);
INSERT INTO public.moon VALUES (10, 'Rhea', 'Natural', 0, 764, 'Saturn', 4);
INSERT INTO public.moon VALUES (11, 'Enceladus', 'Natural', 0, 252, 'Saturn', 5);
INSERT INTO public.moon VALUES (13, 'Charon', 'Natural', 0, 604, 'Pluto', 1);
INSERT INTO public.moon VALUES (14, 'Oberon', 'Natural', 0, 761, 'Uranus', 2);
INSERT INTO public.moon VALUES (15, 'Miranda', 'Natural', 0, 236, 'Uranus', 3);
INSERT INTO public.moon VALUES (16, 'Dione', 'Natural', 0, 563, 'Saturn', 4);
INSERT INTO public.moon VALUES (17, 'Titania', 'Natural', 0, 789, 'Uranus', 5);
INSERT INTO public.moon VALUES (19, 'Umbriel', 'Natural', 0, 585, 'Uranus', 1);
INSERT INTO public.moon VALUES (20, 'Tethys', 'Natural', 0, 531, 'Saturn', 2);
INSERT INTO public.moon VALUES (12, 'Phoebe', 'Natural', 0, 107, 'Saturn', 1);
INSERT INTO public.moon VALUES (18, 'Iapetus', 'Natural', 0, 736, 'Saturn', 1);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Natural', 0, 2410, 'Jupiter', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 0, 0, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 1, 1, 1, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 1, 1, 1, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 0, 1, 2, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', 318, 11, 5, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', 95, 9, 10, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 15, 4, 19, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 17, 4, 30, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf Planet', 0, 0, 40, 3);
INSERT INTO public.planet VALUES (10, 'Mars'' Moon Phobos', 'Moon', 0, 0, 0, 4);
INSERT INTO public.planet VALUES (11, 'Mars'' Moon Deimos', 'Moon', 0, 0, 0, 5);
INSERT INTO public.planet VALUES (12, 'Jupiter''s Moon Io', 'Moon', 0, 0, 0, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Proxima Cen', 'M5.5V', '0.15', 0, 2);
INSERT INTO public.star VALUES (3, 'Vega', 'A0V', '4.1', 2, 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'M2Iab', '126000', 12, 4);
INSERT INTO public.star VALUES (5, 'Alpha A', 'G2V', '1.52', 1, 5);
INSERT INTO public.star VALUES (6, 'Alpha B', 'K1V', '0.5', 11, 6);
INSERT INTO public.star VALUES (1, 'Sirius', 'A1V', '23.6', 2, 1);


--
-- Name: fifth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_id_seq', 1, false);


--
-- Name: galaxy_serial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_serial_id_seq', 6, true);


--
-- Name: moon_serial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_serial_id_seq', 20, true);


--
-- Name: planet_serial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_serial_id_seq', 12, true);


--
-- Name: star_serial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_serial_id_seq', 6, true);


--
-- Name: fifth fifth_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_id_key UNIQUE (fifth_id);


--
-- Name: fifth fifth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_pkey PRIMARY KEY (fifth_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

