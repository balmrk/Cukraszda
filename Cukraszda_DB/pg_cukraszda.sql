--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _ar; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE ar (
    id smallint,
    sutiid smallint,
    ertek integer,
    egyseg character varying(11) DEFAULT NULL::character varying
);


ALTER TABLE ar OWNER TO rebasedata;

--
-- Name: _felhasznalo; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE felhasznalo (
    id smallint,
    felhasznalonev character varying(5) DEFAULT NULL::character varying,
    jelszo character varying(60) DEFAULT NULL::character varying
);


ALTER TABLE felhasznalo OWNER TO rebasedata;

--
-- Name: _hibernate_sequence; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE hibernate_sequence (
    next_val smallint
);


ALTER TABLE hibernate_sequence OWNER TO rebasedata;

--
-- Name: _roles; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE roles (
    id smallint,
    name character varying(8) DEFAULT NULL::character varying
);


ALTER TABLE roles OWNER TO rebasedata;

--
-- Name: _suti; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE suti (
    id smallint,
    nev character varying(40) DEFAULT NULL::character varying,
    tipus character varying(18) DEFAULT NULL::character varying,
    dijazott smallint
);


ALTER TABLE suti OWNER TO rebasedata;

--
-- Name: _tartalom; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE tartalom (
    id smallint,
    sutiid smallint,
    mentes character varying(2) DEFAULT NULL::character varying
);


ALTER TABLE tartalom OWNER TO rebasedata;

--
-- Name: _user_role; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE user_role (
    user_id smallint,
    role_id smallint
);


ALTER TABLE user_role OWNER TO rebasedata;

