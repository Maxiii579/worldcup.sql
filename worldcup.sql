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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (69, 2018, 'Final', 2912, 2913, 4, 2);
INSERT INTO public.games VALUES (70, 2018, 'Third Place', 2914, 2915, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Semi-Final', 2913, 2915, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Semi-Final', 2912, 2914, 1, 0);
INSERT INTO public.games VALUES (73, 2018, 'Quarter-Final', 2913, 2916, 3, 2);
INSERT INTO public.games VALUES (74, 2018, 'Quarter-Final', 2915, 2917, 2, 0);
INSERT INTO public.games VALUES (75, 2018, 'Quarter-Final', 2914, 2918, 2, 1);
INSERT INTO public.games VALUES (76, 2018, 'Quarter-Final', 2912, 2919, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 2915, 2920, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 2917, 2921, 1, 0);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 2914, 2922, 3, 2);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 2918, 2923, 2, 0);
INSERT INTO public.games VALUES (81, 2018, 'Eighth-Final', 2913, 2924, 2, 1);
INSERT INTO public.games VALUES (82, 2018, 'Eighth-Final', 2916, 2925, 2, 1);
INSERT INTO public.games VALUES (83, 2018, 'Eighth-Final', 2919, 2926, 2, 1);
INSERT INTO public.games VALUES (84, 2018, 'Eighth-Final', 2912, 2927, 4, 3);
INSERT INTO public.games VALUES (85, 2014, 'Final', 2928, 2927, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Third Place', 2929, 2918, 3, 0);
INSERT INTO public.games VALUES (87, 2014, 'Semi-Final', 2927, 2929, 1, 0);
INSERT INTO public.games VALUES (88, 2014, 'Semi-Final', 2928, 2918, 7, 1);
INSERT INTO public.games VALUES (89, 2014, 'Quarter-Final', 2929, 2930, 1, 0);
INSERT INTO public.games VALUES (90, 2014, 'Quarter-Final', 2927, 2914, 1, 0);
INSERT INTO public.games VALUES (91, 2014, 'Quarter-Final', 2918, 2920, 2, 1);
INSERT INTO public.games VALUES (92, 2014, 'Quarter-Final', 2928, 2912, 1, 0);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 2918, 2931, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 2920, 2919, 2, 0);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 2912, 2932, 2, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 2928, 2933, 2, 1);
INSERT INTO public.games VALUES (97, 2014, 'Eighth-Final', 2929, 2923, 2, 1);
INSERT INTO public.games VALUES (98, 2014, 'Eighth-Final', 2930, 2934, 2, 1);
INSERT INTO public.games VALUES (99, 2014, 'Eighth-Final', 2927, 2921, 1, 0);
INSERT INTO public.games VALUES (100, 2014, 'Eighth-Final', 2914, 2935, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (2912, 'France');
INSERT INTO public.teams VALUES (2913, 'Croatia');
INSERT INTO public.teams VALUES (2914, 'Belgium');
INSERT INTO public.teams VALUES (2915, 'England');
INSERT INTO public.teams VALUES (2916, 'Russia');
INSERT INTO public.teams VALUES (2917, 'Sweden');
INSERT INTO public.teams VALUES (2918, 'Brazil');
INSERT INTO public.teams VALUES (2919, 'Uruguay');
INSERT INTO public.teams VALUES (2920, 'Colombia');
INSERT INTO public.teams VALUES (2921, 'Switzerland');
INSERT INTO public.teams VALUES (2922, 'Japan');
INSERT INTO public.teams VALUES (2923, 'Mexico');
INSERT INTO public.teams VALUES (2924, 'Denmark');
INSERT INTO public.teams VALUES (2925, 'Spain');
INSERT INTO public.teams VALUES (2926, 'Portugal');
INSERT INTO public.teams VALUES (2927, 'Argentina');
INSERT INTO public.teams VALUES (2928, 'Germany');
INSERT INTO public.teams VALUES (2929, 'Netherlands');
INSERT INTO public.teams VALUES (2930, 'Costa Rica');
INSERT INTO public.teams VALUES (2931, 'Chile');
INSERT INTO public.teams VALUES (2932, 'Nigeria');
INSERT INTO public.teams VALUES (2933, 'Algeria');
INSERT INTO public.teams VALUES (2934, 'Greece');
INSERT INTO public.teams VALUES (2935, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 100, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 2935, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

