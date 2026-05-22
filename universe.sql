--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    date_discovered date,
    description text,
    constellation character varying(255)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer,
    description text,
    constellation character varying(255)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    days_in_one_year integer,
    hours_in_one_day integer,
    radius_in_thousand_km numeric,
    has_life boolean,
    did_someone_land boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    planet_id integer,
    name character varying(255) NOT NULL
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    age character varying(255),
    constellation character varying(255)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Alcyoneus', '2022-02-01', 'Located 3.5 billion light-years from Earth.', 'Lynx');
INSERT INTO public.galaxy VALUES (2, 'NGC 4622', '2001-05-25', 'Lies 111 million light-years away from Earth', 'Centaurus');
INSERT INTO public.galaxy VALUES (3, 'NGC 6118', '2004-08-01', 'Located 83 million light-years from Earth', 'Serpens');
INSERT INTO public.galaxy VALUES (4, 'Condor Galaxy', '2007-01-01', 'It is 212 million light-years from Earth', 'Pavo');
INSERT INTO public.galaxy VALUES (5, 'Splinter Galaxy', '1788-05-01', 'Located 46.5 million light-yeats from Earth', 'Draco');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy', '1781-01-01', 'Located 21 million light-years from Earth', 'Ursa Major');
INSERT INTO public.galaxy VALUES (7, 'Milky Way', '1610-01-01', 'Includes 100-400 billion stars', 'Sagittarius');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 'Earth only natural satellite', 'Sagittarius');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 'Largest moon of Mars', 'Sagittarius');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'Small outer moon of Mars', 'Sagittarius');
INSERT INTO public.moon VALUES (4, 'Io', 5, 'Volcanically active moon', 'Sagittarius');
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'Ice-covered ocean moon', 'Sagittarius');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 'Largest moon in Solar System', 'Sagittarius');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 'Heavily cratered icy moon', 'Sagittarius');
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, 'Small reddish inner moon', 'Sagittarius');
INSERT INTO public.moon VALUES (9, 'Titan', 6, 'Moon with thick atmosphere', 'Sagittarius');
INSERT INTO public.moon VALUES (10, 'Enceladus', 6, 'Icy moon with water geysers', 'Sagittarius');
INSERT INTO public.moon VALUES (11, 'Mimas', 6, 'Moon with giant crater', 'Sagittarius');
INSERT INTO public.moon VALUES (12, 'Rhea', 6, 'Second-largest moon of Saturn', 'Sagittarius');
INSERT INTO public.moon VALUES (13, 'Lapetus', 6, 'Moon with two-tone surface', 'Sagittarius');
INSERT INTO public.moon VALUES (14, 'Dione', 6, 'Bright icy Saturn moon', 'Sagittarius');
INSERT INTO public.moon VALUES (15, 'Titania', 7, 'Largest moon of Uranus', 'Sagittarius');
INSERT INTO public.moon VALUES (16, 'Oberon', 7, 'Dark and cratered moon', 'Sagittarius');
INSERT INTO public.moon VALUES (17, 'Miranda', 7, 'Moon with unusual cliffs', 'Sagittarius');
INSERT INTO public.moon VALUES (18, 'Triton', 8, 'Retrograde icy moon', 'Sagittarius');
INSERT INTO public.moon VALUES (19, 'Nereid', 8, 'Moon with eccentric orbit', 'Sagittarius');
INSERT INTO public.moon VALUES (20, 'Charon', 14, 'Largest moon of Pluto', 'Sagittarius');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 88, 1408, 2.4, false, false, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 225, 5832, 6.1, false, false, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 365, 24, 6.4, true, true, 7);
INSERT INTO public.planet VALUES (4, 'Mars', 687, 25, 3.4, false, true, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4333, 10, 69.9, false, false, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 10759, 11, 58.2, false, false, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 30687, 17, 25.4, false, false, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 60190, 16, 24.6, false, false, 7);
INSERT INTO public.planet VALUES (9, 'TRAPPIST-1b', 2, 36, 7.1, false, false, 8);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1c', 2, 58, 7.0, false, false, 8);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1d', 4, 96, 5.0, false, false, 8);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 6, 146, 5.8, false, false, 8);
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1f', 9, 221, 6.7, false, false, 8);
INSERT INTO public.planet VALUES (14, 'Pluto', 90560, 153, 1.2, false, false, 7);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 3, 'International Space Station');
INSERT INTO public.satellite VALUES (2, 3, 'Hubble Space Telescope');
INSERT INTO public.satellite VALUES (3, 3, 'Sputnik 1');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SN 2011fe', 6, '21 million years', 'Ursa Major');
INSERT INTO public.star VALUES (2, 'SN 1970G', 6, '10 million years', 'Ursa Major');
INSERT INTO public.star VALUES (3, 'SN 1909A', 6, '15 million years', 'Ursa Major');
INSERT INTO public.star VALUES (4, 'NGS 5461', 6, '3 million years', 'Ursa Major');
INSERT INTO public.star VALUES (5, 'NGC 5462', 6, '5 million years', 'Ursa Major');
INSERT INTO public.star VALUES (6, 'NGC 6392', 6, '7 million years', 'Ursa Major');
INSERT INTO public.star VALUES (7, 'Sun', 7, '4.6 billion years', 'Sagittarius');
INSERT INTO public.star VALUES (8, 'TRAPPIST-1', 7, '7.6 billion years', 'Aquarius');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: satellite satellite_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