--
-- Name: _uzenetek; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE uzenetek (
    id character varying(1) DEFAULT NULL::character varying,
    sender character varying(1) DEFAULT NULL::character varying,
    content character varying(1) DEFAULT NULL::character varying,
    kuldes_ideje character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE uzenetek OWNER TO rebasedata;

--
-- Data for Name: _ar; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY ar (id, sutiid, ertek, egyseg) FROM stdin;
1	32	500	db
2	76	10900	16 szeletes
3	106	4300	8 szeletes
4	88	300	db
5	116	16200	24 szeletes
6	135	250	db
7	127	4400	kg
8	50	13400	24 szeletes
9	70	700	db
10	31	5200	kg
11	96	3300	kg ​​
12	116	5700	8 szeletes
13	22	9000	16 szeletes
14	138	4400	kg
15	112	2900	kg
16	58	3200	kg
17	98	10400	16 szeletes
18	75	2100	rúd
19	24	11400	24 szeletes
20	62	600	db
21	61	8400	16 szeletes
22	105	10900	16 szeletes
23	20	4700	8 szeletes
24	123	1800	rúd
25	60	8200	16 szeletes
26	24	3900	8 szeletes
27	38	4300	8 szeletes
28	126	2100	rúd
29	64	750	db
30	109	300	db
31	66	350	db
32	89	13200	24 szeletes
33	98	15400	24 szeletes
34	24	7400	16 szeletes
35	76	5700	8 szeletes
36	131	250	db
37	50	9200	16 szeletes
38	55	600	db
39	87	3400	kg
40	4	3500	koszorú
41	8	400	db
42	100	450	db
43	129	5300	8 szeletes
44	35	4700	8 szeletes
45	47	490	db
46	89	9000	16 szeletes
47	111	3300	kg
48	94	400	db
49	42	16200	24 szeletes
50	80	350	db
51	134	4700	8 szeletes
52	128	4000	kg
53	90	5200	kg
54	39	13200	24 szeletes
55	71	7400	16 szeletes
56	17	3400	kg
57	68	18400	24 szeletes
58	81	8200	16 szeletes
59	134	9000	16 szeletes
60	108	11400	24 szeletes
61	97	5200	kg
62	81	4300	8 szeletes
63	44	3800	kg
64	72	5700	8 szeletes
65	49	250	db
66	48	350	db
67	14	350	db
68	107	12200	24 szeletes
69	27	15400	24 szeletes
70	106	12100	24 szeletes
71	74	7400	16 szeletes
72	40	5700	8 szeletes
73	133	450	db
74	77	490	db
75	22	13200	24 szeletes
76	119	9000	16 szeletes
77	120	3400	kg
78	105	5700	8 szeletes
79	119	13200	24 szeletes
80	99	4600	kg
81	61	12200	24 szeletes
82	93	4200	kg
83	59	13200	24 szeletes
84	82	5700	8 szeletes
85	56	600	db
86	23	550	db
87	81	12100	24 szeletes
88	67	500	db
89	68	6400	8 szeletes
90	38	8200	16 szeletes
91	139	4700	8 szeletes
92	30	530	db
93	95	16200	24 szeletes
94	101	400	db
95	65	400	db
96	10	12100	24 szeletes
97	59	9000	16 szeletes
98	119	4700	8 szeletes
99	82	16200	24 szeletes
100	3	3300	kg
101	104	4200	kg
102	110	530	db
103	1	300	db
104	25	8200	16 szeletes
105	40	16200	24 szeletes
106	36	490	db
107	124	3900	8 szeletes
108	16	530	db
109	29	3500	koszorú
110	116	10900	16 szeletes
111	71	3900	8 szeletes
112	2	500	db
113	71	11400	24 szeletes
114	10	4300	8 szeletes
115	108	3900	8 szeletes
116	69	450	db
117	39	9000	16 szeletes
118	25	4300	8 szeletes
119	107	8400	16 szeletes
120	5	9000	12 szeletes
121	106	8200	16 szeletes
122	114	450	db
123	26	400	db
124	82	10900	16 szeletes
125	28	8200	16 szeletes
126	42	10900	16 szeletes
127	35	13200	24 szeletes
128	74	3900	8 szeletes
129	19	450	db
130	25	12100	24 szeletes
131	125	5700	8 szeletes
132	95	5700	8 szeletes
133	34	1700	rúd
134	121	530	db
135	76	16200	24 szeletes
136	13	400	db
137	60	12100	24 szeletes
138	33	350	db
139	132	530	db
140	117	9900	16 szeletes
141	27	10400	16 szeletes
142	18	490	db
143	124	7400	16 szeletes
144	122	5200	kg
145	59	4700	8 szeletes
146	124	11400	24 szeletes
147	134	13200	24 szeletes
148	45	450	db
149	63	350	db
150	6	3900	8 szeletes
151	28	4300	8 szeletes
152	37	3900	8 szeletes
153	52	5000	kg
154	61	4500	8 szeletes
155	86	600	db
156	6	7400	16 szeletes
157	37	7400	16 szeletes
158	11	490	db
159	108	7400	16 szeletes
160	35	9000	16 szeletes
161	107	4500	8 szeletes
162	6	11400	24 szeletes
163	79	4000	kg
164	60	4300	8 szeletes
165	21	5700	8 szeletes
166	28	12100	24 szeletes
167	15	5000	kg
168	21	5700	8 szeletes
169	37	11400	24 szeletes
170	74	11400	24 szeletes
171	103	650	db
172	43	4200	kg 
173	12	3400	kg
174	27	5400	8 szeletes
175	7	490	db
176	84	5200	kg
177	115	3600	kg
178	51	4000	kg
179	118	450	db
180	41	530	db
181	135	400	db
182	73	5400	8 szeletes
183	10	8200	16 szeletes
184	98	5400	8 szeletes
185	113	850	db
186	130	350	db
187	39	4700	8 szeletes
188	136	3400	kg
189	83	650	db
190	91	800	20 dkg
191	46	5200	kg
192	102	330	db
193	95	10900	16 szeletes
194	54	580	db
195	57	530	db
196	22	4700	8 szeletes
197	92	450	db
198	68	12400	16 szeletes
199	42	5700	8 szeletes
200	40	10900	16 szeletes
201	9	450	db
202	78	4200	kg
203	85	500	db
204	137	600	db
205	50	4900	8 szeletes
206	38	12100	24 szeletes
207	53	4200	kg
208	89	4700	8 szeletes
\.


--
-- Data for Name: _felhasznalo; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY felhasznalo (id, felhasznalonev, jelszo) FROM stdin;
1	admin	$2a$10$VMNCX7vyZjvW/6.CNsDnQuM.rAZ2JstRFoRVyEDI6Ekg1kOAhsw3y
2	pyx	$2a$10$PE83QqmkcWMY4qejmgeB7.EQHPvMuNaYnBRAv34Op9DvEBABMCleu
\.


--
-- Data for Name: _hibernate_sequence; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY hibernate_sequence (next_val) FROM stdin;
1
\.


--
-- Data for Name: _roles; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY roles (id, name) FROM stdin;
1	ADMIN
2	USER
3	LATOGATO
\.


--
-- Data for Name: _suti; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY suti (id, nev, tipus, dijazott) FROM stdin;
1	Süni	vegyes	0
2	Gesztenyealagút	vegyes	0
3	Sajtos pogácsa	sós teasütemény	0
4	Diós-mákos	bejgli	0
5	Sajttorta (málnás)	torta	0
6	Citrom	torta	0
7	Eszterházy	tortaszelet	0
8	Rákóczi-túrós	pite	0
9	Meggyes kocka	tejszínes sütemény	0
10	Legényfogó	torta	1
11	Alpesi karamell	tortaszelet	0
12	Kókuszcsók	édes teasütemény	0
13	Habos mákos	pite	0
14	Szilvás	pite	0
15	Juhtúrós párna	sós teasütemény	0
16	Mákos guba	tortaszelet	0
17	Néró	édes teasütemény	0
18	Sacher	tortaszelet	0
19	Citrom	tortaszelet	0
20	Ribizlihabos-almás réteges	különleges torta	1
21	Három kívánság	torta	1
22	Dobos	torta	0
23	Epres mascarpone	tortaszelet	0
24	Csokoládémousse	torta	0
25	Oroszkrém	torta	0
26	Medvetalp	vegyes	0
27	Trüffel	torta	0
28	Tejszínes gyümölcsös (meggy)	torta	0
29	Mákos-szilvalekváros	bejgli	0
30	Ribizlihabos-﻿almá﻿s réteges tortaszelet	tortaszelet	0
31	Marcipános vágott	édes teasütemény	0
32	Indiáner	vegyes	0
33	Meggyes	pite	0
34	Mákos	bejgli	0
35	Sós karamella	torta	0
36	Legényfogó	tortaszelet	0
37	Rigó Jancsi	torta	0
38	Tejszínes gyümölcsös (erdei gyümölcs)	torta	0
39	Ez+Az (csokoládé és gesztenye)	torta	0
40	Málnás mascarpone	torta	0
41	Dobos	tortaszelet	0
42	Ferrero	torta	0
43	Vegyes házi pite falatok	pite	0
44	Ökörszem	édes teasütemény	0
45	Danubius kocka	tejszínes sütemény	0
46	Sajtkrémmel töltött fánkocska	sós teasütemény	0
47	Túrókrém gyümölccsel díszítve	tortaszelet	0
48	Almás	pite	0
49	Mignon	vegyes	0
50	Csokoládémousse fényes csokoládéval	torta	0
51	Vágott sós (sós omlós)	sós teasütemény	0
52	Nagyi sós	sós teasütemény	0
53	Vegyes sós	sós teasütemény	0
54	Somlói	tortaszelet	0
55	Tiramisu	tortaszelet	0
56	Hegyvidék	tortaszelet	0
57	Szedres csokoládé	tortaszelet	0
58	Pogácsák vegyesen	sós teasütemény	0
59	Lúdláb	torta	0
60	Sacher	torta	0
61	Eszterházy	torta	0
62	Zalavári gesztenye	tortaszelet	0
63	Gesztenyegolyó	vegyes	0
64	Pisztáciás-málnás mascarpone	tortaszelet	0
65	Habos mákos	vegyes	0
66	Franciakrémes	krémes	0
67	Gesztenye kocka	tejszínes sütemény	0
68	Pisztáciás-málnás mascarpone	torta	0
69	Málnás kocka	tejszínes sütemény	0
70	Sajttorta (málnás)	tortaszelet	0
71	Túrókrém gyümölccsel	torta	0
72	Csokis kaland	különleges torta	1
73	Somlói	torta	0
74	Palermo	torta	0
75	Szilvalekváros	bejgli	0
76	Ünnepi diótorta grillázzsal	torta	0
77	Oroszkrém	tortaszelet	0
78	Mini zserbó	édes teasütemény	0
79	Sajtos masni	sós teasütemény	0
80	Zserbó	pite	0
81	Tejszínes gyümölcsös (málna)	torta	0
82	Marcipános csokoládé	torta	0
83	Csokis kaland	tortaszelet	0
84	Marcipán tekercs	édes teasütemény	0
85	Képviselőfánk	vegyes	0
86	Epres omlett	vegyes	0
87	Mini linzer	édes teasütemény	0
88	Linzerkarika	vegyes	0
89	Szedres csokoládé	torta	0
90	Narancsív	édes teasütemény	0
91	Gesztenyepüré	vegyes	0
92	Palermo	tejszínes sütemény	0
93	Csokis néró	édes teasütemény	0
94	Flódni	pite	0
95	Mézeskalács	torta	0
96	Olívás pogácsa	sós teasütemény	0
97	Florentin	édes teasütemény	0
98	Tiramisu	torta	0
99	Zoli kedvence (vágott édes tea)	édes teasütemény	0
100	Erdei gyümölcs kocka	tejszínes sütemény	0
101	Rákóczi-túrós	tortaszelet	0
102	Mézeskrémes	pite	0
103	Trüffel	tortaszelet	0
104	Szilvás papucs	édes teasütemény	0
105	Zalavári gesztenye	torta	1
106	Danubius	torta	0
107	Alpesi karamell	torta	0
108	Puncs	torta	0
109	Gesztenye szív	vegyes	0
110	Ez+Az (csokoládé és gesztenye)	tortaszelet	0
111	Tökmagos félhold	sós teasütemény	0
112	Burgonyás pogácsa	sós teasütemény	0
113	Somlói galuska	vegyes	0
114	Puncs	tortaszelet	0
115	Lekváros vágott	édes teasütemény	0
116	Oreo	torta	0
117	Vintage	torta	0
118	Rigó Jancsi	tejszínes sütemény	0
119	Feketeerdő	torta	0
120	Kókuszos vágott	édes teasütemény	0
121	Feketeerdő	tortaszelet	0
122	Moscauer	édes teasütemény	0
123	Diós	bejgli	0
124	Rákóczi-túrós	torta	0
125	Három kívánság	különleges torta	0
126	Gesztenyés-karamellás	bejgli	0
127	Gesztenyés szív	édes teasütemény	0
128	Ropi	sós teasütemény	0
129	Paleolit étcsokoládé	különleges torta	0
130	Túrós	pite	0
131	Ischler	vegyes	0
132	Lúdláb	tortaszelet	0
133	Csokoládémousse	tortaszelet	0
134	Dió	torta	0
135	Krémes	krémes	0
136	Mini ischler	édes teasütemény	0
137	Paleolit étcsokoládé	tortaszelet	0
138	Tejfölös túrós hajtogatott	sós teasütemény	0
139	Mákos guba	torta	0
\.


--
-- Data for Name: _tartalom; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY tartalom (id, sutiid, mentes) FROM stdin;
1	26	G
2	37	L
3	83	HC
4	91	G
5	137	G
6	60	Te
7	129	HC
8	122	To
9	90	G
10	26	To
11	94	L
12	46	É
13	72	HC
14	114	Te
15	63	To
16	12	Te
17	128	É
18	51	É
19	109	To
20	109	G
21	97	G
22	97	To
23	24	L
24	91	To
25	137	L
26	84	G
27	30	HC
28	108	Te
29	84	To
30	6	L
31	108	L
32	12	L
33	79	É
34	72	G
35	118	L
36	60	L
37	52	É
38	137	HC
39	114	L
40	90	To
41	20	HC
42	63	G
43	129	G
44	129	L
45	15	É
\.


--
-- Data for Name: _user_role; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY user_role (user_id, role_id) FROM stdin;
1	1
1	2
1	3
2	1
2	2
2	3
\.


--
-- Data for Name: _uzenetek; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY uzenetek (id, sender, content, kuldes_ideje) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

