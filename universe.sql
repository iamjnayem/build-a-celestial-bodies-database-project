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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    self_rotation numeric(10,2),
    description text
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
    name character varying(30),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    self_rotation numeric(10,2),
    description text,
    planet_id integer NOT NULL
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
    name character varying(30),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    self_rotation numeric(10,2),
    description text,
    star_id integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    self_rotation numeric(10,2),
    description text,
    galaxy_id integer NOT NULL
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'b1', 100);
INSERT INTO public.blackhole VALUES (2, 'b2', 200);
INSERT INTO public.blackhole VALUES (3, 'b3', 300);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', false, false, 100, 100, 100.20, 'this is g1');
INSERT INTO public.galaxy VALUES (2, 'g2', false, false, 100, 100, 100.20, 'this is g2');
INSERT INTO public.galaxy VALUES (3, 'g3', false, false, 100, 100, 100.20, 'this is g3');
INSERT INTO public.galaxy VALUES (4, 'g4', false, false, 100, 100, 100.20, 'this is g4');
INSERT INTO public.galaxy VALUES (5, 'g5', false, false, 100, 100, 100.20, 'this is g5');
INSERT INTO public.galaxy VALUES (6, 'g6', false, false, 100, 100, 100.20, 'this is g6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', false, false, 100, 100, 100.20, 'this is m1', 1);
INSERT INTO public.moon VALUES (2, 'm2', false, false, 100, 100, 100.20, 'this is m2', 1);
INSERT INTO public.moon VALUES (3, 'm3', false, false, 100, 100, 100.20, 'this is m3', 1);
INSERT INTO public.moon VALUES (4, 'm4', false, false, 100, 100, 100.20, 'this is m4', 2);
INSERT INTO public.moon VALUES (5, 'm5', false, false, 100, 100, 100.20, 'this is m5', 2);
INSERT INTO public.moon VALUES (6, 'm6', false, false, 100, 100, 100.20, 'this is m6', 2);
INSERT INTO public.moon VALUES (7, 'm7', false, false, 100, 100, 100.20, 'this is m7', 3);
INSERT INTO public.moon VALUES (8, 'm8', false, false, 100, 100, 100.20, 'this is m8', 3);
INSERT INTO public.moon VALUES (9, 'm9', false, false, 100, 100, 100.20, 'this is m9', 3);
INSERT INTO public.moon VALUES (10, 'm10', false, false, 100, 100, 100.20, 'this is m10', 4);
INSERT INTO public.moon VALUES (11, 'm11', false, false, 100, 100, 100.20, 'this is m11', 4);
INSERT INTO public.moon VALUES (12, 'm12', false, false, 100, 100, 100.20, 'this is m12', 4);
INSERT INTO public.moon VALUES (13, 'm13', false, false, 100, 100, 100.20, 'this is m13', 5);
INSERT INTO public.moon VALUES (14, 'm14', false, false, 100, 100, 100.20, 'this is m14', 5);
INSERT INTO public.moon VALUES (15, 'm15', false, false, 100, 100, 100.20, 'this is m15', 5);
INSERT INTO public.moon VALUES (16, 'm16', false, false, 100, 100, 100.20, 'this is m16', 6);
INSERT INTO public.moon VALUES (17, 'm17', false, false, 100, 100, 100.20, 'this is m17', 6);
INSERT INTO public.moon VALUES (18, 'm18', false, false, 100, 100, 100.20, 'this is m18', 6);
INSERT INTO public.moon VALUES (19, 'm19', false, false, 100, 100, 100.20, 'this is m19', 6);
INSERT INTO public.moon VALUES (20, 'm20', false, false, 100, 100, 100.20, 'this is m20', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', false, false, 100, 100, 100.20, 'this is p1', 1);
INSERT INTO public.planet VALUES (2, 'p2', false, false, 100, 100, 100.20, 'this is p2', 1);
INSERT INTO public.planet VALUES (3, 'p3', false, false, 100, 100, 100.20, 'this is p3', 2);
INSERT INTO public.planet VALUES (4, 'p4', false, false, 100, 100, 100.20, 'this is p4', 2);
INSERT INTO public.planet VALUES (5, 'p5', false, false, 100, 100, 100.20, 'this is p5', 3);
INSERT INTO public.planet VALUES (6, 'p6', false, false, 100, 100, 100.20, 'this is p6', 3);
INSERT INTO public.planet VALUES (7, 'p7', false, false, 100, 100, 100.20, 'this is p7', 4);
INSERT INTO public.planet VALUES (8, 'p8', false, false, 100, 100, 100.20, 'this is p8', 4);
INSERT INTO public.planet VALUES (9, 'p9', false, false, 100, 100, 100.20, 'this is p9', 5);
INSERT INTO public.planet VALUES (10, 'p10', false, false, 100, 100, 100.20, 'this is p10', 5);
INSERT INTO public.planet VALUES (11, 'p11', false, false, 100, 100, 100.20, 'this is p11', 6);
INSERT INTO public.planet VALUES (12, 'p12', false, false, 100, 100, 100.20, 'this is p12', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', false, false, 100, 100, 100.20, 'this is s1', 1);
INSERT INTO public.star VALUES (2, 's2', false, false, 100, 100, 100.20, 'this is s2', 2);
INSERT INTO public.star VALUES (3, 's3', false, false, 100, 100, 100.20, 'this is s3', 3);
INSERT INTO public.star VALUES (4, 's4', false, false, 100, 100, 100.20, 'this is s4', 4);
INSERT INTO public.star VALUES (5, 's5', false, false, 100, 100, 100.20, 'this is s5', 5);
INSERT INTO public.star VALUES (6, 's6', false, false, 100, 100, 100.20, 'this is s6', 6);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxynameuniqueconstraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxynameuniqueconstraint UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moonnameuniqueconstraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moonnameuniqueconstraint UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planetnameuniqueconstraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planetnameuniqueconstraint UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star starnameuniqueconstraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT starnameuniqueconstraint UNIQUE (name);


--
-- Name: blackhole unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

