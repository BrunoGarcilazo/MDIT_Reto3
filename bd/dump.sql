--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 17.0

-- Started on 2024-12-02 19:18:49

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16485)
-- Name: n_feedback_category; Type: TABLE; Schema: public; Owner: gpt
--

CREATE TABLE public.n_feedback_category (
    id integer NOT NULL,
    category text NOT NULL,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.n_feedback_category OWNER TO gpt;

--
-- TOC entry 219 (class 1259 OID 16484)
-- Name: n_feedback_category_id_seq; Type: SEQUENCE; Schema: public; Owner: gpt
--

CREATE SEQUENCE public.n_feedback_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.n_feedback_category_id_seq OWNER TO gpt;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 219
-- Name: n_feedback_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gpt
--

ALTER SEQUENCE public.n_feedback_category_id_seq OWNED BY public.n_feedback_category.id;


--
-- TOC entry 218 (class 1259 OID 16475)
-- Name: p_feedback_category; Type: TABLE; Schema: public; Owner: gpt
--

CREATE TABLE public.p_feedback_category (
    id integer NOT NULL,
    category text NOT NULL,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.p_feedback_category OWNER TO gpt;

--
-- TOC entry 217 (class 1259 OID 16474)
-- Name: p_feedback_category_id_seq; Type: SEQUENCE; Schema: public; Owner: gpt
--

CREATE SEQUENCE public.p_feedback_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.p_feedback_category_id_seq OWNER TO gpt;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 217
-- Name: p_feedback_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gpt
--

ALTER SEQUENCE public.p_feedback_category_id_seq OWNED BY public.p_feedback_category.id;


--
-- TOC entry 216 (class 1259 OID 16401)
-- Name: valuations; Type: TABLE; Schema: public; Owner: gpt
--

CREATE TABLE public.valuations (
    id integer NOT NULL,
    valuation integer,
    positive text,
    negative text,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT valuations_valuation_check CHECK (((valuation >= 1) AND (valuation <= 4)))
);


ALTER TABLE public.valuations OWNER TO gpt;

--
-- TOC entry 215 (class 1259 OID 16400)
-- Name: valuations_id_seq; Type: SEQUENCE; Schema: public; Owner: gpt
--

CREATE SEQUENCE public.valuations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.valuations_id_seq OWNER TO gpt;

--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 215
-- Name: valuations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gpt
--

ALTER SEQUENCE public.valuations_id_seq OWNED BY public.valuations.id;


--
-- TOC entry 3217 (class 2604 OID 16488)
-- Name: n_feedback_category id; Type: DEFAULT; Schema: public; Owner: gpt
--

ALTER TABLE ONLY public.n_feedback_category ALTER COLUMN id SET DEFAULT nextval('public.n_feedback_category_id_seq'::regclass);


--
-- TOC entry 3215 (class 2604 OID 16478)
-- Name: p_feedback_category id; Type: DEFAULT; Schema: public; Owner: gpt
--

ALTER TABLE ONLY public.p_feedback_category ALTER COLUMN id SET DEFAULT nextval('public.p_feedback_category_id_seq'::regclass);


--
-- TOC entry 3213 (class 2604 OID 16404)
-- Name: valuations id; Type: DEFAULT; Schema: public; Owner: gpt
--

ALTER TABLE ONLY public.valuations ALTER COLUMN id SET DEFAULT nextval('public.valuations_id_seq'::regclass);


--
-- TOC entry 3374 (class 0 OID 16485)
-- Dependencies: 220
-- Data for Name: n_feedback_category; Type: TABLE DATA; Schema: public; Owner: gpt
--

COPY public.n_feedback_category (id, category, "timestamp") FROM stdin;
3	Conectividad	2024-11-25 12:08:56.37638
4	Conectividad	2024-11-25 12:30:02.855771
5	Interfaz y usabilidad	2024-11-25 12:30:19.650064
6	Rendimiento técnico	2024-11-25 12:30:19.650064
7	Duracion de bateria	2024-11-25 12:30:19.650064
8	Duracion de bateria	2024-11-25 12:30:30.455188
9	Rendimiento técnico	2024-11-25 12:30:30.455188
10	Audio y sonido	2024-11-25 12:30:42.213168
11	Rendimiento técnico	2024-11-25 12:30:42.213168
12	Duracion de bateria	2024-11-25 12:30:51.820418
13	Diseño y ergonomia	2024-11-25 12:31:05.993746
14	Conectividad	2024-11-25 12:31:05.993746
15	Diseño y ergonomia	2024-11-25 12:31:17.769591
16	Interfaz y usabilidad	2024-11-25 12:31:17.769591
17	Conectividad	2024-11-25 12:31:28.896316
18	Interfaz y usabilidad	2024-11-25 12:31:28.896316
19	Rendimiento técnico	2024-11-25 12:31:28.896316
20	Audio y sonido	2024-11-25 12:31:40.21892
21	Rendimiento técnico	2024-11-25 12:31:40.21892
22	Conectividad	2024-11-25 12:31:40.21892
23	Audio y sonido	2024-11-25 12:31:50.083164
24	Diseño y ergonomia	2024-11-25 12:31:50.083164
25	Duracion de bateria	2024-11-25 12:31:50.083164
26	Interfaz y usabilidad	2024-11-25 12:32:01.740903
27	Interfaz y usabilidad	2024-11-25 12:32:01.754221
28	Conectividad	2024-11-25 12:33:10.519897
29	Interfaz y usabilidad	2024-11-25 12:33:10.519897
30	Diseño y ergonomia	2024-11-25 12:33:10.519897
31	Diseño y ergonomia	2024-11-25 12:33:24.281572
32	Diseño y ergonomia	2024-11-25 12:40:31.452211
33	Conectividad	2024-11-25 12:40:31.452211
34	Audio y sonido	2024-11-25 12:40:31.452211
35	Duracion de bateria	2024-11-25 12:40:43.345206
36	Diseño y ergonomia	2024-11-25 12:40:43.345206
37	Interfaz y usabilidad	2024-11-25 12:41:11.509831
38	Conectividad	2024-11-25 12:41:27.57012
39	Duracion de bateria	2024-11-25 12:41:27.57012
40	Audio y sonido	2024-11-25 12:41:43.364274
41	Interfaz y usabilidad	2024-11-25 12:41:55.134781
42	Duracion de bateria	2024-11-25 12:42:08.823619
43	Duracion de bateria	2024-11-25 12:42:21.678693
44	Rendimiento técnico	2024-11-25 12:42:21.678693
45	Interfaz y usabilidad	2024-11-25 12:42:21.678693
46	Interfaz y usabilidad	2024-11-25 12:42:33.2635
47	Duracion de bateria	2024-11-25 12:42:48.551045
48	Rendimiento técnico	2024-11-25 12:42:48.551045
49	Diseño y ergonomia	2024-11-25 12:43:02.434416
50	Conectividad	2024-11-25 12:43:02.434416
51	Interfaz y usabilidad	2024-11-25 12:43:02.434416
52	Audio y sonido	2024-11-25 12:43:14.69567
53	Diseño y ergonomia	2024-11-25 12:43:14.69567
54	Interfaz y usabilidad	2024-11-25 12:43:30.949589
55	Rendimiento técnico	2024-11-25 12:43:30.949589
56	Conectividad	2024-11-25 12:43:30.949589
57	Audio y sonido	2024-11-25 12:44:02.52976
58	Diseño y ergonomia	2024-11-25 12:44:02.52976
59	Conectividad	2024-11-25 12:44:02.52976
60	Duracion de bateria	2024-11-25 12:44:06.067167
61	Audio y sonido	2024-11-25 12:44:06.067167
62	Rendimiento técnico	2024-11-25 12:45:01.068052
63	Duracion de bateria	2024-11-25 12:45:01.068052
64	Duracion de bateria	2024-11-25 12:45:08.209013
65	Interfaz y usabilidad	2024-11-25 12:45:08.209013
66	Conectividad	2024-11-25 12:45:13.300649
67	Rendimiento técnico	2024-11-25 12:45:13.300649
68	Conectividad	2024-11-25 12:45:18.861342
69	Rendimiento técnico	2024-11-25 12:45:18.861342
70	Diseño y ergonomia	2024-11-25 12:45:18.861342
131	Conectividad	2024-11-07 12:54:20.977
130	Conectividad	2024-11-07 12:54:17.164
129	Diseño y ergonomia	2024-11-06 12:54:09.708
127	Conectividad	2024-11-06 12:54:04.971
128	Duracion de bateria	2024-11-05 12:54:04.971
125	Duracion de bateria	2024-11-05 12:54:00.81
124	Duracion de bateria	2024-11-04 12:53:56.952
121	Rendimiento técnico	2024-11-03 12:53:53.064
122	Duracion de bateria	2024-11-03 12:53:53.064
123	Conectividad	2024-11-02 12:53:53.064
120	Rendimiento técnico	2024-11-02 12:53:41.16
119	Interfaz y usabilidad	2024-11-01 12:53:36.782
118	Duracion de bateria	2024-11-01 12:53:32.678
117	Diseño y ergonomia	2024-10-31 12:53:29.079
116	Rendimiento técnico	2024-10-30 12:53:25.48
115	Interfaz y usabilidad	2024-10-30 12:53:21.003
114	Otros	2024-10-29 12:53:17.203
110	Rendimiento técnico	2024-10-29 12:53:12.242
111	Duracion de bateria	2024-10-28 12:53:12.242
112	Conectividad	2024-10-27 12:53:12.242
113	Audio y sonido	2024-10-26 12:53:12.242
109	Duracion de bateria	2024-10-25 12:53:07.957
106	Conectividad	2024-10-25 12:53:04.843
107	Duracion de bateria	2024-10-24 12:53:04.843
103	Audio y sonido	2024-10-23 12:53:00.486
104	Diseño y ergonomia	2024-10-22 12:53:00.486
105	Rendimiento técnico	2024-10-20 12:53:00.486
102	Audio y sonido	2024-10-19 12:52:55.837
101	Audio y sonido	2024-10-19 12:52:50.98
98	Duracion de bateria	2024-10-18 12:52:47.224
99	Conectividad	2024-10-18 12:52:47.224
100	Audio y sonido	2024-10-17 12:52:47.224
97	Audio y sonido	2024-10-16 12:52:22.602
94	Duracion de bateria	2024-10-16 12:50:59.227
95	Conectividad	2024-10-15 12:50:59.227
96	Audio y sonido	2024-10-15 12:50:59.227
92	Interfaz y usabilidad	2024-10-14 12:50:16.568
91	Conectividad	2024-10-13 12:50:12.865
89	Conectividad	2024-10-13 12:50:08.818
90	Otros	2024-10-13 12:50:08.818
88	Rendimiento técnico	2024-10-12 12:49:58.018
86	Rendimiento técnico	2024-10-12 12:46:05.497
87	Interfaz y usabilidad	2024-10-10 12:46:05.497
84	Rendimiento técnico	2024-10-09 12:45:59.966
85	Conectividad	2024-10-09 12:45:59.966
81	Conectividad	2024-10-08 12:45:56.008
82	Duracion de bateria	2024-10-08 12:45:56.008
83	Interfaz y usabilidad	2024-10-07 12:45:56.008
80	Conectividad	2024-10-07 12:45:51.269
78	Conectividad	2024-10-06 12:45:47.822
79	Rendimiento técnico	2024-10-06 12:45:47.822
76	Rendimiento técnico	2024-10-05 12:45:40.716
77	Conectividad	2024-10-04 12:45:40.716
75	Duracion de bateria	2024-10-03 12:45:36.23
73	Duracion de bateria	2024-10-02 12:45:28.355
71	Rendimiento técnico	2024-10-02 12:45:24.501
72	Audio y sonido	2024-10-01 12:45:24.501
165	Diseño y ergonomia	2024-11-25 17:08:26.129184
168	Rendimiento técnico	2024-11-25 17:13:37.916971
169	Audio y sonido	2024-11-25 17:13:37.916971
170	Conectividad	2024-11-24 17:13:37.916
167	Rendimiento técnico	2024-11-26 17:13:37.916
166	Audio y sonido	2024-11-24 17:08:26.129
163	Rendimiento técnico	2024-11-24 12:56:35.421
164	Conectividad	2024-11-23 12:56:35.421
161	Diseño y ergonomia	2024-11-23 12:56:31.041
162	Rendimiento técnico	2024-11-22 12:56:31.041
158	Duracion de bateria	2024-11-22 12:56:23.975
159	Conectividad	2024-11-21 12:56:23.975
160	Rendimiento técnico	2024-11-21 12:56:23.975
155	Audio y sonido	2024-11-20 12:56:18.976
156	Diseño y ergonomia	2024-11-20 12:56:18.976
157	Interfaz y usabilidad	2024-11-19 12:56:18.976
152	Duracion de bateria	2024-11-19 12:56:14.101
153	Audio y sonido	2024-11-18 12:56:14.101
154	Diseño y ergonomia	2024-11-18 12:56:14.101
151	Audio y sonido	2024-11-17 12:56:07.854
150	Conectividad	2024-11-17 12:56:03.325
149	Rendimiento técnico	2024-11-16 12:55:56.673
146	Rendimiento técnico	2024-11-16 12:55:51.535
147	Duracion de bateria	2024-11-15 12:55:51.535
148	Interfaz y usabilidad	2024-11-15 12:55:51.535
145	Duracion de bateria	2024-11-14 12:55:46.024
143	Duracion de bateria	2024-11-14 12:55:34.726
144	Diseño y ergonomia	2024-11-13 12:55:34.726
141	Interfaz y usabilidad	2024-11-13 12:55:30.38
142	Audio y sonido	2024-11-12 12:55:30.38
138	Audio y sonido	2024-11-12 12:55:24.687
139	Interfaz y usabilidad	2024-11-11 12:55:24.687
140	Conectividad	2024-11-11 12:55:24.687
137	Duracion de bateria	2024-11-10 12:55:20.216
136	Rendimiento técnico	2024-11-10 12:55:13.976
134	Audio y sonido	2024-11-09 12:54:32.499
135	Diseño y ergonomia	2024-11-09 12:54:32.499
133	Interfaz y usabilidad	2024-11-08 12:54:28.537
132	Rendimiento técnico	2024-11-08 12:54:24.333
126	Interfaz y usabilidad	2024-11-04 12:54:00.81
108	Diseño y ergonomia	2024-10-24 12:53:04.843
93	Interfaz y usabilidad	2024-10-14 12:50:20.942
74	Interfaz y usabilidad	2024-10-03 12:45:32.324
171	Audio y sonido	2024-11-26 15:26:05.604623
172	Resistencia y durabilidad	2024-11-26 15:26:05.604623
173	Otros	2024-11-26 19:08:50.436466
174	Conectividad	2024-11-26 19:08:50.436466
175	Resistencia y durabilidad	2024-11-26 19:08:50.436466
176	Resistencia y durabilidad	2024-11-26 19:08:50.436466
178	Duracion de bateria	2024-11-26 19:39:57.563504
179	Duración de batería	2024-11-26 19:40:42.505744
177	Duracion de bateria	2024-11-26 19:14:05.960839
180	Duracion de bateria	2024-11-26 19:46:24.781885
181	Conectividad	2024-11-26 20:33:45.994282
182	Otros	2024-11-26 20:33:45.994282
183	Resistencia y durabilidad	2024-11-26 20:33:45.994282
184	Resistencia y durabilidad	2024-11-26 20:33:45.994282
185	Rendimiento técnico	2024-11-26 20:37:24.004431
186	Audio y sonido	2024-11-26 20:37:24.004431
187	Audio y sonido	2024-11-26 20:37:24.004431
188		2024-11-26 20:40:51.58277
189		2024-11-26 20:44:36.424511
190	Conectividad	2024-11-26 20:47:48.26917
191		2024-11-26 20:52:04.324147
192		2024-11-26 20:58:20.369201
193	Resistencia y durabilidad	2024-11-26 22:25:18.856361
194	Rendimiento técnico	2024-11-26 22:29:23.941961
195	Otros	2024-11-26 22:29:23.941961
196	Resistencia y durabilidad	2024-11-26 22:29:23.941961
197	Resistencia y durabilidad	2024-11-26 22:35:32.339696
198	Rendimiento técnico	2024-11-26 22:38:43.73998
199	Conectividad	2024-11-26 22:38:43.73998
200	Otros	2024-11-26 22:38:43.73998
201	Resistencia y durabilidad	2024-11-27 00:19:30.755923
234	Otros	2024-11-27 09:24:11.08554
235	Diseño y ergonomía	2024-11-27 11:29:40.384598
236	Audio y sonido	2024-11-27 11:29:40.384598
237	Duración de batería	2024-11-27 11:29:40.384598
\.


--
-- TOC entry 3372 (class 0 OID 16475)
-- Dependencies: 218
-- Data for Name: p_feedback_category; Type: TABLE DATA; Schema: public; Owner: gpt
--

COPY public.p_feedback_category (id, category, "timestamp") FROM stdin;
3	Resistencia y durabilidad	2024-11-25 12:08:56.37638
4	Rendimiento técnico	2024-11-25 12:08:56.37638
5	Resistencia y durabilidad	2024-11-25 12:30:02.855771
6	Rendimiento técnico	2024-11-25 12:30:02.855771
7	Interfaz y usabilidad	2024-11-25 12:30:19.650064
8	Diseño y ergonomia	2024-11-25 12:30:19.650064
9	Interfaz y usabilidad	2024-11-25 12:30:30.455188
10	Interfaz y usabilidad	2024-11-25 12:30:42.213168
11	Diseño y ergonomia	2024-11-25 12:30:42.213168
12	Diseño y ergonomia	2024-11-25 12:30:51.820418
13	Diseño y ergonomia	2024-11-25 12:30:51.820418
14	Diseño y ergonomia	2024-11-25 12:31:05.993746
15	Rendimiento técnico	2024-11-25 12:31:05.993746
16	Audio y sonido	2024-11-25 12:31:05.993746
17	Diseño y ergonomia	2024-11-25 12:31:17.769591
18	Conectividad	2024-11-25 12:31:28.896316
19	Diseño y ergonomia	2024-11-25 12:31:40.21892
20	Diseño y ergonomia	2024-11-25 12:31:40.21892
21	Audio y sonido	2024-11-25 12:31:50.083164
22	Rendimiento técnico	2024-11-25 12:31:50.083164
23	Diseño y ergonomia	2024-11-25 12:31:50.083164
24	Diseño y ergonomia	2024-11-25 12:32:01.740903
25	Audio y sonido	2024-11-25 12:32:01.740903
26	Conectividad	2024-11-25 12:32:01.740903
27	Diseño y ergonomia	2024-11-25 12:32:01.754221
28	Audio y sonido	2024-11-25 12:32:01.754221
29	Conectividad	2024-11-25 12:32:01.754221
30	Diseño y ergonomia	2024-11-25 12:33:10.519897
31	Rendimiento técnico	2024-11-25 12:33:24.281572
32	Audio y sonido	2024-11-25 12:33:24.281572
33	Interfaz y usabilidad	2024-11-25 12:40:31.452211
34	Audio y sonido	2024-11-25 12:40:31.452211
35	Rendimiento técnico	2024-11-25 12:40:31.452211
36	Rendimiento técnico	2024-11-25 12:40:43.345206
37	Conectividad	2024-11-25 12:40:43.345206
38	Diseño y ergonomia	2024-11-25 12:41:11.509831
39	Interfaz y usabilidad	2024-11-25 12:41:11.509831
40	Diseño y ergonomia	2024-11-25 12:41:11.509831
41	Rendimiento técnico	2024-11-25 12:41:27.57012
42	Interfaz y usabilidad	2024-11-25 12:41:43.364274
43	Diseño y ergonomia	2024-11-25 12:41:43.364274
44	Diseño y ergonomia	2024-11-25 12:41:43.364274
45	Diseño y ergonomia	2024-11-25 12:41:55.134781
46	Diseño y ergonomia	2024-11-25 12:41:55.134781
47	Diseño y ergonomia	2024-11-25 12:42:08.823619
48	Diseño y ergonomia	2024-11-25 12:42:08.823619
49	Diseño y ergonomia	2024-11-25 12:42:08.823619
50	Diseño y ergonomia	2024-11-25 12:42:21.678693
51	Interfaz y usabilidad	2024-11-25 12:42:33.2635
52	Diseño y ergonomia	2024-11-25 12:42:33.2635
53	Interfaz y usabilidad	2024-11-25 12:42:48.551045
54	Interfaz y usabilidad	2024-11-25 12:43:02.434416
55	Rendimiento técnico	2024-11-25 12:43:02.434416
56	Conectividad	2024-11-25 12:43:02.434416
57	Conectividad	2024-11-25 12:43:14.69567
58	Audio y sonido	2024-11-25 12:43:14.69567
59	Rendimiento técnico	2024-11-25 12:43:30.949589
60	Interfaz y usabilidad	2024-11-25 12:43:30.949589
61	Diseño y ergonomia	2024-11-25 12:44:02.52976
62	Rendimiento técnico	2024-11-25 12:44:02.52976
63	Interfaz y usabilidad	2024-11-25 12:44:02.52976
64	Audio y sonido	2024-11-25 12:44:06.067167
65	Conectividad	2024-11-25 12:45:01.068052
66	Audio y sonido	2024-11-25 12:45:08.209013
67	Interfaz y usabilidad	2024-11-25 12:45:08.209013
68	Interfaz y usabilidad	2024-11-25 12:45:13.300649
69	Diseño y ergonomia	2024-11-25 12:45:18.861342
70	Diseño y ergonomia	2024-11-25 12:45:18.861342
71	Audio y sonido	2024-11-25 12:45:24.501851
72	Rendimiento técnico	2024-11-25 12:45:28.355103
73	Diseño y ergonomia	2024-11-25 12:45:28.355103
74	Interfaz y usabilidad	2024-11-25 12:45:28.355103
75	Diseño y ergonomia	2024-11-25 12:45:32.324352
76	Interfaz y usabilidad	2024-11-25 12:45:32.324352
77	Rendimiento técnico	2024-11-25 12:45:36.230938
78	Conectividad	2024-11-25 12:45:36.230938
79	Diseño y ergonomia	2024-11-25 12:45:40.716251
80	Diseño y ergonomia	2024-11-25 12:45:40.716251
81	Conectividad	2024-11-25 12:45:47.822093
109	Interfaz y usabilidad	2024-11-25 12:53:04.84303
130	Conectividad	2024-11-01 12:54:04.971
129	Audio y sonido	2024-10-31 12:54:00.81
127	Audio y sonido	2024-10-31 12:53:56.952
128	Conectividad	2024-10-30 12:53:56.952
125	Rendimiento técnico	2024-10-30 12:53:53.064
126	Diseño y ergonomia	2024-10-29 12:53:53.064
124	Conectividad	2024-10-28 12:53:41.16
123	Resistencia y durabilidad	2024-10-28 12:53:36.782
122	Interfaz y usabilidad	2024-10-27 12:53:32.678
121	Resistencia y durabilidad	2024-10-27 12:53:29.079
119	Audio y sonido	2024-10-26 12:53:25.48
120	Interfaz y usabilidad	2024-10-26 12:53:25.48
118	Diseño y ergonomia	2024-10-25 12:53:21.003
113	Otros	2024-10-25 12:53:17.203
114	Duracion de bateria	2024-10-24 12:53:17.203
115	Interfaz y usabilidad	2024-10-24 12:53:17.203
116	Resistencia y durabilidad	2024-10-24 12:53:17.203
117	Diseño y ergonomia	2024-10-23 12:53:17.203
112	Otros	2024-10-23 12:53:12.242
111	Audio y sonido	2024-10-22 12:53:07.957
108	Audio y sonido	2024-10-21 12:53:04.843
110	Diseño y ergonomia	2024-10-19 12:53:04.843
107	Diseño y ergonomia	2024-10-18 12:53:00.486
104	Interfaz y usabilidad	2024-10-17 12:52:55.837
105	Audio y sonido	2024-10-17 12:52:55.837
106	Conectividad	2024-10-16 12:52:55.837
103	Conectividad	2024-10-15 12:52:50.98
100	Diseño y ergonomia	2024-10-14 12:52:47.224
101	Audio y sonido	2024-10-13 12:52:47.224
98	Diseño y ergonomia	2024-10-12 12:52:22.602
99	Conectividad	2024-10-12 12:52:22.602
96	Diseño y ergonomia	2024-10-11 12:50:59.227
97	Audio y sonido	2024-10-10 12:50:59.227
94	Diseño y ergonomia	2024-10-10 12:50:20.942
95	Diseño y ergonomia	2024-10-09 12:50:20.942
93	Interfaz y usabilidad	2024-10-09 12:50:16.568
91	Diseño y ergonomia	2024-10-08 12:50:12.865
92	Diseño y ergonomia	2024-10-07 12:50:12.865
88	Conectividad	2024-10-06 12:49:58.018
89	Conectividad	2024-10-06 12:49:58.018
87	Rendimiento técnico	2024-10-05 12:46:05.497
84	Audio y sonido	2024-10-04 12:45:59.966
85	Conectividad	2024-10-04 12:45:59.966
86	Diseño y ergonomia	2024-10-03 12:45:59.966
83	Diseño y ergonomia	2024-10-02 12:45:56.008
82	Diseño y ergonomia	2024-10-01 12:45:51.269
177	Interfaz y usabilidad	2024-11-25 12:56:35.421568
178	Audio y sonido	2024-11-25 12:56:35.421568
179	Diseño y ergonomia	2024-11-25 12:56:35.421568
181	Rendimiento técnico	2024-11-23 17:08:26.129
182	Otros	2024-11-24 17:13:37.916
180	Otros	2024-11-26 17:08:26.129
174	Audio y sonido	2024-11-24 12:56:31.041
175	Interfaz y usabilidad	2024-11-24 12:56:31.041
176	Diseño y ergonomia	2024-11-23 12:56:31.041
173	Diseño y ergonomia	2024-11-23 12:56:23.975
170	Diseño y ergonomia	2024-11-22 12:56:18.976
171	Diseño y ergonomia	2024-11-22 12:56:18.976
172	Rendimiento técnico	2024-11-21 12:56:18.976
167	Diseño y ergonomia	2024-11-21 12:56:14.101
168	Conectividad	2024-11-20 12:56:14.101
169	Diseño y ergonomia	2024-11-20 12:56:14.101
164	Diseño y ergonomia	2024-11-19 12:56:07.854
165	Interfaz y usabilidad	2024-11-19 12:56:07.854
166	Diseño y ergonomia	2024-11-18 12:56:07.854
161	Rendimiento técnico	2024-11-18 12:56:03.325
162	Audio y sonido	2024-11-17 12:56:03.325
163	Diseño y ergonomia	2024-11-17 12:56:03.325
158	Conectividad	2024-11-16 12:55:56.673
159	Interfaz y usabilidad	2024-11-16 12:55:56.673
160	Diseño y ergonomia	2024-11-15 12:55:56.673
156	Audio y sonido	2024-11-15 12:55:51.535
157	Diseño y ergonomia	2024-11-14 12:55:51.535
154	Diseño y ergonomia	2024-11-14 12:55:46.024
155	Diseño y ergonomia	2024-11-13 12:55:46.024
151	Rendimiento técnico	2024-11-13 12:55:34.726
152	Conectividad	2024-11-12 12:55:34.726
153	Diseño y ergonomia	2024-11-12 12:55:34.726
150	Audio y sonido	2024-11-11 12:55:30.38
149	Conectividad	2024-11-10 12:55:24.687
146	Rendimiento técnico	2024-11-10 12:55:20.216
147	Diseño y ergonomia	2024-11-09 12:55:20.216
148	Diseño y ergonomia	2024-11-09 12:55:20.216
144	Conectividad	2024-11-08 12:55:13.976
145	Diseño y ergonomia	2024-11-08 12:55:13.976
143	Conectividad	2024-11-07 12:54:32.499
141	Diseño y ergonomia	2024-11-07 12:54:28.537
142	Audio y sonido	2024-11-06 12:54:28.537
140	Conectividad	2024-11-06 12:54:24.333
138	Conectividad	2024-11-05 12:54:20.977
139	Diseño y ergonomia	2024-11-05 12:54:20.977
135	Diseño y ergonomia	2024-11-04 12:54:17.164
136	Rendimiento técnico	2024-11-04 12:54:17.164
137	Conectividad	2024-11-03 12:54:17.164
132	Interfaz y usabilidad	2024-11-03 12:54:09.708
133	Audio y sonido	2024-11-02 12:54:09.708
134	Diseño y ergonomia	2024-11-02 12:54:09.708
131	Interfaz y usabilidad	2024-11-01 12:54:04.971
102	Diseño y ergonomia	2024-10-15 12:52:50.98
90	Interfaz y usabilidad	2024-10-07 12:50:08.818
183	Duracion de bateria	2024-11-26 15:26:05.604623
185	Otros	2024-11-26 19:14:05.960839
186	Audio y sonido	2024-11-26 19:14:05.960839
187	Duracion de bateria	2024-11-26 19:14:05.960839
188	Resistencia y durabilidad	2024-11-26 19:14:05.960839
189	Otros	2024-11-26 19:39:57.563504
190	Rendimiento técnico	2024-11-26 19:40:42.505744
191	Otros	2024-11-26 19:46:24.781885
192	Otros	2024-11-26 19:46:24.781885
193	Duracion de bateria	2024-11-26 19:46:24.781885
194	Audio y sonido	2024-11-26 19:46:24.781885
184	Duracion de bateria	2024-11-26 19:08:50.436466
195		2024-11-26 20:33:45.994282
196		2024-11-26 20:37:24.004431
197	Otros	2024-11-26 20:40:51.58277
198	Otros	2024-11-26 20:40:51.58277
199	Audio y sonido	2024-11-26 20:40:51.58277
200	Duracion de bateria	2024-11-26 20:40:51.58277
201	Otros	2024-11-26 20:44:36.424511
202	Otros	2024-11-26 20:44:36.424511
203	Audio y sonido	2024-11-26 20:44:36.424511
204	Resistencia y durabilidad	2024-11-26 20:44:36.424511
205	Otros	2024-11-26 20:47:48.26917
206	Duracion de bateria	2024-11-26 20:47:48.26917
207	Resistencia y durabilidad	2024-11-26 20:47:48.26917
208	Audio y sonido	2024-11-26 20:47:48.26917
209	Otros	2024-11-26 20:52:04.324147
210	Audio y sonido	2024-11-26 20:52:04.324147
211	Resistencia y durabilidad	2024-11-26 20:52:04.324147
212	Duracion de bateria	2024-11-26 20:52:04.324147
213	Otros	2024-11-26 20:58:20.369201
214	Otros	2024-11-26 20:58:20.369201
215	Conectividad	2024-11-26 20:58:20.369201
216	Resistencia y durabilidad	2024-11-26 20:58:20.369201
217	Otros	2024-11-26 22:25:18.856361
218	Otros	2024-11-26 22:25:18.856361
219	Conectividad	2024-11-26 22:25:18.856361
220	Duracion de bateria	2024-11-26 22:25:18.856361
221	Audio y sonido	2024-11-26 22:29:23.941961
222	Otros	2024-11-26 22:35:32.339696
223	Duracion de bateria	2024-11-26 22:35:32.339696
224	Resistencia y durabilidad	2024-11-26 22:35:32.339696
225	Conectividad	2024-11-26 22:35:32.339696
226	Otros	2024-11-26 22:38:43.73998
227	Otros	2024-11-27 00:19:30.755923
228	Rendimiento técnico	2024-11-27 00:19:30.755923
229	Conectividad	2024-11-27 00:19:30.755923
260	Interfaz y usabilidad	2024-11-27 09:24:11.08554
261	Duración de batería	2024-11-27 09:24:11.08554
262	Interfaz y usabilidad	2024-11-27 11:29:40.384598
\.


--
-- TOC entry 3370 (class 0 OID 16401)
-- Dependencies: 216
-- Data for Name: valuations; Type: TABLE DATA; Schema: public; Owner: gpt
--

COPY public.valuations (id, valuation, positive, negative, "timestamp") FROM stdin;
336	4	el dispositivo es perfecto | la batería dura mucho | los botones son fáciles de usar | el puerto de carga está bien protegido en caso de errores humanos | tiene un diseño amigable		2024-11-09 12:53:17.203
335	2	la calidad de las fotos fue muy buena	no funcionó | la batería duró media hora | las llamadas fueron intermitentes | el sonido fue muy bajo	2024-11-09 12:53:12.242
334	3	audio claro	poca duración de batería	2024-11-08 12:53:07.957
333	4	audio claro | claro en exteriores | fácil de manejar	problemas de conectividad | poca duración de batería | demasiado grande	2024-11-08 12:53:04.843
332	3	buen diseño	audio bajo | difícil de usar con guantes | interrupciones en el uso	2024-11-07 12:53:00.486
331	4	fácil de manejar | audio claro | buen alcance de señal	audio bajo	2024-11-06 12:52:55.837
330	4	diseño atractivo | buen diseño | buen alcance de señal	audio bajo	2024-11-06 12:52:50.98
329	4	cómodo de llevar | claro en exteriores	poca duración de batería | problemas de conectividad | audio bajo	2024-11-05 12:52:47.224
328	4	diseño atractivo | buen diseño | buen alcance de señal	audio bajo	2024-11-04 12:52:22.602
327	4	cómodo de llevar | claro en exteriores	poca duración de batería | problemas de conectividad | audio bajo	2024-11-04 12:50:59.227
326	3	diseño compacto | cabe en cualquier bolsillo	pantalla táctil no responde bien con manos sucias	2024-11-03 12:50:20.942
325	3	notificaciones por vibración útiles	interfaz de usuario lenta al cambiar de aplicación	2024-11-03 12:50:16.568
324	3	dispositivo más ligero | menos molesto que el anterior	problemas para sincronizar con otros equipos en la planta	2024-11-02 12:50:12.865
323	2	sistema de mensajes intuitivo	conexión se cae con frecuencia en áreas críticas | resulta frustrante	2024-11-02 12:50:08.818
322	3	alcance de señal impresionante | mejor que antes	dispositivo se calienta tras uso prolongado	2024-11-01 12:49:58.018
321	3	claro en exteriores	interrupciones en el uso | difícil de usar con guantes	2024-10-31 12:46:05.497
320	3	audio claro | buen alcance de señal | buen diseño	interrupciones en el uso | problemas de conectividad	2024-10-31 12:45:59.966
319	2	cómodo de llevar	problemas de conectividad | poca duración de batería | difícil de usar con guantes	2024-10-30 12:45:56.008
318	3	buen diseño	problemas de conectividad	2024-10-30 12:45:51.269
317	3	buen alcance de señal	problemas de conectividad | interrupciones en el uso	2024-10-29 12:45:47.822
316	3	cómodo de llevar | buen diseño	interrupciones en el uso | problemas de conectividad	2024-10-29 12:45:40.716
315	3	claro en exteriores | buen alcance de señal	poca duración de batería	2024-10-28 12:45:36.23
314	3	diseño atractivo | fácil de manejar	difícil de usar con guantes	2024-10-27 12:45:32.324
313	3	claro en exteriores | diseño atractivo | fácil de manejar	poca duración de batería	2024-10-27 12:45:28.355
312	3	audio claro	interrupciones en el uso | audio bajo	2024-10-26 12:45:24.501
311	3	diseño atractivo | cómodo de llevar	problemas de conectividad | interrupciones en el uso | demasiado grande	2024-10-26 12:45:18.861
310	2	fácil de manejar	problemas de conectividad | interrupciones en el uso	2024-10-25 12:45:13.3
309	3	audio claro | fácil de manejar	poca duración de batería | difícil de usar con guantes	2024-10-25 12:45:08.209
308	3	buen alcance de señal	interrupciones en el uso | poca duración de batería	2024-10-25 12:45:01.068
307	2	audio claro	poca duración de batería | audio bajo	2024-10-24 12:44:06.067
305	2	claro en exteriores | fácil de manejar	difícil de usar con guantes | interrupciones en el uso | problemas de conectividad	2024-10-23 12:43:30.949
304	3	buen alcance de señal | audio claro	audio bajo | demasiado grande	2024-10-23 12:43:14.695
303	2	fácil de manejar | claro en exteriores | buen alcance de señal	demasiado grande | problemas de conectividad | difícil de usar con guantes	2024-10-23 12:43:02.434
302	2	fácil de manejar	poca duración de batería | interrupciones en el uso	2024-10-22 12:42:48.551
301	3	fácil de manejar | buen diseño	difícil de usar con guantes	2024-10-22 12:42:33.263
300	2	cómodo de llevar	poca duración de batería | interrupciones en el uso | difícil de usar con guantes	2024-10-21 12:42:21.678
299	3	buen diseño | diseño atractivo | cómodo de llevar	poca duración de batería	2024-10-21 12:42:08.823
298	3	diseño atractivo | cómodo de llevar	difícil de usar con guantes	2024-10-20 12:41:55.134
297	3	fácil de manejar | cómodo de llevar | buen diseño	audio bajo	2024-11-20 12:41:43.364
296	2	claro en exteriores	problemas de conectividad | poca duración de batería	2024-10-19 12:41:27.57
295	3	diseño atractivo | fácil de manejar | buen diseño	difícil de usar con guantes	2024-10-19 12:41:11.509
294	2	claro en exteriores | buen alcance de señal	poca duración de batería | demasiado grande	2024-10-18 12:40:43.345
293	2	fácil de manejar | audio claro | claro en exteriores	demasiado grande | problemas de conectividad | audio bajo	2024-10-18 12:40:31.452
292	3	claro en exteriores | audio claro	demasiado grande	2024-10-17 12:33:24.281
289	1	diseño atractivo | audio claro | buen alcance de señal	difícil de usar con guantes	2024-10-16 12:32:01.74
290	3	diseño atractivo | audio claro | buen alcance de señal	difícil de usar con guantes	2024-10-16 12:32:01.754
283	1	cómodo de llevar | buen diseño	poca duración de batería	2024-10-13 12:30:51.82
288	3	audio claro | claro en exteriores | buen diseño	audio bajo | demasiado grande | poca duración de batería	2024-10-15 12:31:50.083
287	2	buen diseño | cómodo de llevar	audio bajo | interrupciones en el uso | problemas de conectividad	2024-10-15 12:31:40.218
286	2	buen alcance de señal	problemas de conectividad | difícil de usar con guantes | interrupciones en el uso	2024-10-14 12:31:28.896
285	2	diseño atractivo	demasiado grande | difícil de usar con guantes	2024-10-14 12:31:17.769
281	1	fácil de manejar	poca duración de batería | interrupciones en el uso	2024-10-12 12:30:30.455
282	3	fácil de manejar | buen diseño	audio bajo | interrupciones en el uso	2024-10-12 12:30:42.213
279	1	el dispositivo parece muy resistente | la calidad de las fotos es muy buena	pierdo la señal muy seguido	2024-10-11 12:30:02.855
280	2	fácil de manejar | cómodo de llevar	difícil de usar con guantes | interrupciones en el uso | poca duración de batería	2024-10-11 12:30:19.65
291	1	cómodo de llevar	problemas de conectividad | difícil de usar con guantes | demasiado grande	2024-10-17 12:33:10.519
284	1	cómodo de llevar | claro en exteriores | audio claro	demasiado grande | problemas de conectividad	2024-10-13 12:31:05.993
366	3	audio claro | fácil de manejar | diseño atractivo	demasiado grande | interrupciones en el uso	2024-11-25 12:56:31.041029
367	3	fácil de manejar | audio claro | cómodo de llevar	interrupciones en el uso | problemas de conectividad	2024-11-25 12:56:35.421568
359	4	audio claro | buen diseño	interrupciones en el uso | poca duración de batería | difícil de usar con guantes	2024-11-21 12:55:51.535
364	2	buen diseño | diseño atractivo | claro en exteriores	audio bajo | demasiado grande | difícil de usar con guantes	2024-11-24 12:56:18.976
357	4	claro en exteriores | buen alcance de señal | cómodo de llevar	poca duración de batería | demasiado grande	2024-11-20 12:55:34.726
362	3	cómodo de llevar | fácil de manejar | diseño atractivo	audio bajo	2024-11-23 12:56:07.854
361	3	claro en exteriores | audio claro | diseño atractivo	problemas de conectividad	2024-11-22 12:56:03.325
382	2	el dispositivo tiene buena batería	la calidad de la llamada es muy mala | el puerto de carga parece débil	2024-11-26 15:26:05.604623
387	4	el dispositivo me parece genial | la calidad de la cámara es espectacular | la batería me dura todo el día | la calidad del audio mejoró sobre el dispositivo anterior		2024-11-26 19:46:24.781885
358	3	diseño atractivo | cómodo de llevar	poca duración de batería	2024-11-21 12:55:46.024
388	1		la conectividad es pésima | la calidad de la cámara es nefasta | el puerto de carga parece bastante frágil | tengo miedo de que se rompa en poco tiempo	2024-11-26 20:33:45.994282
356	2	audio claro	difícil de usar con guantes | audio bajo	2024-11-20 12:55:30.38
355	2	buen alcance de señal	audio bajo | difícil de usar con guantes | problemas de conectividad	2024-11-19 12:55:24.687
354	3	claro en exteriores | diseño atractivo | cómodo de llevar	poca duración de batería	2024-11-19 12:55:20.216
353	3	buen alcance de señal | diseño atractivo	interrupciones en el uso	2024-11-18 12:55:13.976
352	2	buen alcance de señal	audio bajo | demasiado grande	2024-11-18 12:54:32.499
351	3	diseño atractivo | audio claro	difícil de usar con guantes	2024-11-17 12:54:28.537
350	3	buen alcance de señal	interrupciones en el uso	2024-11-17 12:54:24.333
349	3	buen alcance de señal | diseño atractivo	problemas de conectividad	2024-11-16 12:54:20.977
348	3	diseño atractivo | claro en exteriores | buen alcance de señal	problemas de conectividad	2024-11-16 12:54:17.164
347	3	fácil de manejar | audio claro | diseño atractivo	demasiado grande	2024-11-15 12:54:09.708
346	2	buen alcance de señal | fácil de manejar	problemas de conectividad | poca duración de batería	2024-11-15 12:54:04.971
345	3	audio claro	poca duración de batería | difícil de usar con guantes	2024-11-14 12:54:00.81
344	3	audio claro | buen alcance de señal	poca duración de batería	2024-11-14 12:53:56.952
343	2	claro en exteriores | diseño atractivo	interrupciones en el uso | poca duración de batería | problemas de conectividad	2024-11-13 12:53:53.064
342	3	alcance de señal impresionante | mejor que antes	dispositivo se calienta demasiado tras uso prolongado	2024-11-13 12:53:41.16
341	3	resistente al agua | ideal para las condiciones	nuevo sistema de menú menos intuitivo | cuesta adaptarse	2024-11-12 12:53:36.782
340	3	tiempo de respuesta mejorado para mensajes	batería se drena rápido con GPS activado	2024-11-12 12:53:32.678
339	3	soporta bien caídas y golpes	indicadores LED no visibles bajo luz solar intensa | difícil de usar en exteriores	2024-11-11 12:53:29.079
338	3	altavoz con mejor calidad de sonido | facilita las comunicaciones	dispositivo tarda en encenderse | inconveniente en emergencias	2024-11-10 12:53:25.48
337	3	material antideslizante ideal para trabajar con guantes	función de dictado de mensajes imprecisa | requiere corrección manual	2024-11-10 12:53:21.003
306	3	diseño atractivo | claro en exteriores | fácil de manejar	audio bajo | demasiado grande | problemas de conectividad	2024-10-24 12:44:02.529
368	3	el dispositivo me parece bien | la cámara saca buenas fotos	los bordes son de mala calidad | la calidad de audio no es la mejor	2024-11-25 17:08:26.129184
383	1		la calidad de la cámara es pésima | la conectividad es bastante mala | el puerto de carga parece débil | es muy frágil	2024-11-26 19:08:50.436466
371	1	el dispositivo me parece bien | la cámara saca buenas fotos	demasiado grande | interrupciones en el uso	2024-10-01 17:13:37.916
372	2	cómodo de llevar | buen diseño	cómodo de llevar | buen diseño	2024-10-10 17:13:37.916
373	3	fácil de manejar	audio bajo | interrupciones en el uso | problemas de conectividad	2024-10-09 17:13:37.916
374	1	fácil de manejar | audio claro | claro en exteriores	audio bajo | demasiado grande | problemas de conectividad	2024-10-08 17:13:37.916
375	1	cómodo de llevar	poca duración de batería | difícil de usar con guantes	2024-10-07 17:13:37.916
376	2	diseño atractivo	difícil de usar con guantes	2024-10-06 12:31:17.769
377	1	claro en exteriores	interrupciones en el uso | poca duración de batería	2024-10-05 12:33:10.519
378	2	fácil de manejar | buen diseño	poca duración de batería | audio bajo	2024-10-04 12:30:42.213
379	1	audio claro | fácil de manejar	pierdo la señal muy seguido	2024-10-03 12:30:42.213
380	1	diseño atractivo | fácil de manejar | buen diseño	demasiado grande | problemas de conectividad	2024-10-02 12:30:42.213
381	2	cómodo de llevar	difícil de usar con guantes | interrupciones en el uso | poca duración de batería	2024-10-01 12:30:42.213
369	4		anda lento | la cámara es mala | la calidad de sonido es pésima | pierdo muchísimas veces la conectividad al hacer llamadas	2024-11-26 17:13:37.916
365	4	diseño atractivo	poca duración de batería | problemas de conectividad | interrupciones en el uso	2024-11-24 12:56:23.975
363	4	cómodo de llevar | buen alcance de señal | buen diseño	poca duración de batería | audio bajo | demasiado grande	2024-11-23 12:56:14.101
360	4	buen alcance de señal | fácil de manejar | cómodo de llevar	interrupciones en el uso	2024-11-22 12:55:56.673
384	4	la calidad de la cámara es mucho mejor que antes | la calidad de la llamada es súper clara | me dura todo el día la batería | parece muy robusto		2024-11-26 19:14:05.960839
385	3	el dispositivo me parece bastante bueno	la batería dura poco	2024-11-26 19:39:57.563504
386	3	el dispositivo me parece excelente	la batería dura poco	2024-11-26 19:40:42.505744
389	1		el dispositivo se pasa trancando | la calidad de audio es bastante mala | el micrófono parece que no funciona	2024-11-26 20:37:24.004431
390	4	el dispositivo me parece genial | la calidad de la cámara es bastante mejor que antes | la calidad de audio de las llamadas es buena | la batería me dura todo el día		2024-11-26 20:40:51.58277
391	4	el dispositivo me parece muy bueno | la calidad de la cámara es excelente | la calidad de la llamada es aún mejor | la durabilidad parece muy buena		2024-11-26 20:44:36.424511
392	4	el dispositivo me parece genial | la duración de la batería es muy buena | parece muy resistente | la calidad de las llamadas mejoró considerablemente	la conectividad no es tan mala	2024-11-26 20:47:48.26917
393	4	el dispositivo me parece genial | la calidad de audio es muy buena | es muy resistente | la batería me dura todo el día		2024-11-26 20:52:04.324147
394	4	el dispositivo me parece excelente | la calidad de la cámara es muy buena | la conectividad también | el dispositivo parece muy resistente		2024-11-26 20:58:20.369201
395	4	el dispositivo es muy bueno | la calidad de la cámara es genial | la conectividad es genial | la batería me dura todo el día	el puerto de carga parece un poco frágil	2024-11-26 22:25:18.856361
396	2	la calidad del audio parece bastante decente	el dispositivo es muy lento | la cámara es malísima | no parece tan resistente a los elementos	2024-11-26 22:29:23.941961
397	4	el dispositivo está muy bueno | la batería dura mucho | el dispositivo tiene una integridad muy alta | la conectividad es excelente	el puerto de carga parece medio débil y que se va a romper	2024-11-26 22:35:32.339696
398	2	el dispositivo en general anda muy bien	es lento | la conectividad no es muy confiable | la cámara es desastrosa	2024-11-26 22:38:43.73998
399	3	el dispositivo tiene buena cámara | buen rendimiento en general | la calidad de la conectividad inalámbrica es muy buena	me preocupa la resistencia y durabilidad del mismo	2024-11-27 00:19:30.755923
432	3	el dispositivo es correcto | tiene buena batería	la cámara es mala	2024-11-27 09:24:11.08554
433	2	el dispositivo me gusta	la pantalla no se ve nada | el micrófono no funciona | la batería me dura medio día	2024-11-27 11:29:40.384598
\.


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 219
-- Name: n_feedback_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gpt
--

SELECT pg_catalog.setval('public.n_feedback_category_id_seq', 237, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 217
-- Name: p_feedback_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gpt
--

SELECT pg_catalog.setval('public.p_feedback_category_id_seq', 262, true);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 215
-- Name: valuations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gpt
--

SELECT pg_catalog.setval('public.valuations_id_seq', 433, true);


--
-- TOC entry 3225 (class 2606 OID 16493)
-- Name: n_feedback_category n_feedback_category_pkey; Type: CONSTRAINT; Schema: public; Owner: gpt
--

ALTER TABLE ONLY public.n_feedback_category
    ADD CONSTRAINT n_feedback_category_pkey PRIMARY KEY (id);


--
-- TOC entry 3223 (class 2606 OID 16483)
-- Name: p_feedback_category p_feedback_category_pkey; Type: CONSTRAINT; Schema: public; Owner: gpt
--

ALTER TABLE ONLY public.p_feedback_category
    ADD CONSTRAINT p_feedback_category_pkey PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 16410)
-- Name: valuations valuations_pkey; Type: CONSTRAINT; Schema: public; Owner: gpt
--

ALTER TABLE ONLY public.valuations
    ADD CONSTRAINT valuations_pkey PRIMARY KEY (id);


-- Completed on 2024-12-02 19:18:49

--
-- PostgreSQL database dump complete
--

