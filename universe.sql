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
-- Name: extinction_capable_asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extinction_capable_asteroids (
    extinction_capable_asteroids_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    calculated_year_to_approach_close integer
);


ALTER TABLE public.extinction_capable_asteroids OWNER TO freecodecamp;

--
-- Name: extinction_capable_asteroids_ast_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extinction_capable_asteroids_ast_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extinction_capable_asteroids_ast_id_seq OWNER TO freecodecamp;

--
-- Name: extinction_capable_asteroids_ast_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extinction_capable_asteroids_ast_id_seq OWNED BY public.extinction_capable_asteroids.extinction_capable_asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_million_light_years numeric(1000,2),
    visited_by_us boolean
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
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer,
    landable boolean,
    habitable boolean
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

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    has_moon boolean,
    star_id integer,
    distance_from_its_sun_in_million_km numeric(5,1)
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
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer,
    spherical boolean,
    age_of_star_in_billion_of_years numeric(5,1)
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
-- Name: extinction_capable_asteroids extinction_capable_asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extinction_capable_asteroids ALTER COLUMN extinction_capable_asteroids_id SET DEFAULT nextval('public.extinction_capable_asteroids_ast_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: extinction_capable_asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extinction_capable_asteroids VALUES (2, 'Chicxulub Impactor', 'This asteroid is believed to have struck the Earth approximately 66 million years ago, leading to the mass extinction event that marked the end of the Cretaceous period and the demise of the dinosaurs. The impact site is now known as the Chicxulub crater in the Yucatán Peninsula, Mexico', NULL);
INSERT INTO public.extinction_capable_asteroids VALUES (4, 'Apophis (99942 Apophis)', 'Apophis gained attention due to initial calculations indicating a small probability of impacting Earth in 2029 or 2036. Further observations refined the orbit and indicated that Apophis will pass harmlessly during those close approaches. However, it remains a significant asteroid to monitor due to its size (about 370 meters or 1,214 feet) and potential for future close approaches', 2068);
INSERT INTO public.extinction_capable_asteroids VALUES (3, 'Asteroid 1950 DA', 'Asteroid 1950 DA is estimated to be about 1.1 kilometers (0.7 miles) in diameter and is classified as a potentially hazardous asteroid (PHA) due to its close approaches to Earth. It has a potential impact probability in the distant future, although current calculations suggest that its impact is unlikely within the next centuries', 2880);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Milky way', 13, 0.00, true);
INSERT INTO public.galaxy VALUES (4, 'Triangulum Galaxy', 8, 3.00, false);
INSERT INTO public.galaxy VALUES (5, 'Messier 81', 6, 11.80, false);
INSERT INTO public.galaxy VALUES (6, 'Messier 82', 5, 12.00, false);
INSERT INTO public.galaxy VALUES (7, 'Centaurus A', 10, 11.00, false);
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10, 2.53, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The moon (Luna)', 1, true, true);
INSERT INTO public.moon VALUES (21, 'Io', 5, false, false);
INSERT INTO public.moon VALUES (22, 'Europa', 5, false, false);
INSERT INTO public.moon VALUES (23, 'Ganymede', 5, false, false);
INSERT INTO public.moon VALUES (24, 'Callisto', 5, false, false);
INSERT INTO public.moon VALUES (25, 'Titan', 6, false, false);
INSERT INTO public.moon VALUES (26, 'Enceladus', 6, false, false);
INSERT INTO public.moon VALUES (27, 'Mimas', 6, false, false);
INSERT INTO public.moon VALUES (28, 'Triton', 8, false, false);
INSERT INTO public.moon VALUES (29, 'Charon', 14, false, false);
INSERT INTO public.moon VALUES (30, 'Phobos', 4, false, false);
INSERT INTO public.moon VALUES (31, 'Deimos', 4, false, false);
INSERT INTO public.moon VALUES (32, 'Dione', 6, false, false);
INSERT INTO public.moon VALUES (33, 'Rhea', 6, false, false);
INSERT INTO public.moon VALUES (34, 'Iapetus', 6, false, false);
INSERT INTO public.moon VALUES (35, 'Hyperion', 6, false, false);
INSERT INTO public.moon VALUES (36, 'Miranda', 7, false, false);
INSERT INTO public.moon VALUES (37, 'Ariel', 7, false, false);
INSERT INTO public.moon VALUES (38, 'Umbriel', 7, false, false);
INSERT INTO public.moon VALUES (39, 'Tethys', 6, false, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', 'The smallest planet in the Solar System and closest to the Sun', false, false, 3, 57.9);
INSERT INTO public.planet VALUES (1, 'Earth', 'Home', true, true, 3, 149.6);
INSERT INTO public.planet VALUES (3, 'Venus', 'Known for its thick, toxic atmosphere and surface temperatures hot enough to melt lead', false, false, 3, 108.2);
INSERT INTO public.planet VALUES (4, 'Mars', 'Known as the Red Planet due to its iron oxide surface', false, true, 3, 227.9);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in the Solar System, known for its Great Red Spot', false, true, 3, 778.5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Famous for its stunning ring system', false, true, 3, 1427.0);
INSERT INTO public.planet VALUES (7, 'Uranus', 'An ice giant with a unique tilt, rotating on its side', false, true, 3, 2871.0);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Known for its deep blue color and strong winds', false, true, 3, 4497.0);
INSERT INTO public.planet VALUES (9, 'Barnards Star b', 'A super-Earth exoplanet orbiting Barnards Star, one of the closest stars to the Sun', false, false, 3, 56.0);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 'The closest known exoplanet to Earth, in the habitable zone of Proxima Centauri', false, false, 3, 7.5);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 'An exoplanet in the habitable zone, potentially capable of supporting life', false, false, 3, 20.3);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 'A well-studied exoplanet known as Osiris, with a rapidly evaporating atmosphere', false, false, 3, 7.0);
INSERT INTO public.planet VALUES (13, 'LHS 1140 b', 'A rocky exoplanet in the habitable zone of the red dwarf star LHS 1140', false, false, 3, 14.9);
INSERT INTO public.planet VALUES (14, 'Pluto', 'A dwarf planet in the outer regions of the Solar System, known for its eccentric orbit', false, true, 1, 5906.0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sirius (Alpha Canis Majoris)', 3, true, 0.2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 3, true, 4.9);
INSERT INTO public.star VALUES (4, 'Vega (Alpha Lyrae)', 3, false, 0.5);
INSERT INTO public.star VALUES (5, 'Arcturus (Alpha Boötis)', 3, true, 7.1);
INSERT INTO public.star VALUES (6, 'Mayall II (G1)', 1, true, 10.0);
INSERT INTO public.star VALUES (1, 'The sun (Sol)', 1, true, 4.6);


--
-- Name: extinction_capable_asteroids_ast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extinction_capable_asteroids_ast_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 39, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: extinction_capable_asteroids extinction_capable_asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extinction_capable_asteroids
    ADD CONSTRAINT extinction_capable_asteroids_pkey PRIMARY KEY (extinction_capable_asteroids_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


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
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


--
-- Name: extinction_capable_asteroids unique_asteroid_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extinction_capable_asteroids
    ADD CONSTRAINT unique_asteroid_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

