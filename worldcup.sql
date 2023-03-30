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
    round character varying(255) NOT NULL,
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
    name character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (153, 2018, 'Final', 605, 606, 4, 2);
INSERT INTO public.games VALUES (154, 2018, 'Third Place', 607, 608, 2, 0);
INSERT INTO public.games VALUES (155, 2018, 'Semi-Final', 606, 608, 2, 1);
INSERT INTO public.games VALUES (156, 2018, 'Semi-Final', 605, 607, 1, 0);
INSERT INTO public.games VALUES (157, 2018, 'Quarter-Final', 606, 609, 3, 2);
INSERT INTO public.games VALUES (158, 2018, 'Quarter-Final', 608, 610, 2, 0);
INSERT INTO public.games VALUES (159, 2018, 'Quarter-Final', 607, 611, 2, 1);
INSERT INTO public.games VALUES (160, 2018, 'Quarter-Final', 605, 612, 2, 0);
INSERT INTO public.games VALUES (161, 2018, 'Eighth-Final', 608, 613, 2, 1);
INSERT INTO public.games VALUES (162, 2018, 'Eighth-Final', 610, 614, 1, 0);
INSERT INTO public.games VALUES (163, 2018, 'Eighth-Final', 607, 615, 3, 2);
INSERT INTO public.games VALUES (164, 2018, 'Eighth-Final', 611, 616, 2, 0);
INSERT INTO public.games VALUES (165, 2018, 'Eighth-Final', 606, 617, 2, 1);
INSERT INTO public.games VALUES (166, 2018, 'Eighth-Final', 609, 618, 2, 1);
INSERT INTO public.games VALUES (167, 2018, 'Eighth-Final', 612, 619, 2, 1);
INSERT INTO public.games VALUES (168, 2018, 'Eighth-Final', 605, 620, 4, 3);
INSERT INTO public.games VALUES (169, 2014, 'Final', 621, 620, 1, 0);
INSERT INTO public.games VALUES (170, 2014, 'Third Place', 622, 611, 3, 0);
INSERT INTO public.games VALUES (171, 2014, 'Semi-Final', 620, 622, 1, 0);
INSERT INTO public.games VALUES (172, 2014, 'Semi-Final', 621, 611, 7, 1);
INSERT INTO public.games VALUES (173, 2014, 'Quarter-Final', 622, 623, 1, 0);
INSERT INTO public.games VALUES (174, 2014, 'Quarter-Final', 620, 607, 1, 0);
INSERT INTO public.games VALUES (175, 2014, 'Quarter-Final', 611, 613, 2, 1);
INSERT INTO public.games VALUES (176, 2014, 'Quarter-Final', 621, 605, 1, 0);
INSERT INTO public.games VALUES (177, 2014, 'Eighth-Final', 611, 624, 2, 1);
INSERT INTO public.games VALUES (178, 2014, 'Eighth-Final', 613, 612, 2, 0);
INSERT INTO public.games VALUES (179, 2014, 'Eighth-Final', 605, 625, 2, 0);
INSERT INTO public.games VALUES (180, 2014, 'Eighth-Final', 621, 626, 2, 1);
INSERT INTO public.games VALUES (181, 2014, 'Eighth-Final', 622, 616, 2, 1);
INSERT INTO public.games VALUES (182, 2014, 'Eighth-Final', 623, 627, 2, 1);
INSERT INTO public.games VALUES (183, 2014, 'Eighth-Final', 620, 614, 1, 0);
INSERT INTO public.games VALUES (184, 2014, 'Eighth-Final', 607, 628, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (605, 'France');
INSERT INTO public.teams VALUES (606, 'Croatia');
INSERT INTO public.teams VALUES (607, 'Belgium');
INSERT INTO public.teams VALUES (608, 'England');
INSERT INTO public.teams VALUES (609, 'Russia');
INSERT INTO public.teams VALUES (610, 'Sweden');
INSERT INTO public.teams VALUES (611, 'Brazil');
INSERT INTO public.teams VALUES (612, 'Uruguay');
INSERT INTO public.teams VALUES (613, 'Colombia');
INSERT INTO public.teams VALUES (614, 'Switzerland');
INSERT INTO public.teams VALUES (615, 'Japan');
INSERT INTO public.teams VALUES (616, 'Mexico');
INSERT INTO public.teams VALUES (617, 'Denmark');
INSERT INTO public.teams VALUES (618, 'Spain');
INSERT INTO public.teams VALUES (619, 'Portugal');
INSERT INTO public.teams VALUES (620, 'Argentina');
INSERT INTO public.teams VALUES (621, 'Germany');
INSERT INTO public.teams VALUES (622, 'Netherlands');
INSERT INTO public.teams VALUES (623, 'Costa Rica');
INSERT INTO public.teams VALUES (624, 'Chile');
INSERT INTO public.teams VALUES (625, 'Nigeria');
INSERT INTO public.teams VALUES (626, 'Algeria');
INSERT INTO public.teams VALUES (627, 'Greece');
INSERT INTO public.teams VALUES (628, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 184, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 628, true);


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

