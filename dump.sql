--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.16
-- Dumped by pg_dump version 9.6.16

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

SET default_with_oids = false;

--
-- Name: admin; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.admin (
    _id integer NOT NULL,
    name text,
    email text,
    password text
);


ALTER TABLE public.admin OWNER TO saanviin;

--
-- Name: admin__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.admin__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin__id_seq OWNER TO saanviin;

--
-- Name: admin__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.admin__id_seq OWNED BY public.admin._id;


--
-- Name: ads; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.ads (
    _id integer NOT NULL,
    image_url text,
    category text
);


ALTER TABLE public.ads OWNER TO saanviin;

--
-- Name: ads__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.ads__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ads__id_seq OWNER TO saanviin;

--
-- Name: ads__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.ads__id_seq OWNED BY public.ads._id;


--
-- Name: authorize; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.authorize (
    code text,
    password text
);


ALTER TABLE public.authorize OWNER TO saanviin;

--
-- Name: category; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.category (
    _id integer NOT NULL,
    english_name text,
    hindi_name text,
    logo text
);


ALTER TABLE public.category OWNER TO saanviin;

--
-- Name: category__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.category__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category__id_seq OWNER TO saanviin;

--
-- Name: category__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.category__id_seq OWNED BY public.category._id;


--
-- Name: enquiry; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.enquiry (
    _id integer NOT NULL,
    name text,
    mobile_no text,
    address text
);


ALTER TABLE public.enquiry OWNER TO saanviin;

--
-- Name: enquiry__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.enquiry__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enquiry__id_seq OWNER TO saanviin;

--
-- Name: enquiry__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.enquiry__id_seq OWNED BY public.enquiry._id;


--
-- Name: options; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.options (
    _id integer NOT NULL,
    question_id integer,
    english_text integer NOT NULL,
    hindi_text integer NOT NULL
);


ALTER TABLE public.options OWNER TO saanviin;

--
-- Name: options__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.options__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.options__id_seq OWNER TO saanviin;

--
-- Name: options__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.options__id_seq OWNED BY public.options._id;


--
-- Name: options_english_text_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.options_english_text_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.options_english_text_seq OWNER TO saanviin;

--
-- Name: options_english_text_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.options_english_text_seq OWNED BY public.options.english_text;


--
-- Name: options_hindi_text_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.options_hindi_text_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.options_hindi_text_seq OWNER TO saanviin;

--
-- Name: options_hindi_text_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.options_hindi_text_seq OWNED BY public.options.hindi_text;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.payments (
    _id integer NOT NULL,
    student_id text,
    payment_date text,
    payment_time text,
    payment_type text,
    amount text,
    instamojo_reference_id text,
    remark text
);


ALTER TABLE public.payments OWNER TO saanviin;

--
-- Name: payments__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.payments__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments__id_seq OWNER TO saanviin;

--
-- Name: payments__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.payments__id_seq OWNED BY public.payments._id;


--
-- Name: pdf_files; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.pdf_files (
    _id integer NOT NULL,
    sub_category_id integer,
    english_name text,
    hindi_name text,
    filename text,
    html_file text
);


ALTER TABLE public.pdf_files OWNER TO saanviin;

--
-- Name: pdf_files__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.pdf_files__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pdf_files__id_seq OWNER TO saanviin;

--
-- Name: pdf_files__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.pdf_files__id_seq OWNED BY public.pdf_files._id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.questions (
    _id integer NOT NULL,
    sub_category_id integer,
    english_text text,
    hindi_text text,
    correct_option_index integer,
    pic text,
    type text
);


ALTER TABLE public.questions OWNER TO saanviin;

--
-- Name: questions__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.questions__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions__id_seq OWNER TO saanviin;

--
-- Name: questions__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.questions__id_seq OWNED BY public.questions._id;


--
-- Name: result; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.result (
    _id integer NOT NULL,
    student_id integer,
    result text,
    time_taken text,
    test_id integer,
    incorrect integer NOT NULL,
    correct integer NOT NULL,
    skipped integer NOT NULL,
    totalmarks text
);


ALTER TABLE public.result OWNER TO saanviin;

--
-- Name: result__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.result__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.result__id_seq OWNER TO saanviin;

--
-- Name: result__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.result__id_seq OWNED BY public.result._id;


--
-- Name: result_correct_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.result_correct_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.result_correct_seq OWNER TO saanviin;

--
-- Name: result_correct_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.result_correct_seq OWNED BY public.result.correct;


--
-- Name: result_incorrect_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.result_incorrect_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.result_incorrect_seq OWNER TO saanviin;

--
-- Name: result_incorrect_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.result_incorrect_seq OWNED BY public.result.incorrect;


--
-- Name: result_skipped_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.result_skipped_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.result_skipped_seq OWNER TO saanviin;

--
-- Name: result_skipped_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.result_skipped_seq OWNED BY public.result.skipped;


--
-- Name: student; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.student (
    _id integer NOT NULL,
    name text,
    fb_id text,
    fb_pic text,
    google_id text,
    google_name text,
    fb_json text,
    google_pic text,
    email_id text,
    password text,
    valid text,
    login_type text,
    push_notification_token text,
    pdf_allowed text DEFAULT true,
    online_test_allowed text DEFAULT true,
    offline_test_allowed text DEFAULT true,
    payment_status text DEFAULT false
);


ALTER TABLE public.student OWNER TO saanviin;

--
-- Name: student__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.student__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student__id_seq OWNER TO saanviin;

--
-- Name: student__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.student__id_seq OWNED BY public.student._id;


--
-- Name: sub_category; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.sub_category (
    _id integer NOT NULL,
    category_id integer,
    hindi_name text,
    english_name text,
    logo text,
    demo text
);


ALTER TABLE public.sub_category OWNER TO saanviin;

--
-- Name: sub_category__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.sub_category__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sub_category__id_seq OWNER TO saanviin;

--
-- Name: sub_category__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.sub_category__id_seq OWNED BY public.sub_category._id;


--
-- Name: test; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.test (
    _id integer NOT NULL,
    english_title text,
    hindi_title text,
    cancel_allowed_time_in_minutes text,
    online_status text,
    test_commence_date text,
    test_commence_time text,
    test_allowed_time_in_seconds text,
    test_online_no_of_days text,
    end_time text,
    set_password text DEFAULT false,
    shuffle_required text DEFAULT true,
    set_as_demo_test text DEFAULT false
);


ALTER TABLE public.test OWNER TO saanviin;

--
-- Name: test__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.test__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test__id_seq OWNER TO saanviin;

--
-- Name: test__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.test__id_seq OWNED BY public.test._id;


--
-- Name: test_options; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.test_options (
    _id integer NOT NULL,
    test_question_id integer,
    english_text text,
    hindi_text text
);


ALTER TABLE public.test_options OWNER TO saanviin;

--
-- Name: test_options__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.test_options__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_options__id_seq OWNER TO saanviin;

--
-- Name: test_options__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.test_options__id_seq OWNED BY public.test_options._id;


--
-- Name: test_questions; Type: TABLE; Schema: public; Owner: saanviin
--

CREATE TABLE public.test_questions (
    _id integer NOT NULL,
    test_id integer,
    correct_option_index integer,
    hindi_text text,
    english_text text,
    pic text
);


ALTER TABLE public.test_questions OWNER TO saanviin;

--
-- Name: test_questions__id_seq; Type: SEQUENCE; Schema: public; Owner: saanviin
--

CREATE SEQUENCE public.test_questions__id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_questions__id_seq OWNER TO saanviin;

--
-- Name: test_questions__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saanviin
--

ALTER SEQUENCE public.test_questions__id_seq OWNED BY public.test_questions._id;


--
-- Name: admin _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.admin ALTER COLUMN _id SET DEFAULT nextval('public.admin__id_seq'::regclass);


--
-- Name: ads _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.ads ALTER COLUMN _id SET DEFAULT nextval('public.ads__id_seq'::regclass);


--
-- Name: category _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.category ALTER COLUMN _id SET DEFAULT nextval('public.category__id_seq'::regclass);


--
-- Name: enquiry _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.enquiry ALTER COLUMN _id SET DEFAULT nextval('public.enquiry__id_seq'::regclass);


--
-- Name: options _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.options ALTER COLUMN _id SET DEFAULT nextval('public.options__id_seq'::regclass);


--
-- Name: options english_text; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.options ALTER COLUMN english_text SET DEFAULT nextval('public.options_english_text_seq'::regclass);


--
-- Name: options hindi_text; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.options ALTER COLUMN hindi_text SET DEFAULT nextval('public.options_hindi_text_seq'::regclass);


--
-- Name: payments _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.payments ALTER COLUMN _id SET DEFAULT nextval('public.payments__id_seq'::regclass);


--
-- Name: pdf_files _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.pdf_files ALTER COLUMN _id SET DEFAULT nextval('public.pdf_files__id_seq'::regclass);


--
-- Name: questions _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.questions ALTER COLUMN _id SET DEFAULT nextval('public.questions__id_seq'::regclass);


--
-- Name: result _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.result ALTER COLUMN _id SET DEFAULT nextval('public.result__id_seq'::regclass);


--
-- Name: result incorrect; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.result ALTER COLUMN incorrect SET DEFAULT nextval('public.result_incorrect_seq'::regclass);


--
-- Name: result correct; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.result ALTER COLUMN correct SET DEFAULT nextval('public.result_correct_seq'::regclass);


--
-- Name: result skipped; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.result ALTER COLUMN skipped SET DEFAULT nextval('public.result_skipped_seq'::regclass);


--
-- Name: student _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.student ALTER COLUMN _id SET DEFAULT nextval('public.student__id_seq'::regclass);


--
-- Name: sub_category _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.sub_category ALTER COLUMN _id SET DEFAULT nextval('public.sub_category__id_seq'::regclass);


--
-- Name: test _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.test ALTER COLUMN _id SET DEFAULT nextval('public.test__id_seq'::regclass);


--
-- Name: test_options _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.test_options ALTER COLUMN _id SET DEFAULT nextval('public.test_options__id_seq'::regclass);


--
-- Name: test_questions _id; Type: DEFAULT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.test_questions ALTER COLUMN _id SET DEFAULT nextval('public.test_questions__id_seq'::regclass);


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.admin (_id, name, email, password) FROM stdin;
1	Ashish Agrawal	shshagrawal05@gmail.com	@ashish05
\.


--
-- Name: admin__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.admin__id_seq', 1, true);


--
-- Data for Name: ads; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.ads (_id, image_url, category) FROM stdin;
17	600c88b43d4bbd49176c755457e69c621577640981616.jpeg	upper
18	2d4754888671beaec6d2313b0c2691cf1577641149699.jpeg	upper
19	fab5274b1af3e89db558b8c5927fdd741577641165349.jpeg	upper
20	8741093eef7d749d8517a2d6f4936d871577641458802.jpeg	lower
\.


--
-- Name: ads__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.ads__id_seq', 21, true);


--
-- Data for Name: authorize; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.authorize (code, password) FROM stdin;
AAA	REPUBLIC DAY
AAA	REPUBLIC DAY
AAA	REPUBLIC DAY
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.category (_id, english_name, hindi_name, logo) FROM stdin;
1	Aptitude		\N
2	Reasoning		\N
1	Aptitude		\N
2	Reasoning		\N
1	Aptitude		\N
2	Reasoning		\N
\.


--
-- Name: category__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.category__id_seq', 5, true);


--
-- Data for Name: enquiry; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.enquiry (_id, name, mobile_no, address) FROM stdin;
5	Ashish agrawal	7566642636	Gwalior
6	Yash Kumar 	9630884259	Thatipur Gwalior 
7	Saurabh dubey	9617306180	Gole Ka Mandir, gwalior
8	Satyabhan dinkar	9753814062	Mela road
9	DHARMESH AWASTHI 	934099264	MORENA
10	Ujjwal Dubey	9999650067	Morena
11	Rahul kamet	7580935380	Vivek nagar
12	Arun sharma 	9584775332	Govindpuri 
13	Anil	8319211912 	Sagartal road
14	Deependra Singh rajpoot	9039315658	Suresh Nagar thatipur 
15	Saurabh Soni	8299008824	Mahoba 
16	Saurabh dhamele	7415389968	Dabra
17	Soniya kushwah	9669619504	Hurawali c block morar
18	Harimilan yadav	8839153230	Seondha datia mp
19	Shashikant sharma	9098925626	Dullapur
20	Neha 	6387311656	Keshav vihar colony morar 
21	Sunil Rajput 	8964053690	Thatipur Gwalior 
22	Ankita tomar	8959758744	101,gayatri vihar thatipur gwalior
23	Aarti Shrivastava	8982132438	13,Kalpi bridge colony morar Gwalior
24	Satish sharma	7566976139	Morena
25	Sandeep kumar chaurasia	7007230175	GWALIOR
26	Princy gupta 	8707611474	New jiwaji nagar thatipur 
27	Prem Mathur 	7909459531	Thatipur
28	Lalita solanki 	8878171550	Thatipur Gwalior 
29	Mandeep Singh	7047722983	Shivpuri
30	Namrata sharma	9171981285	Thatipur
31	Dharmendra 	8358009959	B39 /2pragti vihar  colony 
32	Vishakha Barahdia	6261582570	Thatipur Gwalior
33	Akshit arora	7999562317	azad nagar morar gwl.
34	Pushpanshu sharma	6232636462	Suresh nagar  499 B
35	Shiv	9753812358	Shivpratap84040@gmail.com
36	Anubhav gaur 	9575750044	Indrinami nagar
37	Rohan	9644349127	Thatipur
38	Nisha verma	8319934454	Railway colony 
39	Rishabh sharma	9691156656	Govindpuri Gwalior
40	Vaishnav	7389001406	Home
41	Ghanshyam	9584728573	Sayana Bhind
42	Irfan khan	7054470685	Thatipur
43	Kapil lachoriya	7974175228	Thatipur gwalior
44	shivani	6261779550	singpura
45	Puneet	7389693651	Nitin nagar 
46	Ranjana	9144634108	Gaytri vihar colony
47	Ranjana	9144634108	Gaytri vihar colony
48	Ranjana	9144634108	Gaytri vihar colony
49	Ranjana	9144634108	Gaytri vihar colony
50	Ranjana	9144634108	Gaytri vihar colony
51	Ranjana	9144634108	Gaytri vihar colony
52	Ranjana	9144634108	Gaytri vihar colony
53	Sumit	8770550264	Gwalior
54	Anuradha	9131947523	Badera
55	Anuradha	9131947523	Badera
56	Kiran	6264950295	Nitin nagar
57	Kiran	6264950295	Nitin nagar
58	Mayank 	9926113207	Morar gwalior
59	Mohan Prajapati	9174684036	Morar Gwalior
60	Mohan Prajapati	9174684036	Morar Gwalior
61	Mohan Prajapati	9174684036	Morse Gwalior
62	Mohan Prajapati	9174684036	Morar Gwalior
63	Mohan Prajapati	9174684036	Morar Gwalior
64	Ajay kumar	8889266725	Village-kaliyanpura post-pali (dirman) tehshil-gohad bhind (m.p.)
65	Rajesh Baraiya	8963910531	Morar
66	Rakesh	7354947589	Pali (Dirman) gohad bhind
67	Rakesh	7354947589	Pali (Dirman) gohad bhind
68	Rakesh	7354947589	Pali (Dirman) gohad bhind
69	Rakesh	7354947589	Pali (Dirman) gohad bhind
70	Rakesh	7354947589	Pali (Dirman) gohad bhind
71	Rajesh pal	8435216706	New vivek nagar
72	Suneel kumar rajak	8966898150	New vivek nagarthatipur Gwalior
73	Df jeyfe	9340565582	Gwalior
74	Deepak dandotiya	8602635734	Endra nagar thatipur
75	Parmanand kushwaha	7222905199	New indra nagar Chauhan pyau
76	Harimilan	8839153230	Soendha
77	Rahul kamet	7580935380	Vivek nagar
78	Anju	9074610594	Vivek nagar
79	Ravindra jatav	9109662892	Thitipur gwalior
80	Gourav parasar	9171485578	Tyaginagar
81	Shashi Singh	8269526388	GL-71 DD Nagar Gwalior
82	VARSHA Singh 	7828962398	Thatipur
83	Ayush Sharma	8208996160	J 76 Madhav Nagar Gwalior
84	Akhlendra tomar	6263469896	Gwalior
85	Akhlendra tomar	8878310175	Gwalior
86	Yash Kumar 	9630884259	Vivekananda chauraha 
87	Anuradha	9131947523	Bhind
88	Devdadotiya	8602635734	Thatipur gwalior
89	Ajay yadav	9165090805	51 Anupam nagar city center gwalior
90	Mohan Prajapati	6260755587	Morar
91	Ravindra jatav	9109662892	Thatipur gwalior
92	Shashi Singh	8269526388	GL-71 DD Nagar
93	Saurabh dhamele	7415389968	Gwalior
94	Ankit arora	7566149326	Azad nagar morar
95	Ayush Sharma	8208996160	J 76 MADHAV NAGAR
96	Ankit	7983876817	Gwl
97	Rishabh sharma	9691156656	Govindpuri
98	AYUSH SHARMA	8208996160	J 76 MADHAV NAGAR JHANSI ROAD GWALIOR
99	Tarun	8349695533	Mathura 
100	Neelam Jayant	8602667308	B-3 Jag Jeevan Nagar Thatipur, Gwalior.
101	Kalpna rai	6267145812	Lahar
102	Kalpna rai	6267145812	Lahar
103	Akash deep khare	8871687442	Thatipur gwalior
104	Yash Kumar 	9630884259	Thatipur 
105	Mohan	9111733317	Thatipur
106	Namrata sharma	7024680764	Gw
107	Mandeep Singh	7047722983	Shivpuri
108	Prashant	9981568183	Balbant nagar
109	Mohan Prajapati	6260755587	Murar
110	Saurabh	7415389968	Gwalior
111	Yasj	9630884259	Thatipur 
112	SUMIT BHADOURIYA	8770550264	Gandhinagar
113	HEMANT SHARMA	9977452055	Thatipur
114	Amar	7566642636	Pansch
115	Yfyhdhbf	8827706188	Fjvfkncf
116	Kalpna	6267145812	Gautam nagar
117	Vaishnav chaturvedi	7389001406	Gwalior 
118	Shashi Singh 	8269526388	GL-71 DD Nagar 
119	Ankita Tomar	8959758744	101 gaytri vihar thatipur 
120	Parmanand kushwaha	7222905199	Chauhan pyau
121	Sumit bhadouriya	8770550264	Gandhi nagar
122	Avnish Soni	8223074184	Bhind
123	Sandesh	8855226699	Thati0ur
124	Mandeep Singh	7047722983	Shivpuri
125	Neelam jayant	8602667308	Thatipur
126	Sahil mudagal	8718999766	Budhbihar colony semai road vijaypur sheopur
127	Shreyansh upraiti	7610305160	20-a chandkya puri darpan colony
128	Ayush Sharma	8208996160	J 76 Madhav Nagar Jhansi Road Gwalior
129	Rinku jatav	7748090108	Gram brasangpura
130	Ashish kumar paras	7000380943	Railway colony nela road
131	Ghanshyam	9584728573	Gwalior
132	Rinku jatav	7748090108	Datia
133	Anil	8817239388	Thatipur
134	Shreya rane	7999715296	Agriculture colony
135	Shraddha swarnkar	9669276875	New sunjay nager morena road gwalioe
136	Sushil pachori	7089043585	Hazira
137	Sid	8076490687	Hazir gwalior
138	Sumit bhadouriya	8770550264	Gandhi nagar
139	Tanuj jadon 	7697274112	118 indramani nagar 
140	Harsh kumar	7987763104	Laltipara morar gwalior
141	Rahul dhanoliya	8518801196	Gaj jeevan nagar thatipur
142	Pawan baghel	9123713203	Morar
143	Ankit pachauri	9174936224	Thatipur 
144	Kamal Kol	9584348881	Rewa MP
145	Amit Kumar Rawat	8719937963	 Petc gwalior
146	Manish 	8962618273	C-18 jagjeevan nagar 
147	Pankaj para	8770506217	Uttam pura, MORENA 
148	Neeraj Dutta 	8878523229	Gwalior 
149	Devendra mittal	8349136483	Gallar kothar,bhind tomar building, thatipur gwalior 
150	Kamet	7723070622	Thatipur
151	LALIT KUMAR JATAV	7909630020	Village senthari, tehsile indergarh,dist datia, mp
152	MUKESH MOURYA	7803829658	Vill nihona,teh cheenor,dist Gwalior
153	Ayu Sharma	8208996160	J 76 Madhav Nagar Jhansi Road Gwalior
154	Tanu jatav	7694874615	Gram renhat ghatigaon gwalior m.p.
155	Tanu jatav	7694874615	Gram renhat ghatigaon gwalior m.p.
156	Tanu jatav	7694874615	Gram renhat ghatigaon gwalior m.p.
157	Tanu jatav	7694874615	Gram renhat ghatigaon gwalior
158	Tanu jatav	7694874615	Gram renhat ghatigaon gwalior
159	Tanu jatav	7694874615	Gram renhat ghatigaon gwalior m.p.
160	Lovely Sikariya	7566745530	LIG38- JU campus, Behind of paryatan Bhavan city Center
161	Vivekjha	8269778325	EE 88 D. D nagar 
162	Jitendra jatav	8839187958	A-14 siddhartha nagar thatipur murar
163	Mayank parashar	9926113207	Morar gwalior
164	Surendra jatav	8085408851	Thatipur gwalior
165	Rambaran 	7974766910	G 6 jagjeewan nagar thatipur gwalior
166	Lokendra Jasele 	6268886592	PETC Gwalior 
167	Rahul Kumar	9669849841	DONGARPUR NEAR PUTALIGHAR MORAR Gwalior
168	Aastik	9340797817	THATIPUR 
169	Mukesh mourya	7803829658	Village nihona dist gwalior
170	Umesh sengar	9425630388	Gwalior
171	Rustam Singh	9977605685	Shiv Nagar
172	Yash Kumar 	9630884259	Thatipur 
173	Neelam batham 	8269295865	Sharda vihar city center Gwalior 
174	Dheeraj kumar	9174919306	Morena
175	Nisha verma	7354397851	New railway colony loco gwalior
176	Lokendra Jasele 	6268886592	PETC Gwalior 
177	Shashi Singh 	8269526388	GL-71 DD nagar
178	Krishna Rathore	9174074072	Pragati vihar colony gole ka mandir
179	Mahendra 	7828411852	Khureri
180	Vikku	9039649917	B
181	Ankit pachauri	9174936224	ambah 
214	Shilpi chauhan	8839175615	Tyagi nagar morar Gwalior 
215	Ayu Sharma	8208996160	J 76 Madhav Nagar Jhansi Road Gwalior
216	Mohan prajapati	9174684036	Thatipur Gwalior
217	shalini choudhary	9285467644	girls hostel agriculture colony
218	Aman guota	9589717736	Dana oli,lashkar,gwalior
219	Jitendra tiwari	7724001321	Gwalior
220	Satyabhan dinkar	9753481356	Vivek nagar, gwalior
221	Yash kumar	9630884259	Vivekananda chauraha
222	Saurabh Dubey	6263366785	Pragati vihar colony, Gwalior
223	Shubham Yadav	7987554679 	Shree Ram boys Hostel near Maharashtra, gola ka mandir, Morar road Gwalior 
224	Aastik	9340797817	Thatipur
225	Ankit Pachauri	9174936224	Gwalior
226	ANAND SINGH 	8518041938	Suresh nagar 
227	Ajay 	7999182855	Sikander kampoo
228	Pradeep raj	8770531527	Azad nagar, morar
229	Hariom	79873387666	Gwalior
230	Raskendra	9653010039	Gwalior
231	Priyanka 	9522441613	1330, rachna nagar , bhind road gwalior.
232	Pankaj para	7566018903	Uttam pura Morena 
233	jitendra jaiswal	9754506461	gwalior
234	 Thakur sahab ... Sagar raja parmar 	8319414250	Thatipur gwalior 
235	Yash Kumar	9630884256	Vivekananda chauraha 
236	hirasinghdiwakar	9669649009	Lahar
237	Yash kumar	9630884259	yashpk2128@gmail.com
238	Pallavi Dixit	9340729297	Morar
239	Rahul argal	7693957493	Birkhadi 
240	Rahul argal	7693957493	Birkhadi 
241	Rahul argal	7693957493	Birkhadi 
242	Rahul argal	7693957493	Birkhadi 
243	Rahul argal	7693957493	Birkhadi 
244	Rahul argal	7693957493	Birkhadi 
245	Rahul argal	7693957493	Vivik nagar thatipur Gwalior 
246	Rahul argal	7693957493	Vivik nagar thatipur Gwalior 
247	Rahul argal	7693957493	Vivik nagar thatipur Gwalior 
320	Pooja shakya	7089498490	Thatipur
248	Rahul argal	7693957493	Vivik nagar thatipur Gwalior 
249	Rahul argal	7693957493	Vivik nagar thatipur Gwalior 
250	Rahul argal	7693957493	Vivik nagar thatipur Gwalior 
251	Rahul argal	7693957493	Birkhadi 
252	Rahul argal	7693957493	Vivik nagar thatipur Gwalior 
253	Rahul argal	7693957493	Vivik nagar thatipur Gwalior 
254	Yash Kumar	9630884259	yashpk2128@gmail.com
255	Lata	7067551083	Tikonia morar
288	Pankaj para	7566018903	Morena 
289	Ayush Sharma	8208996160	J 76 MADHAV NAGAR JHANSI ROAD
290	Pankaj para	7566018903	Morena 
291	Ajay	7999182855	Sikander kampoo
292	Yash Chopra	9630884259	Thatipur
293	Harimilan yadav 	9754646857	Gwalior
294	Sonu	8963932072	Purani chhawani Gwalior
295	Ajaypratap singh jadoun	8516896979	Darpan colony thatipur Gwalior
296	Yash 	9630884259	Thatipur 
297	Sonu	8963932072	Purani chhawani Gwalior
298	Pradeep mavai	9981057846	Thatipur,gkm
299	Yash Kumar 	9630884259	Thatipur 
300	Ravi Shankar Prajapati	7869540327	Villege post Ramnai rewa
301	Yash Kumar 	9630884259	Yashpk789987@gmail.com 
302	Neelam Jayant	8602667308	B-3Jag jeevan nagar thatipur
303	Deshraj singh	9039576468	K.d enclave pinto park tanki morar gwa.
304	Yash Chourasiya 	9165323514	Indramani nagar Gwalior 
305	Yash Chourasiya 	9165323514	G-Indramani nagar Gwalior 
306	Rustam singh	9977605685	Shiv Nagar sirol road morar
307	Ravi Shankar Prajapati	7869540327	Rewa
308	Prince boudh	9685348798	Ashok colony morar Gwalior
309	Kaushal piproliya 	7610275730	34 batalian ,gwalior
310	Raazi 	9617234119	Gwalior 
311	sandeep 	7007230175	govindpuri gwalior 
312	Kaushal piproliya	7610275730	34batalian , gwalior
313	Yogendra Singh Dhakad	7354593515	Adars colony Gole ka Mandir morar gwalior
314	Jitendra 	9907881267	Jawahar ganj ganga pura dabra
315	Sonu Anand	9981407821	Tikoniya morar Gwalior (m.p.)
316	Mukul Kumar	9752690247	New rasham mill Birla nagar Gwalior
317	Imran	8840163885	Niwari tarichar kalan
318	Yash Kumar 	9630884259	Yashpk789987@gmail.com 
319	Shailendra singh	8959441658	Shri nagar colony morar gwalior
321	Pooja shakya	7089498490	Thartipur
322	Vishnu kant 	9399901271	Akhbeba 
323	Yash 	9630884259	Thatipur 
324	Yash	9765432167	Thatipur 
325	Yash 	9630884259	Thatipur 
326	Yash 	9630884259	Thatipur 
327	Saurabh 	9770228311	Thatipur 
328	Deepak matoli	7610270644	Company bagh road morar gwalior
329	Saurabh dubey 	8877665544	Yashpk789987@gmail.com 
330	Yash 	9877665533	Yashpk789987@gmail.com 
331	Narendra lodhi	7582828570	Thatipur gwalior
332	Sanjeev lodhi	9589790210	Shivpuri
333	Pankaj para	8770506217	Morena 
334	Pankaj para	7566018903	Morena 
335	Pankaj	8770506217	Morena 
336	Dashrath singh gurjar	9131512653	Bhind
337	Yugal Kishor	8878715841	PMS Boys Hostel Shri Ram Colony Jhansi Road Lashkar Gwalior MP
338	Pankaj	7566018903	Morena 
339	Pankaj para	8770506217	Uttam Pura, Morena
340	Nitin	8871221948	Gwalior
341	Lalita solanki 	8878171550	Gwalir 
342	Tanu pal	7694874615	Renhat
343	Rahul jatav	7803928657	A 14 sodharth nagar thatipur gwaior
\.


--
-- Name: enquiry__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.enquiry__id_seq', 343, true);


--
-- Data for Name: options; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.options (_id, question_id, english_text, hindi_text) FROM stdin;
\.


--
-- Name: options__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.options__id_seq', 579, true);


--
-- Name: options_english_text_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.options_english_text_seq', 1, false);


--
-- Name: options_hindi_text_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.options_hindi_text_seq', 1, false);


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.payments (_id, student_id, payment_date, payment_time, payment_type, amount, instamojo_reference_id, remark) FROM stdin;
82	146	23/10/2019	10:00	1	100		CASH
83	197	23/10/2019	10:00	1	100		CASH
84	221	23/10/2019	10:00	1	100		CASH
85	248	23/10/2019	10:00	1	100		CASH
86	474	18/10/2019	10:00	1	100		CASH
119	535	24/10/2019	11:10	1	105.00	MOJO9a24N05D60810640	{"payment_id":"MOJO9a24N05D60810640","status":"Credit","currency":"INR","amount":"105.00","buyer_name":"KRISHNA RATHORE","buyer_phone":"+919174074072","buyer_email":"rathorekrishna526@gmail.com","shipping_address":null,"shipping_city":null,"shipping_state":null,"shipping_zip":null,"shipping_country":null,"quantity":1,"unit_price":"105.00","fees":"5.10","variants":[],"custom_fields":{},"affiliate_commission":"0","payment_request":"https://www.instamojo.com/api/1.1/payment-requests/7e20ca4e98a94e4884503d267d0642bc/","instrument_type":"UPI","billing_instrument":"UPI","tax_invoice_id":"","failure":null,"payout":null,"created_at":"2019-10-24T05:32:23.122039Z"}
121	145	24/10/2019	10:00	1	100		CASH
172	699	09/11/2019	13:11	3	513	pay_DeACtroteaeyUU	{"amount":513,"payment_id":"pay_DeACtroteaeyUU"}
120	535	24/10/2019	11:10	1	105.00	MOJO9a24N05D60810640	{"payment_id":"MOJO9a24N05D60810640","status":"Credit","currency":"INR","amount":"105.00","buyer_name":"KRISHNA RATHORE","buyer_phone":"+919174074072","buyer_email":"rathorekrishna526@gmail.com","shipping_address":null,"shipping_city":null,"shipping_state":null,"shipping_zip":null,"shipping_country":null,"quantity":1,"unit_price":"105.00","fees":"5.10","variants":[],"custom_fields":{},"affiliate_commission":"0","payment_request":"https://www.instamojo.com/api/1.1/payment-requests/7e20ca4e98a94e4884503d267d0642bc/","instrument_type":"UPI","billing_instrument":"UPI","tax_invoice_id":"","failure":null,"payout":null,"created_at":"2019-10-24T05:32:23.122039Z"}
122	209	24/10/2019	10:00	1	100		CASH
123	324	24/10/2019	10:00	1	100		CASH
171	698	08/11/2019	10:11	1	105	pay_Ddj7tgw8W9hsva	{"amount":105,"payment_id":"pay_Ddj7tgw8W9hsva"}
48	209	01/09/2019	12:09	1	105.00	MOJO9901505N64704617	{"payment_id":"MOJO9901505N64704617","status":"Credit","currency":"INR","amount":"105.00","buyer_name":"Ashish Agrawal","buyer_phone":"+917566642636","buyer_email":"shshagrawal05@gmail.com","shipping_address":null,"shipping_city":null,"shipping_state":null,"shipping_zip":null,"shipping_country":null,"quantity":1,"unit_price":"105.00","fees":"5.10","variants":[],"custom_fields":{},"affiliate_commission":"0","payment_request":"https://www.instamojo.com/api/1.1/payment-requests/905a52926612482ea6f78c467f5c8ac8/","instrument_type":"NETBANKING","billing_instrument":"Domestic Netbanking Category B","tax_invoice_id":"","failure":null,"payout":null,"created_at":"2019-09-01T07:11:44.850012Z"}
50	475	06/09/2019	17:09	1	105.00	MOJO9906X05N59695494	{"payment_id":"MOJO9906X05N59695494","status":"Credit","currency":"INR","amount":"105.00","buyer_name":"Shreyansh Upreti","buyer_phone":"+917610305160","buyer_email":"shreyansh199@gmail.com","shipping_address":null,"shipping_city":null,"shipping_state":null,"shipping_zip":null,"shipping_country":null,"quantity":1,"unit_price":"105.00","fees":"5.10","variants":[],"custom_fields":{},"affiliate_commission":"0","payment_request":"https://www.instamojo.com/api/1.1/payment-requests/bc1560981f774c8d9944ef37bd071ee6/","instrument_type":"NETBANKING","billing_instrument":"Domestic Netbanking Category B","tax_invoice_id":"","failure":null,"payout":null,"created_at":"2019-09-06T12:10:26.859519Z"}
52	494	21/09/2019	19:09	1	105.00	MOJO9921D05D13827632	{"payment_id":"MOJO9921D05D13827632","status":"Credit","currency":"INR","amount":"105.00","buyer_name":"Pawan Baghel","buyer_phone":"+919926115056","buyer_email":"pawanbaghel0243@gmail.com","shipping_address":null,"shipping_city":null,"shipping_state":null,"shipping_zip":null,"shipping_country":null,"quantity":1,"unit_price":"105.00","fees":"5.10","variants":[],"custom_fields":{},"affiliate_commission":"0","payment_request":"https://www.instamojo.com/api/1.1/payment-requests/ada0fb53f38843bbbd3a5627b215edde/","instrument_type":"UPI","billing_instrument":"UPI","tax_invoice_id":"","failure":null,"payout":null,"created_at":"2019-09-21T13:36:15.709174Z"}
60	336	19/10/2019	16:10	1	105	pay_DVueXYOSnsu8D0	{"amount":105,"payment_id":"pay_DVueXYOSnsu8D0"}
61	362	20/10/2019	12:10	1	100	MOJO9a20605A51006784	{"payment_id":"MOJO9a20605A51006784","status":"Credit","currency":"INR","amount":"9.00","buyer_name":"Mohammad Irfan Khan","buyer_phone":"+917054470685","buyer_email":"irfan72360@gmail.co","shipping_address":null,"shipping_city":null,"shipping_state":null,"shipping_zip":null,"shipping_country":null,"quantity":1,"unit_price":"9.00","fees":"3.18","variants":[],"custom_fields":{},"affiliate_commission":"0","payment_request":"https://www.instamojo.com/api/1.1/payment-requests/2a7e3f0b9cff4eb18cbddda9bd881da0/","instrument_type":"CARD","billing_instrument":"Domestic Regular Debit Card (Visa/Mastercard)","tax_invoice_id":"","failure":null,"payout":null,"created_at":"2019-10-20T07:15:19.776947Z"}
74	424	19/10/2019	10:00	1	100		CASH
75	352	19/10/2019	10:00	1	100		CASH
76	344	19/10/2019	10:00	1	100		CASH
77	363	19/10/2019	10:00	1	100		CASH
78	361	19/10/2019	10:00	1	100		CASH
79	164	19/10/2019	10:00	1	100		CASH
\.


--
-- Name: payments__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.payments__id_seq', 173, true);


--
-- Data for Name: pdf_files; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.pdf_files (_id, sub_category_id, english_name, hindi_name, filename, html_file) FROM stdin;
63	16	Profit And Loss		d6c352b650e70b42b4302cc999865ad51559197282454.pdf	\N
64	15	Time and Work		a99c1b8395b3b8672e5861b1f5a12bb21559617789555.pdf	\N
65	19	H.C.F And L.C.M		b928c5f4bd2d2ffe0a60c3920c09fe4d1559617879128.pdf	\N
66	21	Ages		21e1ff8c22402b674a77546a1fb7143f1559617914703.pdf	\N
67	22	Average		95ce9a89fd67b23a9ac3a63a164b99091559617929902.pdf	\N
68	23	Mixture And Alligations		8e591e7a865f122826f7dc39c0c451f21559617950262.pdf	\N
69	25	Order And Ranking		bc4038a6daf8b9a6ab7b5366a4aabefe1559618078706.pdf	\N
70	28	Compound Interest		0a9680dd364d11950fea60344429ac021559618840277.pdf	\N
71	30	Simple Interest		3e3a80f82594c4e879453f67d901eeda1559619243877.pdf	\N
72	31	Coding And Decoding		a46de240a1b8026d93b10f379193d29b1559619939923.pdf	\N
73	34	Chain Rule		80fd42a90aa59a3419cd700433d12bbe1559620741176.pdf	\N
74	39	Speed,Distance And Time		2b8195a61e896fe5032abfce61914f701560923554917.pdf	\N
75	41	Pipes And Cisterns		5554b09cb9287d998948e44f57245ea51562330442608.pdf	\N
76	42	Time And Work  Level 2		08690a0e5d923bd20fcba20b2cc1b1e01562756498980.pdf	\N
77	17	Percentage		99c28654bd8a63b10bf0b99b83f7ada51562842661825.pdf	\N
52	24	Number System		8a3796dc386f513150a27390e8dd4d961553107231994.pdf	\N
\.


--
-- Name: pdf_files__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.pdf_files__id_seq', 79, true);


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.questions (_id, sub_category_id, english_text, hindi_text, correct_option_index, pic, type) FROM stdin;
138	15	 		1	614030fa702ea8acbcd51731be6cafe3	1
139	15	 		2	842493a4b2cbeb349377d5fd5b0698c2	1
140	15	 		3	\N	1
141	15	 		3	\N	1
142	15	 		2	98a71c0f4fc9b3522e7fc0ff14ed0015	1
143	15	  		2	\N	1
144	15	 		1	\N	1
145	15	 		2	cbe7ddf94e983e6e4cfd1873465ec9d1	1
146	15	 		1	1929017ea5b92b59df1a0dfa48547112	1
147	15	 		1	7d87b7c17525e02eea224c88ad868cac	1
148	15	 		2	ff493598129d55e6885a6ee8caa0e6f4	1
149	15	 		2	\N	1
150	15	 		2	505ca099846b5c48174b490edcc5e8bb	1
\.


--
-- Name: questions__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.questions__id_seq', 150, true);


--
-- Data for Name: result; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.result (_id, student_id, result, time_taken, test_id, incorrect, correct, skipped, totalmarks) FROM stdin;
527	171	10.50	3600	116	7	7	36	5.25
528	989	12.50	3507	116	23	12	15	6.25
529	363	34.00	3600	116	8	19	23	17
530	1208	5.50	3600	116	29	10	11	2.75
531	195	46.50	3600	116	3	24	23	23.25
532	502	14.00	3600	116	12	10	28	7
533	225	31.00	3600	116	6	17	27	15.5
534	1077	52.50	3600	116	3	27	20	26.25
535	196	27.00	3600	116	10	16	24	13.5
536	233	5.50	2861	116	37	12	1	2.75
537	1020	13.50	3600	116	29	14	7	6.75
538	1179	15.00	3600	116	34	16	0	7.5
539	1244	30.50	3574	116	23	21	6	15.25
540	151	14.00	3322	116	8	9	33	7
520	1110	53.00	5028	115	10	29	11	26.5
521	1077	77.50	5394	115	9	41	0	38.75
522	1179	19.50	5400	115	29	17	4	9.75
523	535	73.50	5400	115	5	38	7	36.75
524	1010	43.00	5148	115	22	27	1	21.5
525	196	34.00	5400	115	8	19	23	17
526	152	59.00	4353	115	14	33	3	29.5
541	535	63.50	3600	116	5	33	12	31.75
95	148	87.50	2371	57	4	36	0	35
96	195	36.25	2375	57	10	17	13	14.5
97	158	20.63	2400	57	19	13	8	8.25
98	198	10.00	2400	57	12	7	21	4
99	154	61.88	2400	57	5	26	9	24.75
100	196	2.50	2400	57	28	8	4	1
101	147	53.75	2400	57	6	23	11	21.5
102	180	42.50	2400	57	8	19	13	17
103	160	-1.25	2400	57	18	4	18	-0.5
104	152	56.88	2400	57	9	25	6	22.75
105	149	15.63	2400	57	15	10	15	6.25
106	155	23.75	2400	57	10	12	18	9.5
107	194	20.00	2301	57	4	9	27	8
108	164	45.63	2074	57	7	20	13	18.25
109	156	37.50	2400	57	16	19	5	15
110	185	30.00	2400	57	16	16	8	12
111	153	20.63	2400	57	11	11	18	8.25
112	150	28.13	2400	57	23	17	0	11.25
113	173	21.88	2400	57	17	13	10	8.75
114	193	21.25	2117	57	10	11	19	8.5
115	197	26.88	2400	57	13	14	13	10.75
116	146	59.38	2400	57	5	25	10	23.75
117	166	26.25	1808	57	22	16	2	10.5
118	203	31.87	2400	57	13	16	11	12.75
119	182	15.00	2301	57	16	10	14	6
120	145	35.63	2365	57	11	17	12	14.25
122	146	66.50	2700	58	7	35	8	33.25
123	195	58.50	2680	58	3	30	17	29.25
124	158	40.50	2700	58	15	24	11	20.25
125	149	24.00	2700	58	24	18	8	12
126	198	36.50	2700	58	15	22	13	18.25
127	147	52.00	2700	58	8	28	14	26
128	180	35.50	2700	58	13	21	16	17.75
129	196	26.50	2700	58	11	16	23	13.25
130	156	14.50	2700	58	31	15	4	7.25
131	157	33.00	2700	58	18	21	11	16.5
132	197	27.50	2700	58	21	19	10	13.75
133	162	41.50	2700	58	9	23	18	20.75
134	161	9.00	2700	58	10	7	33	4.5
135	152	61.50	2700	58	9	33	8	30.75
136	186	9.00	2700	58	10	7	33	4.5
137	230	65.50	2163	58	13	36	1	32.75
138	166	5.50	2421	58	37	12	1	2.75
139	154	72.50	2700	58	7	38	5	36.25
140	164	71.00	2690	58	6	37	7	35.5
141	228	9.50	2700	58	17	9	24	4.75
142	223	35.50	2700	58	21	23	6	17.75
143	173	36.50	2700	58	15	22	13	18.25
144	187	13.50	2700	58	9	9	32	6.75
145	229	21.00	2641	58	30	18	2	10.5
146	150	57.00	2648	58	6	30	14	28.5
147	224	6.50	2700	58	27	10	13	3.25
148	221	43.50	2688	58	13	25	12	21.75
149	151	21.00	2700	58	22	16	12	10.5
150	203	46.50	2687	58	11	26	13	23.25
153	148	47.50	2400	60	8	21	11	19
154	158	27.50	2400	60	4	12	24	11
155	155	19.38	2400	60	17	12	11	7.75
156	146	48.75	2400	60	10	22	8	19.5
157	147	29.38	2400	60	13	15	12	11.75
158	162	23.13	2400	60	11	12	17	9.25
159	198	22.50	2400	60	8	11	21	9
160	157	16.88	2400	60	13	10	17	6.75
161	161	5.00	2400	60	4	3	33	2
162	149	20.00	2400	60	12	11	17	8
163	197	4.38	2400	60	17	6	17	1.75
164	249	12.50	2399	60	8	7	25	5
165	248	6.88	2394	60	13	6	21	2.75
166	228	13.75	2400	60	22	11	7	5.5
167	195	21.88	2400	60	5	10	25	8.75
168	154	49.38	2400	60	9	22	9	19.75
169	150	22.50	2387	60	12	12	16	9
170	156	11.88	2400	60	13	8	19	4.75
171	233	4.38	2070	60	29	9	2	1.75
172	221	20.63	2400	60	7	10	23	8.25
173	151	18.75	2400	60	10	10	20	7.5
174	152	13.75	2142	60	18	10	12	5.5
175	246	5.63	2400	60	7	4	29	2.25
176	173	13.13	2400	60	11	8	21	5.25
177	164	34.38	2400	60	5	15	20	13.75
178	234	0.00	2400	60	16	4	20	0
179	147	30.25	3750	61	35	39	26	30.25
180	204	20.00	4000	61	64	36	0	20
181	160	18.75	3968	61	65	35	0	18.75
182	149	23.50	4500	61	26	30	44	23.5
183	246	9.00	4500	61	28	16	56	9
184	164	40.25	4500	61	27	47	26	40.25
185	150	25.50	4500	61	18	30	52	25.5
186	162	25.00	4500	61	36	34	30	25
187	198	19.25	4500	61	27	26	47	19.25
188	156	14.25	4500	61	43	25	32	14.25
189	158	30.50	4377	61	34	39	27	30.5
190	155	19.25	4500	61	39	29	32	19.25
191	233	21.75	4500	61	33	30	37	21.75
192	230	13.75	3377	61	49	26	25	13.75
223	146	53.33	2700	63	4	25	16	24
224	274	44.44	2700	63	8	22	15	20
225	158	39.44	2700	63	5	19	21	17.75
226	148	74.44	2700	63	2	34	9	33.5
227	162	15.56	2700	63	12	10	23	7
228	198	18.33	2700	63	7	10	28	8.25
229	320	11.11	2700	63	4	6	35	5
230	197	15.00	2700	63	9	9	27	6.75
231	147	38.33	2700	63	3	18	24	17.25
232	161	12.22	2700	63	2	6	37	5.5
233	164	43.89	2700	63	5	21	19	19.75
234	228	21.67	2700	63	21	15	9	9.75
235	321	30.00	2700	63	18	18	9	13.5
236	155	10.00	2700	63	14	8	23	4.5
237	159	2.22	2700	63	16	5	24	1
238	256	28.89	2700	63	8	15	22	13
239	223	21.11	2700	63	10	12	23	9.5
240	203	26.11	2700	63	9	14	22	11.75
241	230	33.89	2684	63	11	18	16	15.25
242	154	42.22	2700	63	4	20	21	19
243	248	5.00	2411	64	16	6	18	2
244	161	-6.25	2406	64	22	3	15	-2.5
245	228	-6.25	2474	64	30	5	5	-2.5
246	146	81.25	2700	64	2	33	5	32.5
247	148	70.00	2700	64	4	29	7	28
248	158	73.75	2700	64	2	30	8	29.5
249	273	28.13	2700	64	3	12	25	11.25
250	195	64.38	2700	64	1	26	13	25.75
251	333	23.75	2700	64	6	11	23	9.5
252	155	45.00	2700	64	8	20	12	18
253	147	43.13	2700	64	11	20	9	17.25
254	246	11.25	2700	64	6	6	28	4.5
255	196	6.25	2700	64	18	7	15	2.5
256	154	42.50	2700	64	4	18	18	17
257	197	16.25	2700	64	14	10	16	6.5
258	151	3.75	2692	64	18	6	16	1.5
259	324	18.13	2700	64	15	11	14	7.25
260	230	55.63	2700	64	11	25	4	22.25
261	159	11.88	2700	64	9	7	24	4.75
262	271	36.88	2700	64	5	16	19	14.75
263	197	30.10	2914	65	17	19	13	14.75
264	233	-8.16	2711	65	40	6	3	-4
265	158	53.06	2943	65	12	29	8	26
266	248	12.76	2875	65	7	8	34	6.25
267	353	3.06	3501	65	38	11	0	1.5
268	274	61.73	3600	65	11	33	5	30.25
269	307	20.92	3600	65	3	11	35	10.25
270	148	85.71	3600	65	4	43	2	42
271	196	23.47	3600	65	10	14	25	11.5
272	195	32.65	3600	65	12	19	18	16
273	155	15.82	3600	65	21	13	15	7.75
274	146	65.82	3600	65	7	34	8	32.25
275	352	26.02	3600	65	5	14	30	12.75
276	154	59.18	3600	65	8	31	10	29
277	324	23.47	3600	65	22	17	10	11.5
278	344	12.24	3600	65	12	9	28	6
279	266	5.61	3584	65	37	12	0	2.75
280	228	1.53	3600	65	29	8	12	0.75
281	221	43.37	3571	65	11	24	14	21.25
282	161	9.69	3600	65	5	6	38	4.75
283	223	23.47	2925	65	14	15	20	11.5
284	151	38.27	3383	65	5	20	24	18.75
285	256	55.61	3561	65	7	29	13	27.25
286	322	30.10	3375	65	21	20	8	14.75
287	333	24.49	3600	65	8	14	27	12
288	354	16.33	3600	65	12	11	26	8
289	155	38.50	2700	66	7	21	22	19.25
290	146	52.50	2700	66	7	28	15	26.25
291	307	19.00	2700	66	2	10	38	9.5
292	274	52.00	2700	66	8	28	14	26
293	364	14.00	2700	66	4	8	38	7
294	195	50.00	2700	66	4	26	20	25
295	350	22.50	2700	66	11	14	25	11.25
296	147	53.00	2700	66	6	28	16	26.5
297	361	15.50	2700	66	13	11	26	7.75
298	160	20.50	2700	66	31	18	1	10.25
299	320	18.50	2700	66	7	11	32	9.25
300	221	27.50	2700	66	9	16	25	13.75
301	196	6.50	2700	66	19	8	23	3.25
302	198	21.50	2700	66	9	13	28	10.75
303	344	20.50	2700	66	7	12	31	10.25
304	333	21.00	2700	66	6	12	32	10.5
305	162	34.50	2700	66	11	20	19	17.25
306	161	3.50	2700	66	5	3	42	1.75
307	362	30.50	2700	66	7	17	26	15.25
308	378	0.50	2700	66	11	3	36	0.25
309	228	3.50	2700	66	17	6	27	1.75
310	380	51.00	2700	66	14	29	7	25.5
311	240	18.00	2700	66	8	11	31	9
312	266	3.50	2700	66	33	10	7	1.75
313	352	29.00	2700	66	2	15	33	14.5
314	271	50.50	2700	66	11	28	11	25.25
315	377	-0.50	2604	66	13	3	34	-0.25
316	264	41.00	2700	66	6	22	22	20.5
317	164	49.50	2700	66	9	27	14	24.75
318	354	23.00	2700	66	6	13	31	11.5
319	246	43.50	2700	66	5	23	22	21.75
320	256	43.00	2700	66	10	24	16	21.5
321	223	29.00	2700	66	18	19	13	14.5
322	148	68.00	2700	66	8	36	6	34
323	322	29.50	2700	66	13	18	19	14.75
324	151	45.50	2700	66	5	24	21	22.75
325	230	42.50	2692	66	15	25	10	21.25
326	197	33.00	2636	66	18	21	11	16.5
327	384	16.00	2700	66	4	9	37	8
328	154	30.50	2700	66	11	18	21	15.25
329	233	3.33	2092	67	20	6	4	1
330	385	6.67	2172	67	20	7	3	2
331	274	34.17	2700	67	11	13	6	10.25
332	161	15.00	2700	67	6	6	18	4.5
333	164	40.00	2245	67	8	14	8	12
334	148	69.17	2700	67	5	22	3	20.75
335	154	45.83	2700	67	5	15	10	13.75
336	363	16.67	2700	68	14	11	20	7.5
337	274	43.89	2700	68	9	22	14	19.75
338	146	62.22	2700	68	8	30	7	28
339	153	5.56	2700	68	6	4	35	2.5
340	148	60.56	2700	68	3	28	14	27.25
341	361	41.11	2700	68	2	19	24	18.5
342	362	38.89	2700	68	10	20	15	17.5
343	385	27.78	2700	68	14	16	15	12.5
344	164	40.56	2700	68	3	19	23	18.25
345	344	17.22	2700	68	5	9	31	7.75
346	352	20.56	2700	68	7	11	27	9.25
347	248	13.89	2700	68	11	9	25	6.25
348	161	11.11	2700	68	8	7	30	5
349	424	9.44	2700	68	7	6	32	4.25
350	164	25.62	2700	69	3	11	26	10.25
351	327	18.13	2700	69	7	9	24	7.25
352	385	1.88	2090	69	29	8	3	0.75
353	363	32.50	2700	69	16	17	7	13
354	146	30.00	2700	69	4	13	23	12
355	399	11.88	2700	69	5	6	29	4.75
356	147	31.25	2336	69	22	18	0	12.5
357	324	25.00	2700	69	8	12	20	10
358	362	28.13	2700	69	7	13	20	11.25
359	361	26.88	2700	69	5	12	23	10.75
360	272	33.13	2342	69	11	16	13	13.25
361	146	52.50	2400	70	5	17	8	15.75
362	147	45.83	2400	70	9	16	5	13.75
363	164	50.83	2400	70	7	17	6	15.25
364	352	14.17	2400	70	3	5	22	4.25
365	363	36.67	2400	70	8	13	9	11
366	401	10.00	2400	70	4	4	22	3
367	324	18.33	2400	70	10	8	12	5.5
368	385	25.83	2400	70	13	11	6	7.75
369	361	22.50	2400	70	5	8	17	6.75
370	274	49.17	2383	70	5	16	9	14.75
371	248	28.33	2400	70	2	9	19	8.5
372	344	0.83	2400	70	7	2	21	0.25
373	196	2.50	2400	70	13	4	13	0.75
374	362	38.33	2400	70	10	14	6	11.5
375	155	20.83	2400	70	7	8	15	6.25
376	158	53.33	2400	70	4	17	9	16
377	151	14.17	2400	70	7	6	17	4.25
378	195	57.50	2400	70	3	18	9	17.25
379	272	65.00	2400	70	2	20	8	19.5
380	401	8.13	2699	71	19	8	13	3.25
381	158	30.63	2719	71	7	14	19	12.25
382	155	36.88	2851	71	9	17	14	14.75
383	274	46.25	2886	71	10	21	9	18.5
384	197	8.75	2645	71	22	9	9	3.5
385	248	13.75	2825	71	10	8	22	5.5
386	164	36.88	2963	71	9	17	14	14.75
387	352	10.63	3000	71	3	5	32	4.25
388	344	18.75	3000	71	6	9	25	7.5
389	362	35.63	2730	71	7	16	17	14.25
390	361	33.13	2966	71	7	15	18	13.25
391	399	17.50	3000	71	8	9	23	7
392	416	79.17	1802	56	5	25	0	23.75
393	362	55.83	1805	56	9	19	2	16.75
394	361	60.00	2179	56	4	19	7	18
395	274	57.50	1860	56	7	19	4	17.25
396	344	62.50	2178	56	5	20	5	18.75
397	197	25.00	1830	56	18	12	0	7.5
398	352	23.75	2700	72	2	10	28	9.5
399	155	23.13	2700	72	11	12	17	9.25
400	158	39.38	2700	72	5	17	18	15.75
401	164	46.88	2700	72	5	20	15	18.75
402	147	43.75	2700	72	6	19	15	17.5
403	416	38.75	2583	72	6	17	17	15.5
404	363	30.63	2700	72	11	15	14	12.25
405	361	28.75	2700	72	6	13	21	11.5
406	362	34.38	2652	72	9	16	15	13.75
407	363	37.50	1801	56	15	15	0	11.25
408	146	52.50	2700	72	4	22	14	21
409	344	35.63	2055	72	3	15	22	14.25
410	352	20.00	2400	56	4	7	19	6
411	272	72.50	2700	72	4	30	6	29
412	272	82.50	1868	56	1	25	4	24.75
413	401	37.50	1801	56	11	14	5	11.25
414	523	39.75	5400	73	29	47	24	39.75
415	506	49.25	5400	73	31	57	12	49.25
416	521	49.25	5400	73	23	55	22	49.25
417	496	43.25	5400	73	27	50	23	43.25
418	344	36.75	5400	73	33	45	22	36.75
419	482	34.50	5400	73	22	40	38	34.5
420	526	23.75	5400	73	41	34	25	23.75
421	509	45.25	5400	73	23	51	26	45.25
422	528	30.75	5400	73	17	35	48	30.75
423	516	23.25	5389	73	47	35	18	23.25
424	510	20.00	5387	73	36	29	35	20
425	500	12.75	5400	73	49	25	26	12.75
426	497	55.75	5400	73	21	61	18	55.75
427	527	12.00	5400	73	56	26	18	12
428	477	40.75	5400	73	33	49	18	40.75
429	367	21.75	5400	73	61	37	2	21.75
430	164	25.50	4267	73	30	33	37	25.5
431	155	26.25	4066	73	31	34	35	26.25
432	363	37.00	4097	73	32	45	23	37
433	361	24.50	5400	73	30	32	38	24.5
434	352	22.00	5400	73	24	28	48	22
435	197	37.50	2712	74	16	19	5	15
436	146	90.63	2997	74	3	37	0	36.25
437	274	51.25	2813	74	10	23	7	20.5
438	416	90.63	2704	74	3	37	0	36.25
439	362	72.50	2722	74	4	30	6	29
440	424	24.38	3052	74	5	11	24	9.75
441	248	41.25	2782	74	6	18	16	16.5
442	361	70.00	2834	74	4	29	7	28
443	336	25.00	2400	60	12	13	15	10
444	352	56.88	3600	74	1	23	16	22.75
445	344	46.88	3600	74	5	20	15	18.75
446	158	20.63	2809	74	11	11	18	8.25
447	164	64.38	2708	74	5	27	8	25.75
448	401	13.75	2700	74	18	10	12	5.5
449	221	35.63	2791	74	15	18	7	14.25
450	344	27.50	2400	60	8	13	19	11
451	272	88.13	2707	74	3	36	1	35.25
452	363	40.91	2700	75	14	17	2	13.5
453	362	59.09	2700	75	10	22	1	19.5
454	361	59.85	2679	75	9	22	2	19.75
455	164	70.00	3066	76	4	29	7	28
456	344	46.88	2700	75	1	19	20	18.75
457	424	22.50	2529	75	4	10	26	9
458	352	23.13	2700	75	11	12	17	9.25
459	352	16.88	3600	76	5	8	27	6.75
460	361	40.63	3600	76	7	18	15	16.25
461	362	40.63	3581	76	7	18	15	16.25
462	344	25.62	3600	76	3	11	26	10.25
463	164	44.38	2154	75	9	20	11	17.75
464	363	48.75	3600	76	10	22	8	19.5
467	362	66.43	3532	78	7	25	3	23.25
468	535	16.88	2700	79	5	8	27	6.75
469	363	39.38	2700	79	9	18	13	15.75
470	362	43.13	2700	79	7	19	14	17.25
471	164	73.75	2700	79	6	31	3	29.5
472	344	28.57	3600	78	4	11	20	10
473	361	80.71	3136	78	3	29	3	28.25
474	344	51.88	2334	79	5	22	13	20.75
475	352	56.43	3600	78	1	20	14	19.75
476	164	60.71	3024	78	3	22	10	21.25
477	363	49.64	6000	112	5	36	29	34.75
478	158	48.00	3600	113	8	26	16	24
479	533	30.00	4601	112	24	27	19	21
480	362	78.00	3600	113	4	40	6	39
481	363	50.00	3600	113	8	27	15	25
482	361	61.07	6000	112	9	45	16	42.75
483	344	60.00	5940	112	4	43	23	42
484	344	29.50	3600	113	5	16	29	14.75
485	363	76.43	3190	78	5	28	2	26.75
486	350	29.38	2729	76	13	15	12	11.75
487	494	23.75	2700	79	2	10	28	9.5
488	527	19.29	6000	112	14	17	39	13.5
489	361	43.75	2700	79	2	18	20	17.5
490	616	13.13	1936	79	27	12	1	5.25
491	718	21.25	2400	79	14	12	14	8.5
492	384	6.88	2400	79	5	4	31	2.75
493	477	20.63	2400	79	7	10	23	8.25
494	521	30.63	2400	79	7	14	19	12.25
495	160	12.50	4509	112	49	21	0	8.75
496	164	66.07	4519	112	7	48	15	46.25
497	582	22.50	2203	79	12	12	16	9
498	482	40.63	2400	79	3	17	20	16.25
499	498	33.75	1959	79	6	15	19	13.5
500	725	36.88	2147	79	9	17	14	14.75
501	737	55.00	2400	79	8	24	8	22
502	496	51.25	2400	79	6	22	12	20.5
503	735	14.37	2400	79	9	8	23	5.75
504	363	91.25	3600	114	2	37	1	36.5
505	162	38.75	3600	114	18	20	2	15.5
506	164	91.25	2963	114	2	37	1	36.5
507	582	49.38	3600	114	9	22	9	19.75
508	361	88.75	2947	114	2	36	2	35.5
509	158	68.75	2806	114	6	29	5	27.5
510	533	60.62	3306	114	7	26	7	24.25
511	362	87.50	2716	114	4	36	0	35
512	494	41.88	3600	114	5	18	17	16.75
513	344	45.63	3600	114	7	20	13	18.25
514	221	38.13	2707	114	19	20	1	15.25
515	582	20.56	2700	68	15	13	17	9.25
516	614	23.89	2700	68	5	12	28	10.75
517	614	16.25	2700	69	6	8	26	6.5
518	533	56.67	2700	68	2	26	17	25.5
\.


--
-- Name: result__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.result__id_seq', 541, true);


--
-- Name: result_correct_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.result_correct_seq', 1, false);


--
-- Name: result_incorrect_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.result_incorrect_seq', 1, false);


--
-- Name: result_skipped_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.result_skipped_seq', 1, false);


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys  FROM stdin;
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.student (_id, name, fb_id, fb_pic, google_id, google_name, fb_json, google_pic, email_id, password, valid, login_type, push_notification_token, pdf_allowed, online_test_allowed, offline_test_allowed, payment_status) FROM stdin;
1251	Aditya Gupta	\N	\N	114933378902869167536	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCh6r1GMCQet_0c5oeyH0gRaU4bcciaynI4iCN5Uw=s96-c	adityagupta2411@gmail.com	\N	true	google_login	\N	true	false	false	false
1253	kuntal chaturvedi	\N	\N	114510500898817332776	\N	\N	https://lh5.googleusercontent.com/-x74IuOCVaCA/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3resa3fy8YOfJWoCRnARdQPcllR12g/s96-c/photo.jpg	kuntalchaturvedi05@gmail.com	\N	true	google_login	\N	true	false	false	false
1256	Dh. Sengar	\N	\N	104968838010508442604	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDuJmpiTAnCVKJAg2YSCi5JkU7fWDdE4JY1xmza=s96-c	dhsengar780@gmail.com	\N	true	google_login	\N	true	false	false	false
1257	Dheeraj Chaudhary	\N	\N	114248210191885317794	\N	\N	https://lh5.googleusercontent.com/-_cu9YSRNFPM/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3reJPhOxE7FOVWvDthWsp1a-nB2-gg/s96-c/photo.jpg	chaudharydheeraj533@gmail.com	\N	true	google_login	\N	true	false	false	false
1258	Your question My answer	\N	\N	104469759223752005621	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCRm0aLy1xoTBCTdm5hGHQF0lfCO3YtcDGZTl7K=s96-c	jadounajay3@gmail.com	\N	true	google_login	\N	true	false	false	false
1261	Rocky Palash	\N	\N	109105698173334448558	\N	\N	https://lh5.googleusercontent.com/-vd29ehHwiNM/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfRqUG8Z6btflSr7T1UF2QmdHCjbQ/s96-c/photo.jpg	rockysinghpalash.rp@gmail.com	\N	true	google_login	\N	true	false	false	false
498	Pankaj para	\N	\N	112336026624840173438	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBXYyzLAgC-8m6BbRCM1cvq95u1GTQMC7JM7Anhuw=s96-c	pankajpara39@gmail.com	\N	true	google_login	\N	true	true	true	false
1263	RAHUL JATAV	\N	\N	114416509375217059316	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDdx5_vqmphc8zllZbk8xMS3q8Afv-5iAQlTqap	rahuljatav419@gmail.com	\N	true	google_login	\N	true	false	false	false
1265	shivakant sharma	\N	\N	102696959505493014773	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDdzCO9CGML-4VLfNXVwRkFcculubMu1Uvzp4FJ=s96-c	shivakantsharma373@gmail.com	\N	true	google_login	\N	true	false	false	false
1266	KAUSHAL KISHOR	\N	\N	114350521166601436134	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mA_CeAsvUVujpUYPspWf1yUtzZYUymuf6wZIrZ3gA=s96-c	kishorkoushal007@gmail.com	\N	true	google_login	\N	true	false	false	false
1182	RAM SEVAK RAWAT	\N	\N	110768006350902371369	\N	\N	https://lh3.googleusercontent.com/-I77xMbf80j0/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rePDFbWsl-Dl-u4dMl3Rt33vJidlw/s96-c/photo.jpg	ramsevakrawat1991@gmail.com	\N	true	google_login	\N	true	true	false	false
1185	Ænurag Tomar	2509196439344364	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2509196439344364&height=272&width=384&ext=1581586565&hash=AeRdaA19a2qAe8gZ	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	false	false
1191	Rahul Kaurav	815828215558696	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=815828215558696&height=272&width=384&ext=1582038094&hash=AeQr8sCA1HUuKhvV	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	false	false
1193	Sushant Yadav	\N	\N	103172937250293906996	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDp1ooapHQKikh9kkN0xifitnvo32lU18zOPE94=s96-c	pimg.sushant@gmail.com	\N	true	google_login	\N	true	true	false	false
1194	Rahul Argal	516434842300674	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=516434842300674&height=272&width=384&ext=1582171475&hash=AeS9reZyHKrJfOlR	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	false	false
1221	SONAM DEVI YADAV	\N	\N	100415419669749670689	\N	\N	https://lh6.googleusercontent.com/--ks3kVKsRTI/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdl2q6EnGxp3n9XkIwpFewpC3cEyg/s96-c/photo.jpg	sonamyadav24599@gmail.com	\N	true	google_login	\N	true	true	false	false
1223	Kuldeep Parihar	2422160664765398	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2422160664765398&height=272&width=384&ext=1582213404&hash=AeTmkxa8kJ_4uOS-	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	false	false
1180	Upendra Rajawat	\N	\N	107759302384163107465	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBkrq-spcXInVZM3Vova3JEgdLFFrygzIxNUti-=s96-c	upendrarajawat541@gmail.com	\N	true	google_login	\N	true	true	false	false
1113	jitendra Khare	\N	\N	115310134331895359480	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDlv80_vE_jAxxe8OL2RNQNiBnUswuiAkUUdecl=s96-c	jitendrakhare11@gmail.com	\N	true	google_login	\N	true	true	true	false
1232	ankesh meena	\N	\N	113621050549716368100	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mA6Gk-n-C48aMpEdI33_ChhoSpiFw7ETl_yB8Fp0w=s96-c	ankeshmeena917@gmail.com	\N	true	google_login	\N	true	true	false	false
1268	ganesh sharma	\N	\N	102373602847204271355	\N	\N	https://lh5.googleusercontent.com/-3uZb92mxjnA/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rf4e-dHPypjAuDDNp8Ul0pxtjjxbQ/s96-c/photo.jpg	ganeshsharma7229@gmail.com	\N	true	google_login	\N	true	false	false	false
1269	AJIT GURJAR	\N	\N	118444805686709695387	\N	\N	https://lh5.googleusercontent.com/-yACw0L5WDfY/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdTcVd9em0guBLveFFiykltCxD5JQ/s96-c/photo.jpg	a8435331307@gmail.com	\N	true	google_login	\N	true	false	false	false
1109	Sadhna Diwakar	\N	\N	107096476414268033946	\N	\N	https://lh3.googleusercontent.com/-FyIu8L136LE/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdAZp9adbVpn_TgJ2-XT_hNnQ2wqw/s96-c/photo.jpg	sadhnadiwakar186@gmail.com	\N	true	google_login	\N	true	true	true	false
1238	Elkar Singh Indoliya	\N	\N	102456223701646161609	\N	\N	https://lh6.googleusercontent.com/--T__LHxyUuY/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfG0gEZwlF5KVC0JFMJszJpo48DAQ/s96-c/photo.jpg	elkarsinghindoliya02081@gmail.com	\N	true	google_login	\N	true	true	false	false
1100	Rohit Tyagi	\N	\N	103814842034174876074	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBND8tzMtZoDwVL_PbrpJfDSAUmDIcibjg0Z9RY=s96-c	sumit2396sharma@gmail.com	\N	true	google_login	\N	true	true	true	false
1264	likes	\N	\N	117039600718992189894	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBf1TfBWb64pef1lgXbK3duxv6qFW7W2dWLqSfU=s96-c	vihari286@gmail.com	\N	true	google_login	\N	true	false	false	false
1267	Virendra Palash	\N	\N	106822195451365671617	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDNNmJcS6bSN18aQ_lIRaf7JbxikA149XYK9UETcQ=s96-c	vpalash20@gmail.com	\N	true	google_login	\N	true	false	false	false
1244	ashish sharma seondha	\N	\N	105172855886090193179	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCApxLiUY-9TigeeF6KQAaUOBFClASm6v62zc4IKg=s96-c	ashishpanditseondha@gmail.com	\N	true	google_login	\N	true	true	false	false
953	Nuage Laboratoire	\N	\N	105715315432394102054	\N	\N	https://lh3.googleusercontent.com/-3qsDJK2MYTM/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcJ8dId-DpX6sqr8wlh9qxOOexocw/s96-c/photo.jpg	M4TBRQ4ZV2DA5BZAD37VUXMVBE-00@cloudtestlabaccounts.com	\N	true	google_login	\N	true	true	true	false
1183	sonu rathor	\N	\N	116821384353188069104	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBQzb5XnOivb-yv5ro3EwI0zw3s_r-TFRr6eBOq=s96-c	sonurathor357@gmail.com	\N	true	google_login	\N	true	true	false	false
1110	PRADEEP TYAGI	\N	\N	103795930488644208513	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mB6Qflh66kkc4MngDtCzsuYl8GOM3teM9GyFVjO=s96-c	babapiddityagi2002@gmail.com	\N	true	google_login	\N	true	true	true	false
1086	Nirmala Sharma	581175762427665	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=581175762427665&height=272&width=384&ext=1582108514&hash=AeTu7vywgiuasp0i	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
166	Deepak Dandotiya	null	null	null	null	null	null	deepakdandotiya121@gmail.com	dandotiya123	true	custom_login	\N	true	true	true	false
1103	Deepak Rathor	2426662497663812	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2426662497663812&height=272&width=384&ext=1580405894&hash=AeSWEeYl07EXMivq	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1112	Niranjan Singh Gurjar	\N	\N	115973120944864997422	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBGRTQ79IsRCKUrvgc2hMrbdw9m3Im0R6A8EBIo=s96-c	niranjansinghgurjar9@gmail.com	\N	true	google_login	\N	true	true	true	false
1132	Lalita Nagar	\N	\N	109815948167637705961	\N	\N	https://lh6.googleusercontent.com/-dSf-AlpXYz4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdLUcf5Mbx1foqZmghY1EU188hZbQ/s96-c/photo.jpg	nagarlalita712@gmail.com	\N	true	google_login	\N	true	true	true	false
1167	Shilpi Chauhan	\N	\N	104907766579741440665	\N	\N	https://lh4.googleusercontent.com/-Di7KGlUTU08/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfhtmeartgvQar6OanKCJqa3CtxmQ/s96-c/photo.jpg	chauhanbaleshri@gmail.com	\N	true	google_login	\N	true	true	true	false
754	Shailendra Singh	1715904085207103	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1715904085207103&height=150&width=200&ext=1576951125&hash=AeRANzuP6ltNu9_6	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1196	Jeetendra Kumar	1661061294035654	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1661061294035654&height=272&width=384&ext=1582112428&hash=AeQvtz5nFY8Jkl03	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	false	false
1216	Anuj kushwaha	\N	\N	116235890849131700347	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBUvlreGoWjXvV1p3KTIrs9iAVTN7mU-yQSIjux=s96-c	kushwahaanuj457@gmail.com	\N	true	google_login	\N	true	true	false	false
1111	AJAY gurjar	\N	\N	110089832796769382816	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mA9AqouM-Rd_-Mz6vh57Pbyz_wvOqlGS7tSnQVb=s96-c	ajaygurjar143143@gmail.com	\N	true	google_login	\N	true	true	true	false
1229	RAHUL KAUSHAL	\N	\N	106403334647132262767	\N	\N	https://lh5.googleusercontent.com/-8C1sEhJ2QHg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcR7k4j4LUtrrmwjH3GT617Ov3q5A/s96-c/photo.jpg	rahulkaushal764@gmail.com	\N	true	google_login	\N	true	true	false	false
1098	Nirmala Indoriya	\N	\N	100938362526035027705	\N	\N	https://lh3.googleusercontent.com/--5bdq-9dE_E/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rd4-XNxQoLTj0cA_Ciq172mSIDqQQ/s96-c/photo.jpg	indoriyanirmala@gmail.com	\N	true	google_login	\N	true	true	true	false
928	DASHRATH GURJAR	\N	\N	102380530157860136311	\N	\N	null	dashrathgurjar64@gmail.com	\N	true	google_login	\N	true	true	true	false
1208	NEERAJ SHARMA	\N	\N	117044378769752759300	\N	\N	https://lh5.googleusercontent.com/-hIHE1pIugdQ/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcvhiZ0IVC506havTOLNvxAfAOf6g/s96-c/photo.jpg	neerajsharmagohad9@gmail.com	\N	true	google_login	\N	true	true	false	false
1209	Ankit sisodiya	\N	\N	115748963127457811618	\N	\N	https://lh5.googleusercontent.com/-a2a56-7uOlc/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rc4G5jMVfdGfjHpRALTp4X6LatZKQ/s96-c/photo.jpg	sisodiyaankit101@gmail.com	\N	true	google_login	\N	true	true	false	false
1218	Raj Kushwah	\N	\N	110959843019324960103	\N	\N	https://lh4.googleusercontent.com/-7yps_BJ2QNg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcOy_Mjn6ZjqZGojtH4KmAzAbLZgg/s96-c/photo.jpg	rajkush1001@gmail.com	\N	true	google_login	\N	true	true	false	false
744	Raazi sagar	\N	\N	114598367063032084345	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAWM1ptjzELDPP_rNk46_jlQ-OPDrMwvvYE3oSv=s96-c	raazisagar876@gmail.com	\N	true	google_login	\N	true	true	true	false
698	Yash Kumar	179097639724111	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=179097639724111&height=272&width=384&ext=1582514327&hash=AeT3tCo9UGZuriZF	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
363	Sumit Bhadouriya	909662076047839	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=909662076047839&height=272&width=384&ext=1580471208&hash=AeQX-X8cCmyyZDEX	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1073	Arvind Kumar	\N	\N	105341742601782858229	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mATm6mXhCzn82sgXWze8lmiaSgH8hzTLw337GqT=s96-c	arvind9165985824@gmail.com	\N	true	google_login	\N	true	true	true	false
1168	Surendra Nagar	2210411245934410	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2210411245934410&height=272&width=384&ext=1581163560&hash=AeTsgFHRXX9WoXga	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1171	Omkar Thakur	568048157379520	https://scontent.xx.fbcdn.net/v/t31.0-1/c28.0.452.320a/p320x320/10733713_10150004552801937_4553731092814901385_o.jpg?_nc_cat=1&_nc_ohc=dIRbMy-welwAQkttPmAIaiKwCtX5aeTA1FM4nJubfGUdHyam8Up_BKCYQ&_nc_ht=scontent.xx&_nc_tp=1&oh=43794c5a2f389078c10dfae1ca551151&oe=5EDB7539	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
500	Devendra Mittal	943811519312874	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=943811519312874&height=272&width=384&ext=1581243336&hash=AeRPE1VBD99n1N2U	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
783	DEEPAK MATOLI	\N	\N	109075180990586563078	\N	\N	null	deepak.786matoli@gmail.com	\N	true	google_login	\N	true	true	true	false
1101	Amar singh Rathor	\N	\N	104415152286781908111	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCFOi3Svuqqv7YmTNzY0pLUlwhA6ZlVJMHcAMe-=s96-c	rathoreamarsingh395@gmail.com	\N	true	google_login	\N	true	true	true	false
1070	Àñkît Küshwàh	1015001688860190	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1015001688860190&height=272&width=384&ext=1580036206&hash=AeR-uPAHoETlJDKw	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1102	knowledge pools	\N	\N	108288054266116687991	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mARRfqKK29kZoELD7kfUUGVCIKOL-T8KvffAomBPQ=s96-c	amarkannojiya2@gmail.com	\N	true	google_login	\N	true	true	true	false
1077	Nitin Arya	1422981594526601	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1422981594526601&height=150&width=200&ext=1580105481&hash=AeRLWAMfrjDvvRBJ	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1108	LAVKUSH GURJAR	\N	\N	102381539556802854186	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBdjFJHET1HEYuakcOPtgfp2D2EsonzfIf-gtxF6g=s96-c	gurjarlavkush045@gmail.com	\N	true	google_login	\N	true	true	true	false
157	Sonu Anand	2462799700618490	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2462799700618490&height=272&width=384&ext=1581944989&hash=AeTjARzaLv70yd0r	\N	\N	\N	\N	\N	\N	true	fb_login	ExponentPushToken[g0lqMBCJa56RuQmPPxoH06]	true	true	true	false
1084	Santosh Kumar Morya	1612016748940396	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1612016748940396&height=272&width=384&ext=1580135213&hash=AeQI_BWsybc61Tss	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1079	Bhuvi Singh	\N	\N	105308945395427050511	\N	\N	https://lh5.googleusercontent.com/-Eejupj5jrmE/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3reFN_97gq4H0eF7ueu1G0RNlwRKqw/s96-c/photo.jpg	bhuvisingh100@gmail.com	\N	true	google_login	\N	true	true	true	false
967	Dharmendra Sahu	578850039535044	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=578850039535044&height=272&width=384&ext=1578631064&hash=AeQtJseIlKWAAohy	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
974	Kapil Sharma	\N	\N	109665779914722763102	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAmiabu_MzxD0Y3DGREB2IUiqD5w-9sqhfsqsqlcw=s96-c	sharmakapil1204@gmail.com	\N	true	google_login	\N	true	true	true	false
978	Ashish Parihar	766858563818519	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=766858563818519&height=272&width=384&ext=1578711706&hash=AeQ6zCfewHSGofug	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1211	Kaamini Raikwar	881280128956304	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=881280128956304&height=272&width=384&ext=1582122233&hash=AeSte9ecpvxkQJ9i	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	false	false
983	Sarbesh Goyal	576974496411947	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=576974496411947&height=272&width=384&ext=1578743373&hash=AeRMnlKHy3KXT_85	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
161	Akshit Arora	451333982284484	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=451333982284484&height=150&width=200&ext=1561430231&hash=AeTPajBhuhTWGNiB	\N	\N	\N	\N	\N	\N	true	fb_login	ExponentPushToken[8M3eNxFhmjvtgJbFf3R7O3]	true	true	true	false
735	Yash Chourasiya	2589644541315657	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2589644541315657&height=150&width=200&ext=1576236110&hash=AeSsvsNYgGQZ-aM5	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
748	Yogendra Singh Dhakad	\N	\N	102219833385249139076	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDb0xfpVIvoUZNxcO6qeHVDEs-LjW3fwG5i46zRNg	yogendrasing008@gmail.com	\N	true	google_login	\N	true	true	true	false
1078	Parmal Milan	1300753380133055	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1300753380133055&height=272&width=384&ext=1580428929&hash=AeTshdbC_UOzbDsU	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1105	Ranju Verma	\N	\N	103229072317066961524	\N	\N	https://lh6.googleusercontent.com/-a6SW66QBRmI/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rf-MNh5MXHRVbxFKm9fsHa9NCfOgA/s96-c/photo.jpg	vermaranju887@gmail.com	\N	true	google_login	\N	true	true	true	false
1129	Vipin Pavaiya	661590647708439	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=661590647708439&height=272&width=384&ext=1581008212&hash=AeRitdkTuTVkshS6	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1117	Narinder Kumar	\N	\N	105856052775160418445	\N	\N	https://lh6.googleusercontent.com/-fUGidZzWvgk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3re1zQeFG8XANXRpjVzBYyWAESb7Lg/s96-c/photo.jpg	narinderk3662@gmail.com	\N	true	google_login	\N	true	true	true	false
1120	Shivam Tomar	600933444057490	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=600933444057490&height=272&width=384&ext=1580755882&hash=AeRsmJVh4Ccgfhy3	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1123	उदयवीर सिंह पवैया	2449845218666876	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2449845218666876&height=272&width=384&ext=1580789364&hash=AeQREK7ZbSvPH401	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1125	Raj Sharma	173797467166960	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=173797467166960&height=272&width=384&ext=1580808926&hash=AeRa9VAExsKuufMu	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
148	Rahul Kamet creations	\N	\N	108948180345240813676	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDNB9zDC8SGzdYDMZR2Fq7mmDfF0pw5JCb717PdBA=s96-c	rahulkamet@gmail.com	\N	true	google_login	ExponentPushToken[dXSxlKIBZzB8ja4B1z7MFJ]	true	true	true	false
1126	shivram singh	\N	\N	108230871538009243945	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mA1yLM2BlTwQdYs0P4e6gGPTVOoHmGYKDLcdX9v=s96-c	shivramsinghbhd@gmail.com	\N	true	google_login	\N	true	true	true	false
1133	Lokesh Mourya	1008198119552981	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1008198119552981&height=272&width=384&ext=1581094716&hash=AeTNA8-N3OBz32-8	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1134	lokesh mourya	\N	\N	102214872977003431432	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAtIhoaz7xpTj82_qGZMtrE_cXX3GYkC_JhA6kh=s96-c	lokeshmourya65@gmail.com	\N	true	google_login	\N	true	true	true	false
1210	Dinesh kushwah	\N	\N	109497883091427191193	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBB0F2y0x91xXjdCEko47q1T4NQjr1E49a1YyqJyQ=s96-c	kushwahdinesh036@gmail.com	\N	true	google_login	\N	true	true	false	false
753	yash kumar	\N	\N	102467236831360858122	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mD9nCsKuV9AUrjYpGxx3ZD7AkyDuQEuUH4a0hWAJA=s96-c	yashpk2128@gmail.com	\N	true	google_login	\N	true	true	true	false
1219	Heerasingh Diwakar	175903600288544	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=175903600288544&height=272&width=384&ext=1582179040&hash=AeQpsM5cvk8VGj7W	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	false	false
152	Kunwar Ajaypratap Singh Jadaun 	456674224907002	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=456674224907002&height=272&width=384&ext=1582288882&hash=AeSUuswVxwMdeJWf	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1174	SHAILENDRA KUMAR	\N	\N	103815244163201319576	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mD2bzO3tL_PYc06NEHMZc-Vc1SPGZS0NMNIXdQw7w=s96-c	sk9273975@gmail.com	\N	true	google_login	\N	true	true	true	false
352	disha solanki	\N	\N	108179823740457280725	\N	\N	null	dishasolanki125@gmail.com	\N	true	google_login	\N	true	true	true	false
273	पं.विशाल शर्मा	891082911241711	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=891082911241711&height=150&width=200&ext=1576059304&hash=AeSJqvUVDCKodlfg	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
378	Neha Singh	\N	\N	112252504326617427992	\N	\N	null	ns4068623@gmail.com	\N	true	google_login	\N	true	true	true	false
970	Vikash Mourya	\N	\N	115131538003761057866	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCe4L-FXIMi_e-QxfFVg0P5CNY1EK_FFdzbbCU0bw=s96-c	vikashmourya02011998@gmail.com	\N	true	google_login	\N	true	true	true	false
1175	Koushal S Yadav	2569466186503143	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2569466186503143&height=272&width=384&ext=1581345547&hash=AeT-YOhRRfdUbh7r	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
971	sunil raipuria	\N	\N	108513156072913619895	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAfP15geOBUebIT6FaR13244jKqYAhbb9ghpY5-ow=s96-c	sunilra604@gmail.com	\N	true	google_login	\N	true	true	true	false
977	technology master	\N	\N	116126104132205276349	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCjc1YGShsFl2yWDEvOzke4I6AIHsdOocJjo6uy=s96-c	yashsengarxyz@gmail.com	\N	true	google_login	\N	true	true	true	false
981	Rajeev Kushwah	\N	\N	109468285715619065885	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCGZr3g-Ex1-uSwenudmrYdDcD1hnsoA6Cptq3M=s96-c	rajeevkushwah06@gmail.com	\N	true	google_login	\N	true	true	true	false
984	Asma Yadav	591847461550800	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=591847461550800&height=272&width=384&ext=1578743909&hash=AeRBcuMtJkhepCrR	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1179	abhishek sharma	\N	\N	107993997299977808174	\N	\N	https://lh5.googleusercontent.com/-gQ8S7nZWOlo/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfh58qptx7ygizRrEPG_tmQQ8_BXA/s96-c/photo.jpg	abhishektharet@gmail.com	\N	true	google_login	\N	true	true	true	false
361	Kapil Lachoriya	2314594428794770	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2314594428794770&height=272&width=384&ext=1579486224&hash=AeSgxWyTPXo3hSf_	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1169	Bhole Rathor	\N	\N	105295308966484507872	\N	\N	https://lh6.googleusercontent.com/-hsNF3eaUX5Q/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdidIb9QjyE6OuJpHDhTa2ishyB4A/s96-c/photo.jpg	bholerathor009@gmail.com	\N	true	google_login	\N	true	true	true	false
506	lalit jatav	\N	\N	103553496281364239207	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCIu6poH39-K4w7PWUdipaREwsML3wBiVhVPjI9=s96-c	lalitjatav15@gmail.com	\N	true	google_login	\N	true	true	true	false
145	ashish agrawal	\N	\N	115671958624696674789	\N	\N	https://lh3.googleusercontent.com/-E9wqfdIdTIg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rc5_grR0_RagCsdyHKF-So-tEc5lg/s96-c/photo.jpg	shshagrawal05@gmail.com	\N	true	google_login	\N	true	true	true	false
1170	Deva Kirar	760124054495535	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=760124054495535&height=272&width=384&ext=1581175458&hash=AeRKm7xO_a8dJdx5	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
699	Saurabh Dubey	2351695078441511	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2351695078441511&height=272&width=384&ext=1577300930&hash=AeToiDvf0rAuOnMt	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	true
730	Er Deshraj Singh	3009962102563043	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=3009962102563043&height=150&width=200&ext=1576048458&hash=AeTcAKxwR_uEFYqD	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
447	Rohit Roy Roy	126084592041678	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=126084592041678&height=150&width=200&ext=1569413606&hash=AeTTets5wUMFmAcs	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
708	sonu dhakad	\N	\N	106707817712259917526	\N	\N	null	sonudhakad325@gmail.com	\N	true	google_login	\N	true	true	true	false
717	Sonu Dhakad	2380963275500614	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2380963275500614&height=150&width=200&ext=1575806270&hash=AeS4QtV5vpnWshmZ	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
639	lata raje	\N	\N	111740951298957257889	\N	\N	null	lata.k.raje@gmail.com	\N	true	google_login	\N	true	true	true	false
311	Richa Sharma	\N	\N	107340535579137829665	\N	\N	null	richandsharma@gmail.com	\N	true	google_login	\N	true	true	true	false
758	Vishnukant Dwivedi	\N	\N	100506142688019153925	\N	\N	null	vishnu.kantgwl97@gmail.com	\N	true	google_login	\N	true	true	true	false
781	Saurabh Rathore	106230550852964	https://scontent.xx.fbcdn.net/v/t1.0-1/c28.0.452.320a/p320x320/10645251_10150004552801937_4553731092814901385_n.jpg?_nc_cat=1&_nc_ohc=EhYYeg03gfsAQk4OoS3v5ymPLHahhfegiBFe-czLkMV87yAQ-BAYuj7IA&_nc_ht=scontent.xx&oh=4cbb52b5f5333fe2d123dd41dc0baa33&oe=5E7FD320	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
929	Yugal Amb	2570951079852591	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2570951079852591&height=150&width=200&ext=1577949209&hash=AeQnZOkMHyZph1H1	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
955	Nuage Laboratoire	\N	\N	112667936565052219434	\N	\N	https://lh5.googleusercontent.com/-_Qk_ZbldqBM/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3reGwlEK0dZe8fqRF3M0oEN5EV1Dpg/s96-c/photo.jpg	M4TBRQ4ZV2DA5BZAD37VUXMVBE-01@cloudtestlabaccounts.com	\N	true	google_login	\N	true	true	true	false
798	Yash kumar	\N		105629295518308496754	\N	\N	https://lh5.googleusercontent.com/-mw0yWvNcOlo/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rf3bQcxQOVq8tf1CTF6Y40-_I9Ufg/s96-c/photo.jpg	yashpk789987@gmail.com	\N	true	google_login	\N	true	true	true	false
725	RAVISHANKAR “Sheru” PRAJAPATI	\N	\N	108261293334491136498	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mC1r6XdI7U7DkwfjR7DRouR8Hqi23Rwtitv4rRvkA	prajapatiravishankar08@gmail.com	\N	true	google_login	\N	true	true	true	false
535	KRISHNA RATHORE	\N	\N	103363391551230871429	\N	\N	null	rathorekrishna526@gmail.com	\N	true	google_login	\N	true	true	true	false
968	ANAND KUMAR BOUDDH	\N	\N	102123925318786400293	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAy9L6jIn5FQEI5HDacvLxmJ7RsXgUKANGMDx8=s96-c	anandkumarbouddh88@gmail.com	\N	true	google_login	\N	true	true	true	false
587	Satya Bhan	2438959586429481	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2438959586429481&height=150&width=200&ext=1573357858&hash=AeR3nYQ8ALVQD0uK	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
223	Sunil Rajpoot	\N	\N	112138966064100462281	\N	\N	null	sunilrajpoot15396@gmail.com	\N	true	google_login	ExponentPushToken[t6srC9LA3AydSL1G0NeU6A]	true	true	true	false
159	Hirasingh Diwakar	\N	\N	110291431245837712905	\N	\N	null	hirasinghdiwakar5639@gmail.com	\N	true	google_login	\N	true	true	true	false
322	Deependra Singh Rajpoot	2335861160000577	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2335861160000577&height=150&width=200&ext=1564541096&hash=AeQl-RWA-ZOvfyYB	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1001	sk seeshodiya	\N	\N	109049887255656545403	\N	\N	https://lh3.googleusercontent.com/-EC3yIJyCGf4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rekXRetVfRifyPj9kbUJte5-kvf8A/s96-c/photo.jpg	skseeshodiya07994@gmail.com	\N	true	google_login	\N	true	true	true	false
1007	Vishal Sharma	501927137385604	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=501927137385604&height=272&width=384&ext=1579101783&hash=AeSOYUhF_WxrsmQB	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1008	Mahesh Narbariya	222838912039540	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=222838912039540&height=272&width=384&ext=1579111989&hash=AeSVvMsS-5wclWQQ	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1010	Ashish Chaudhary	2556098061291503	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2556098061291503&height=272&width=384&ext=1579145133&hash=AeSrqwWvx1e6tlwr	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1011	Prashant pathak	\N	\N	102381998538689723455	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCRj_J11IVU53z1bm1Z5EVkjE6NsOBSBph0y1Yu=s96-c	pathak786prashant@gmail.com	\N	true	google_login	\N	true	true	true	false
185	Kaushal Singh	2043268305975467	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2043268305975467&height=272&width=384&ext=1579259136&hash=AeSwLLVPknHXS8Aq	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
321	Raskendra Pratap	\N	\N	110553821120209571716	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAlel7ey8Rv8xc3LFw4uMstcq_n8MLRp5408U0O	raskendrapratap@gmail.com	\N	true	google_login	\N	true	true	true	false
256	Anil Singh Rajpoot	112342453366551	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=112342453366551&height=150&width=200&ext=1563271157&hash=AeQilZRsp3u7wkbQ	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
739	Prince Boddh	1172013962983993	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1172013962983993&height=150&width=200&ext=1576238120&hash=AeQLlJsuHLHXTOX3	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
221	Harimilan Yadav	\N	\N	100940403998207404881	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCvg199S3f0E9qcuKYbyZiSWDICM35J0rdpHUvw	harimilanyadav750939@gmail.com	\N	true	google_login	ExponentPushToken[HbKHDDE1auTvHOIzptlbXL]	true	true	true	false
384	Nisha Verma	854191661621129	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=854191661621129&height=150&width=200&ext=1566271041&hash=AeQUbzOoSt_0rIBV	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
353	Kanha Upadhyay	326805008223403	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=326805008223403&height=150&width=200&ext=1565667478&hash=AeSyqTIa7kBg-zmO	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
203	Deependra Rajpoot	\N	\N	104588969699268268013	\N	\N	null	deependrarajpoot171297@gmail.com	\N	true	google_login	ExponentPushToken[LlFDsaE6-pjlEzvYOFmPFy]	true	true	true	false
216	Rahul Singh	2293867180853056	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2293867180853056&height=150&width=200&ext=1562491445&hash=AeTUad0Fgco3n64l	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
320	Princy Gupta	\N	\N	117942211067638542654	\N	\N	null	tamanna.gupta1999@gmail.com	\N	true	google_login	\N	true	true	true	false
995	Manish Kushwah	558582074703547	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=558582074703547&height=272&width=384&ext=1578897718&hash=AeT8zHnFtvXJQmvb	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1002	Hariom Singh	\N	\N	111232857867712171229	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBs-Ph23l6OxuCW2bQasovNH60LFOEjYs87QMAL=s96-c	hskansana1@gmail.com	\N	true	google_login	\N	true	true	true	false
1015	Suraj Thakur	761282194336577	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=761282194336577&height=272&width=384&ext=1579269724&hash=AeT62N92VJhMrjh7	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
976	Nøughtý Åbhí Míshrå	1305996492908847	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1305996492908847&height=272&width=384&ext=1578656776&hash=AeSZWxJGk-JWhZKQ	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1025	Yogesh Verma	\N	\N	108978885113415907751	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDJqMTesU_OWbeMbQnZ-eHUcbZ0VPgC4n1PZuAA=s96-c	verma.yogesh6666@gmail.com	\N	true	google_login	\N	true	true	true	false
631	Roye Roye	136387304429939	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=136387304429939&height=150&width=200&ext=1574304929&hash=AeSKG1XjRPOlhAZD	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
367	Deshraj Verma	146373853103200	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=146373853103200&height=150&width=200&ext=1566233445&hash=AeQFsr20xy0uunZa	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
522	umesh sengar	\N	\N	103749613892612722893	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDqZ3M_eoyFoETD19TGjiA26gm4jgRx_qk8oOpvJ04	u.k.sengar95@gmail.com	\N	true	google_login	\N	true	true	true	false
424	Akashdeep Khare	\N	\N	112658191722868339196	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBLHwDQKEI4Mjp8UnjRTK8fkdWRczlsZp7h9i-ANQ	khareakashdeep@gmail.com	\N	true	google_login	\N	true	true	true	false
496	Amit Kumar Rawat	2345692015680530	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2345692015680530&height=150&width=200&ext=1570964101&hash=AeRPFRQ-YSGnYMf4	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
153	Hemant Sharma	1161941350633513	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1161941350633513&height=272&width=384&ext=1578717429&hash=AeTzlPtEYIv8AjH7	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1017	Tarun Upadhyay	\N	\N	113694671084766778105	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAbcqF0sdrzFIZMz65zD-bXlFOiB3kz2i6KDg-z2Q=s96-c	tarunupadhyay18031998@gmail.com	\N	true	google_login	\N	true	true	true	false
493	PUB G HANTER	\N	\N	115626065009757518652	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBF44yto3kKltRMniBZLjBugIpaNxum6TFAbT03kQ=s96-c	dgangwal265@gmail.com	\N	true	google_login	\N	true	true	true	false
989	Rajesh Verma	1246489782206355	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1246489782206355&height=272&width=384&ext=1581854305&hash=AeRk72KEjxPbWPaE	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
474	Shahil Mudagal	2417876715158248	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2417876715158248&height=150&width=200&ext=1570335130&hash=AeQVKSZ6JmteMeF-	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
487	Sushil Pachor	\N	\N	111247856945477910303	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mA-wUKZovDdvaUg5cRVeKgq3j-0a87YzuxWtVa7Qw	sushilpachori1122@gmail.com	\N	true	google_login	\N	true	true	true	false
486	Swarnkar 123	\N	\N	108313579039821831813	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mABB6RXdPVIbgtMAhD4NUVBaygQPN6Y5jFtcRWVwg=s96-c	swarnkar122@gmail.com	\N	true	google_login	\N	true	true	true	false
1036	Ranjeet Singh Pavaiya	3145799515645554	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=3145799515645554&height=272&width=384&ext=1579434687&hash=AeTKt8kDIv7uZwAc	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1039	Aakash Upadhyay	\N	\N	104192069818035899541	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mB3F-OkEpJJnCIfjWfgx1JsXKMMkAdI2HMmSVEm=s96-c	upadhyayaakash5899@gmail.com	\N	true	google_login	\N	true	true	true	false
248	MOHAN SINGH	\N	\N	108041301750981552488	\N	\N	null	piproliyam@gmail.com	\N	true	google_login	\N	true	true	true	false
146	Ujjwal Dubey	\N	\N	106800827718514936977	\N	\N	null	ujjwal.dubey218@gmail.com	\N	true	google_login	ExponentPushToken[WIJxIgJ6redVyGEsu8dQ-d]	true	true	true	false
1028	 Irfan Ali Khan 	802287466879177	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=802287466879177&height=272&width=384&ext=1579609536&hash=AeSs-rrjDYiBpBFk	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
151	Dharmendra Gangwal	1448557735344468	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1448557735344468&height=272&width=384&ext=1582601533&hash=AeTP02-I2ikD82hr	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
362	Mohammad Irfan Khan	640286366466034	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=640286366466034&height=272&width=384&ext=1580962469&hash=AeTMCr54WDdF67Bf	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
197	Ghanshyam Kushwah	710481186036114	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=710481186036114&height=150&width=200&ext=1562034945&hash=AeQfQcOGtCp7c5L_	\N	\N	\N	\N	\N	\N	true	fb_login	ExponentPushToken[Tf6JQDJuFx_hZ1OSguzgcc]	true	true	true	false
490	Tanuj Jadon	1754180254726112	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1754180254726112&height=150&width=200&ext=1570762637&hash=AeQwuNU_EbE_OAz5	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
206	Chhotu Verma	694978980932505	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=694978980932505&height=150&width=200&ext=1562071899&hash=AeRTZ9p5qiSiJgDu	\N	\N	\N	\N	\N	\N	true	fb_login	ExponentPushToken[Z-OWunDkc1vzx8suOlQln_]	true	true	true	false
589	Shubham Yadav	1519175868225638	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1519175868225638&height=150&width=200&ext=1573441045&hash=AeSf9k9tsb3MZIOn	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
749	jitendra tiwari	\N	\N	108500974341899056921	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDdNcd9uAK7FTyc2LlgdqD3-mp-kDtO3zD6DvBVLw	jitendratiwari335@gmail.com	\N	true	google_login	\N	true	true	true	false
752	Imran Khan	\N	\N	110870186820708326273	\N	\N	null	imran07122001@gmail.com	\N	true	google_login	\N	true	true	true	false
194	Sandeep Rajoriya	1544572735678666	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1544572735678666&height=150&width=200&ext=1562034889&hash=AeQS9Ixgh0eTFOTM	\N	\N	\N	\N	\N	\N	true	fb_login	ExponentPushToken[PmhugDG6D3Ec7cTTbfZowl]	true	true	true	false
512	Jitendra Patel	2368799523380849	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2368799523380849&height=150&width=200&ext=1571301807&hash=AeRQ79ly0bAhvadg	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1072	Suraj Singh	\N	\N	117698175366398659248	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAIMtbrI2h3S2o7k1UsCp4WiCuFAJAijwb4LHswjw=s96-c	surajsinghsisodiya631@gmail.com	\N	true	google_login	\N	true	true	true	false
741	piproliyakaushal@gmail.com	\N	\N	112384854814956168389	\N	\N	null	piproliyakaushal@gmail.com	\N	true	google_login	\N	true	true	true	false
225	SAURABH DUBEY	\N	\N	105008707675460842304	\N	\N	null	saurabhjee1234@gmail.com	\N	true	google_login	ExponentPushToken[wIzep8GksnXtjnLxheptIX]	true	true	true	false
168	Raj Verma	765046973891003	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=765046973891003&height=150&width=200&ext=1561447445&hash=AeS4AU_zENbx69aZ	\N	\N	\N	\N	\N	\N	true	fb_login	ExponentPushToken[WK_xRoFzoMnstNoSM67Q9I]	true	true	true	false
479	Ashish Paras	\N	\N	112922135491494904348	\N	\N	null	ashishparas1234@gmail.com	\N	true	google_login	\N	true	true	true	false
1030	Anant Jain	\N	\N	114534756641242072112	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCUS-bZ8rQlPiQG7QAF-QZZ3V04YuB-IkJheLkkwA=s96-c	jain9098667222@gmail.com	\N	true	google_login	\N	true	true	true	false
1044	Dev Jain	\N	\N	103500918062435548136	\N	\N	https://lh6.googleusercontent.com/-325ZbeNdD4E/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfloNoAhCSopxhKv8EAvpjuf2mEfg/s96-c/photo.jpg	devj5291@gmail.com	\N	true	google_login	\N	true	true	true	false
1052	Pratibha Chaturvedi	1494757064011073	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1494757064011073&height=272&width=384&ext=1579675568&hash=AeQlAYpu3sB_dn_t	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1055	Manish Rathore	2385914791720853	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2385914791720853&height=272&width=384&ext=1579710741&hash=AeRPefKOdSy_QY8X	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1056	Divyansh Sharma	\N	\N	108444077502180132784	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mB8QCCGe5x35o-oBQ-sdzlhZZUuT14jfzNTEo7L=s96-c	ds776056@gmail.com	\N	true	google_login	\N	true	true	true	false
1058	Deepak Matoli	1239873722879888	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1239873722879888&height=272&width=384&ext=1579786823&hash=AeTklxlyMo9BOm8o	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
193	Basant Singh	484531925418650	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=484531925418650&height=150&width=200&ext=1562034441&hash=AeQt8VSF8xhYAPlt	\N	\N	\N	\N	\N	\N	true	fb_login	ExponentPushToken[fzm8UHK5HvVJHpJsZfPHL7]	true	true	true	false
1053	Manish Rathore	\N	\N	103743056552749568851	\N	\N	https://lh6.googleusercontent.com/-s2vdt6rQ8CU/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rd8VAVXnPGWbGTl75aotlTaPGfE9g/s96-c/photo.jpg	mr216779@gmail.com	\N	true	google_login	\N	true	true	true	false
327	Parmanand Kushwaha Ji	217034642607887	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=217034642607887&height=150&width=200&ext=1564663368&hash=AeRyn4bJheLR5i2p	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
458	Gourav Sharma	\N	\N	101442517932084143628	\N	\N	null	gouravsharmabips1995@gmail.com	\N	true	google_login	\N	true	true	true	false
315	Rahul Kamet	1086710141527802	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1086710141527802&height=150&width=200&ext=1564424689&hash=AeQn6m-P_yXqqusH	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
979	Narottam Gurjar	130924211688643	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=130924211688643&height=272&width=384&ext=1578716565&hash=AeTCuX1lR4H_n8-l	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
756	MUSIC ME	\N	\N	115937765078266299501	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDXQXX6m6XjkpVyU7BYNPOz8XhwxS0JwV5oP0bj=s96-c	poojashakya1411@gmail.com	\N	true	google_login	\N	true	true	true	false
463	Saurabh Rathore	\N	\N	105613915565422017998	\N	\N	https://lh6.googleusercontent.com/-IQhB6roDz90/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfkB12uv7YEguyW4fFGxqJySragyw/s96-c/photo.jpg	saurabhrathorepk@gmail.com	\N	true	google_login	\N	true	true	true	false
1042	Avdhesh Ahirwar	781858505609799	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=781858505609799&height=272&width=384&ext=1581249133&hash=AeSkqlkxToIPyCXf	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
233	Devyanshu Thakur	446866345879689	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=446866345879689&height=272&width=384&ext=1582601734&hash=AeT6ENDLIHwDYjli	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
390	Mayank Parashar	719716925152920	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=719716925152920&height=150&width=200&ext=1566402347&hash=AeSXbgu4Dl6ug0j3	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
571	Shilpi Chauhan	\N	\N	106630953830469255802	\N	\N	null	chauhanshilpi67@gmail.com	\N	true	google_login	\N	true	true	true	false
1031	Hari Tripathi	442325109780578	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=442325109780578&height=272&width=384&ext=1582177170&hash=AeTZ850jWKICT1TX	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
264	Ashu Dixit	123349625575476	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=123349625575476&height=150&width=200&ext=1563629936&hash=AeTZfASjrUB-9NOr	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
737	Rustam Singh	1532834913533034	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1532834913533034&height=150&width=200&ext=1576236158&hash=AeR1SXecyz6jKTR3	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
751	Mukul Kumar	\N	\N	110968673431399311274	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mA80WITRykdTepCL1JhD6oJ4_k8jw5UFfSWoq_W	mk8345397@gmail.com	\N	true	google_login	\N	true	true	true	false
344	neelam jayant	\N	\N	111834752807990740286	\N	\N	null	neelamjayant22@gmail.com	\N	true	google_login	\N	true	true	true	false
262	Pandit Dabang	\N	\N	105283121706599627872	\N	\N	null	panditdabang143@gmail.com	\N	true	google_login	\N	true	true	true	false
195	Mandeep Singh Kang	\N	\N	101310048801810281734	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDfIDc5nXUMy6Fn02LiiDv4WCvgBb--BwGi7FQY=s96-c	mandeepsinghkang2@gmail.com	\N	true	google_login	\N	true	true	true	false
502	Tarun Upadhyay	2447271375550921	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2447271375550921&height=272&width=384&ext=1582600031&hash=AeSe2Zem4gIkiMOz	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
997	KAYAM SINGH	\N	\N	116644606313228192762	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAEzGAqlgErf5JbvP0b0cCvGlGKKFPSNPgCsodEiQ=s96-c	kayamsinghmp@gmail.com	\N	true	google_login	\N	true	true	true	false
718	Vivek Mavai	\N	\N	107953337217693069099	\N	\N	null	vivekmavai42@gmail.com	\N	true	google_login	\N	true	true	true	false
985	Annu Tomar	\N	\N	101829662200097304554	\N	\N	https://lh4.googleusercontent.com/-NscBEnucEvg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3reL9EUh2qmcnsMkutc_cCoduf9zHA/s96-c/photo.jpg	tomar.annu110@gmail.com	\N	true	google_login	\N	true	true	true	false
988	Ankush Singh Kanshana	555329171680847	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=555329171680847&height=272&width=384&ext=1578835871&hash=AeTs51Ml8u-WL3wH	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
793	sanjeev Rajpoot	\N	\N	105368998084027492817	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAHlKWO6l4igc7ZFsQiArIetOWtue37n40lhhr0	sanjeevlodhi83140@gmail.com	\N	true	google_login	\N	true	true	true	false
790	Narendra Lodhi	204557230545403	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=204557230545403&height=150&width=200&ext=1577339362&hash=AeQMkR38gAOIfo2Z	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
994	Yaduvanshi Anshuman	799654260476467	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=799654260476467&height=272&width=384&ext=1578884392&hash=AeQ9NZhJthyKqcMn	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
996	Mukesh Malotiya	577573632788566	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=577573632788566&height=272&width=384&ext=1578903888&hash=AeTsmSYUL7Ta9sl1	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1014	RAJVEER YADAV	\N	\N	111717748474779638056	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mB-2S98HShnSBv54Hinmts7FyLtevYrpNflIT8mKQ=s96-c	rajveery019@gmail.com	\N	true	google_login	\N	true	true	true	false
1022	Jitendra Yadav	\N	\N	103435233660631609844	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDgWlG1iVW3G5P6Ipiy_eyi5q-z-GFwsAOfu2MJQw=s96-c	jayadav251988@gmail.com	\N	true	google_login	\N	true	true	true	false
272	Gourav Sharma	1015426455323863	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1015426455323863&height=150&width=200&ext=1563971146&hash=AeQc07F3siRzB72C	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
329	Indrajeet Lodhi	1654925477984327	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1654925477984327&height=150&width=200&ext=1564898119&hash=AeS0Kbbr3WZ_EF40	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
331	Subhash Tomar	1343402262501231	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1343402262501231&height=150&width=200&ext=1564995980&hash=AeQL0qjMksFADCAM	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
388	Pushpendra Sharma	2068756816766313	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2068756816766313&height=150&width=200&ext=1566310638&hash=AeQ3rhv9qgnn7M0p	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
187	Rajesh Baraiya	\N	\N	108672964152718482138	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBuJq2IthHuzCGGZyKt12fIh-dV-UA2r3SogYrDvQ	rajeshmits95@gmail.com	\N	true	google_login	ExponentPushToken[sZhZDfP5rle5CjjLqCSNqi]	true	true	true	false
377	SONIYA KUSHWAH	\N	\N	100824245145321387974	\N	\N	null	soniyaji12585@gmail.com	\N	true	google_login	\N	true	true	true	false
1016	Laxman Nayak Banjara	606464326851685	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=606464326851685&height=272&width=384&ext=1579321005&hash=AeR3dc1kzaTEpeXQ	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
494	Pawan Baghel	2805430596373281	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2805430596373281&height=272&width=384&ext=1582652785&hash=AeRbYI0FhBDmnJPE	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
310	Dheeraj Singh	\N	\N	118031332512781317929	\N	\N	null	singhdheeraj3911@gmail.com	\N	true	google_login	\N	true	true	true	false
268	Mahendra Baghel	120935462488822	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=120935462488822&height=150&width=200&ext=1563765605&hash=AeTUV0_ULr0S6of3	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
396	Ashutosh Sharma	2394879897434685	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2394879897434685&height=150&width=200&ext=1566577711&hash=AeTlQydL0unmw9WW	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
178	Aastik Purohit	\N	\N	102224108072214355275	\N	\N	null	purohitaastik48@gmail.com	\N	true	google_login	\N	true	true	true	false
1019	Nitin Ray	178140483379138	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=178140483379138&height=272&width=384&ext=1582091062&hash=AeS3pCLQ_BAkT19A	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
179	Gopi Kusum Arya	2205105919576710	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2205105919576710&height=150&width=200&ext=1561785078&hash=AeQI4EQP9bF7YNC0	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
182	Prasant Rajpoot	902381416773418	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=902381416773418&height=150&width=200&ext=1561865521&hash=AeRn2m1k784YUZCi	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
521	Mukesh Mourya	507829849981506	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=507829849981506&height=150&width=200&ext=1576255832&hash=AeSfW75cXmxgf729	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1046	Sachin Parasar	581824515708632	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=581824515708632&height=272&width=384&ext=1579587547&hash=AeToslQUlMBnv0tJ	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
155	Arun Sharma	1129791503873803	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1129791503873803&height=150&width=200&ext=1561430040&hash=AeTCjpJDcvHbeivk	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
990	Pk Maurya	2388859397910364	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2388859397910364&height=272&width=384&ext=1578839065&hash=AeS8vxfCiivpYMFP	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1024	Brajesh Desai	\N	\N	104304647671730671855	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAGhy_Ha3bVCY34iwrhyEKHH9kA7F3pj1ZskV5i=s96-c	brajesh.desai30@gmail.com	\N	true	google_login	\N	true	true	true	false
586	Jitendra Tiwari	\N	\N	114435891282346600232	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mB8Tn4Uohp9Mdb3l1FOti-GYxei_fNN2QFTPK3K	jitendratiwari478@gmail.com	\N	true	google_login	\N	true	true	true	false
509	Tanu Pal	\N	\N	117013487278808623671	\N	\N	null	tanup0475@gmail.com	\N	true	google_login	\N	true	true	true	false
324	Vaishnav Chaturvedi	2303102543111454	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2303102543111454&height=150&width=200&ext=1564542084&hash=AeRChPgSzRkiesmh	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1034	Yash Nigam	\N	\N	114358631768495445734	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDXYEjK9If1XdFvGkciDIfj6bSCjHqhh40Mu0oqRQ=s96-c	yashnigam570@gmail.com	\N	true	google_login	\N	true	true	true	false
234	Rahil amd	\N	\N	105801646313992956074	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCPkcLuLl3z43DNwrGAzlRaB4Sgd3caxWeLXjhi	rahulkamet2314@gmail.com	\N	true	google_login	\N	true	true	true	false
252	Rohan Zutshi	\N	\N	108704760633502583768	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mA_Ba1428V6XJTHpAD15Gfv_DMdk6vQ3rmFPdyK	rohanzutshi24@gmail.com	\N	true	google_login	\N	true	true	true	false
1020	Radhe Krishna	1034286923573930	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1034286923573930&height=272&width=384&ext=1582302282&hash=AeRBNQAxNLsdMWos	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
455	Avnish Soni	2341074462809330	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2341074462809330&height=150&width=200&ext=1569691097&hash=AeRLbXLkWV5_W3FM	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
184	Ashu Singh	849319148769500	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=849319148769500&height=272&width=384&ext=1578916828&hash=AeR5CEqpJ2EatwOG	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
991	Neeraj Sharma	557145368461167	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=557145368461167&height=272&width=384&ext=1579126999&hash=AeRYE32lae2GFWyE	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
623	Hariom Sarjan	2486182578135338	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2486182578135338&height=150&width=200&ext=1574095410&hash=AeRVqJRbxwi2KPny	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
265	Arvind Singh	690205944780264	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=690205944780264&height=150&width=200&ext=1563685947&hash=AeTDBV6R15VG6JYg	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
416	Rahul Kamet	2128156120644560	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2128156120644560&height=150&width=200&ext=1567567101&hash=AeSz7CJwOW4PTtSA	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
241	Shubham Mer	2294772760840054	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2294772760840054&height=150&width=200&ext=1563125662&hash=AeQ3Wd_csRoaMspg	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
393	Rajesh Pal	2504742519761991	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2504742519761991&height=272&width=384&ext=1579367233&hash=AeRPGhY70rvvrY4B	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
475	Shreyansh Upreti	2352789128102825	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2352789128102825&height=150&width=200&ext=1570363571&hash=AeQY6889hgHymB-1	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
328	sunil raaj	\N	\N	118425957459477649747	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCvB0hBD_0rgZ-fPWPSOgoqECC1v0CU6AFz3GQxfiw	sunilraaj50@gmail.com	\N	true	google_login	\N	true	true	true	false
1040	Kuntal Chaturvedi	2764953526898444	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2764953526898444&height=272&width=384&ext=1579505472&hash=AeQxI9AERQe2iwEk	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1062	Kuldeep Rathor	176701686856838	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=176701686856838&height=272&width=384&ext=1579801804&hash=AeSL52DucG4DW7R4	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
402	Akhlendra Tomar	2517768721788096	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2517768721788096&height=150&width=200&ext=1567094432&hash=AeRefgPaNUkoZDDf	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
399	varsha singh	\N	\N	116719617169231259010	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBeqCwTyjQ4Kc7abOkQVWKhV9Oy1JAAfxbybZNW	varshaswt08@gmail.com	\N	true	google_login	\N	true	true	true	false
520	Chironji Sharma	\N	\N	106063414312995139761	\N	\N	null	sharma970720@gmail.com	\N	true	google_login	\N	true	true	true	false
307	Aarti Shrivastava	332786890951333	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=332786890951333&height=150&width=200&ext=1564062577&hash=AeQWcGpJC6NNtcyf	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1060	Jyoti Garg	\N	\N	114816779373109217210	\N	\N	https://lh5.googleusercontent.com/-x8tQNjbf_KM/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfd-z24suKjisB7pi0VTQCUIqygvA/s96-c/photo.jpg	jyotigarg13122001@gmail.com	\N	true	google_login	\N	true	true	true	false
1059	Shivam Vimal	\N	\N	100613197715553773170	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCN2aNsnjn_wcoRvuLEhdiTYHAAZ3iiNUYK3fTmxA=s96-c	shivamvimal123456789@gmail.com	\N	true	google_login	\N	true	true	true	false
453	all is one	\N	\N	105203442281701088839	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBk6NpJwGA_xMWpsyy-nRmDrRFH4ITqeXFfpoIlQg	pknand98@gmail.com	\N	true	google_login	\N	true	true	true	false
523	Rustam Singh	\N	\N	111575669680779500915	\N	\N	null	rustamsingh555@gmail.com	\N	true	google_login	\N	true	true	true	false
992	SHIVAM SHARMA	\N	\N	116701743460570854483	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDeanJBbuZW3phhPe3KnOr1F_I7jD6iojUy_gLUcw=s96-c	sharma477557gijurra@gmail.com	\N	true	google_login	\N	true	true	true	false
1026	Neelam Jayant	\N	\N	108158102744806611011	\N	\N	https://lh5.googleusercontent.com/-G1bPMj3w830/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdsejJuuUHVjRI8IIFUj9-9ceji7A/s96-c/photo.jpg	njayant37@gmail.com	\N	true	google_login	\N	true	true	true	false
1061	Harendra Yadav	579577662832162	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=579577662832162&height=272&width=384&ext=1579789030&hash=AeS2M7TUWg8MfYEY	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
1066	Diwakar Rathore	771470523357887	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=771470523357887&height=272&width=384&ext=1579945181&hash=AeTkAn9cQLIk60ai	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
171	Sandesh Lodhi	\N	\N	103186290023777399687	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDvm6Higwv1A6X-PqCZald2c1oCnYKbd0hdknOd=s96-c	sandeshlodhinarvariya@gmail.com	\N	true	google_login	\N	true	true	true	false
1069	Arun Singh	2549925865330843	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2549925865330843&height=272&width=384&ext=1580025427&hash=AeQmImuTcrCTTMxh	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
517	Lokendra Jasele	\N	\N	112287136407824220514	\N	\N	null	lokendrajasele988@gmail.com	\N	true	google_login	\N	true	true	true	false
488	Sid Pachori	1592222294262402	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1592222294262402&height=150&width=200&ext=1570682083&hash=AeQsc7TD6Q87DloT	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
150	Rakesh Mourya	915726192104971	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=915726192104971&height=150&width=200&ext=1561430000&hash=AeT3dDMlcvS6bTb4	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
271	Sagar Raja Parmar	\N	\N	104071003957815016956	\N	\N	null	sagarrajaparmar975564@gmail.com	\N	true	google_login	\N	true	true	true	false
240	Satish Sharma	2406097676293203	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2406097676293203&height=150&width=200&ext=1563019961&hash=AeSjpos9QPg5dCnw	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
274	Saurabh Dhamele	\N	\N	115461133054683563464	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDLy9d0p7_UQ8zRScmB2Vx6emL6qIa97oxIaakz	worldlockerking@gmail.com	\N	true	google_login	\N	true	true	true	false
308	Anubhav Sharma	1377415125730295	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1377415125730295&height=150&width=200&ext=1564196164&hash=AeRYmWyHpwTUjcCW	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
590	Aastik Purohit	\N	\N	110963820225774828551	\N	\N	null	aastik9039@gmail.com	\N	true	google_login	\N	true	true	true	false
230	Vishnu Shankar	\N	\N	107472432591572363701	\N	\N	null	vishnushankarsikarwar1122@gmail.com	\N	true	google_login	ExponentPushToken[PMkdJXEfPlJVqKe0FiVelS]	true	true	true	false
350	Vishal Sharma	\N	\N	113488226166572913688	\N	\N	null	vishlu786@gmail.com	\N	true	google_login	\N	true	true	true	false
360	Nitin Yadav	\N	\N	111841174020518535806	\N	\N	null	nynitinyadav24@gmail.com	\N	true	google_login	\N	true	true	true	false
491	Splendor Fun	\N	\N	109855896544610484871	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDOOJwMPjU2mch8j1lEFxPCBelmJv7Sfyljh9zhcQ	pratham.hk1@gmail.com	\N	true	google_login	\N	true	true	true	false
354	Rajesh Pratap Chauhan	181565332861049	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=181565332861049&height=150&width=200&ext=1565667490&hash=AeQVKQVzq3rgUYKn	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
228	Ankita Tomar	450869302146722	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=450869302146722&height=150&width=200&ext=1562640555&hash=AeSFaxYRTGjTwxDN	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
422	Gaurav Rai	523786021724419	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=523786021724419&height=150&width=200&ext=1568385612&hash=AeSTRVrEXlt8FCah	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
164	Saurabh Soni	\N	\N	115725630664590250320	\N	\N	null	soni08139@gmail.com	\N	true	google_login	ExponentPushToken[XXBiquNfNTc32nbz6MFj5m]	true	true	true	false
209	Ashish Agrawal	2324239694363460	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2324239694363460&height=272&width=384&ext=1578547557&hash=AeTlWlqSJQ7FW4gh	\N	\N	\N	\N	\N	\N	true	fb_login	ExponentPushToken[unnKmNKMS9lgQ4F23qm-cJ]	true	true	true	false
158	Rishabh Sharma	2252961368350901	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2252961368350901&height=272&width=384&ext=1582680626&hash=AeR9e_HrE-Ky6Km5	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
180	Ravindra Dhaureliya	2435599510053260	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2435599510053260&height=272&width=384&ext=1578632301&hash=AeQ2517kQPBOu4Aq	\N	\N	\N	\N	\N	\N	true	fb_login	ExponentPushToken[Csfy2cLLfAC0GMtVYCfCq1]	true	true	true	false
167	Rahul Kamet	\N	\N	118147676224301636729	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDSPjw6I_BS_3roBiUj7x-6UfxX4R1mKos3oU0X	1djdhddgsdkwfsg@gmail.com	\N	true	google_login	\N	true	true	true	false
414	Ankit Arora	2405554596161078	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2405554596161078&height=150&width=200&ext=1567486484&hash=AeSAqmjqBrXZGz2_	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
477	Rinkujatav Jatav Jatav	942383046127125	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=942383046127125&height=150&width=200&ext=1570435893&hash=AeSJO4vRZ2GAhvv_	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
356	Ankit Yadav Barhi	1211691642334986	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1211691642334986&height=150&width=200&ext=1565890287&hash=AeQ22GQ5IOGrDVZD	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
609	Ajay Kumar	2465779153538248	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2465779153538248&height=150&width=200&ext=1575472402&hash=AeTRrOrFspMyBanP	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
510	null	\N	\N	100572548612318497501	\N	\N	null	lsikariya@gmail.com	\N	true	google_login	\N	true	true	true	false
380	Prem Mathur	510261379524876	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=510261379524876&height=150&width=200&ext=1566269897&hash=AeRjm__R-EmfWZWt	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
499	Neeraj Dutta	1858933334252901	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1858933334252901&height=150&width=200&ext=1570981595&hash=AeQwDXLg8w1IBMdg	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
346	Gaurav Raypuriya	128021105110703	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=128021105110703&height=150&width=200&ext=1565492931&hash=AeSA6KGqkLhhj79s	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
398	Shashi Singh Rajput	673837083079986	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=673837083079986&height=150&width=200&ext=1567000634&hash=AeQENhSYa7eau2kl	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
154	Uttra Devesh	2112644385694617	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2112644385694617&height=150&width=200&ext=1561430034&hash=AeSe0AZ6yrm3D9s2	\N	\N	\N	\N	\N	\N	true	fb_login	ExponentPushToken[PgE0Z4GXGy21YezI-3BcPt]	true	true	true	false
326	Virat Gurjar	375084560032703	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=375084560032703&height=150&width=200&ext=1564579076&hash=AeRiGvYQL21hLI-m	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
516	Humpty Maurya	2455119128097057	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2455119128097057&height=150&width=200&ext=1571386809&hash=AeTcSAN-Ehkp6Pra	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
406	Anuradha Sikarwar	\N	\N	110668791551515641465	\N	\N	null	sikarwaranuradha0@gmail.com	\N	true	google_login	\N	true	true	true	false
186	Vivek Singh	\N	\N	102176072921204171358	\N	\N	null	singhvivek20045@gmail.com	\N	true	google_login	ExponentPushToken[e1seLqDjNBlp2ovHuSMSll]	true	true	true	false
408	Ajay Yadav	924163977923720	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=924163977923720&height=150&width=200&ext=1567479809&hash=AeQkUnr7YBxShb-f	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
249	Rohan Zutshi	1070418366484529	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1070418366484529&height=150&width=200&ext=1563244835&hash=AeRtZyc4gWekZIPV	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
237	sarita Katija	\N	\N	108546413400123597071	\N	\N	null	saritakatija1993@gmail.com	\N	true	google_login	\N	true	true	true	false
485	Shreya Rane	\N	\N	114700694601562102372	\N	\N	null	shreyarane558@gmail.com	\N	true	google_login	\N	true	true	true	false
467	Kuntal Chaturvedi	\N	\N	102853122238115844453	\N	\N	https://lh5.googleusercontent.com/-UHecW8RR_2w/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3reI4L4pebRFpqevWvER0TnJ1oF96w/s96-c/photo.jpg	chaturvedikuntal03@gmail.com	\N	true	google_login	\N	true	true	true	false
160	Pushpanshu Sharma	844902629199952	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=844902629199952&height=272&width=384&ext=1579259303&hash=AeQfaxIO6MIiRuHF	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
507	MUKESH MOURYA	\N	\N	112713093325216827830	\N	\N	null	mouryam885@gmail.com	\N	true	google_login	\N	true	true	true	false
229	Pooja Tiwari	\N	\N	111618870320130530856	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mACeRWuHx0DvxHExMv8NOsdQtq5OmPOK0-bsI4X	tp9074@gmail.com	\N	true	google_login	ExponentPushToken[u_g3i3OjuAoZOGw9KZKXg9]	true	true	true	false
207	vinay kumar	\N	\N	101294398260280289348	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mA0CHvQTfL-SU2IjmqQ-8O-oOWMYfMDzmt-6r2wZg	vinayverma379@gmail.com	\N	true	google_login	\N	true	true	true	false
484	ANIL DHAKAR	\N	\N	112598667742653031809	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mC3FXebxST_i57AAid5oUHzAdIIhn7fio_Myrjl	anildhakar426@gmail.com	\N	true	google_login	\N	true	true	true	false
394	Suneel Raj	2118648471770204	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2118648471770204&height=150&width=200&ext=1566571100&hash=AeSb-P0--YgwoFra	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
450	SHASHI SINGH	\N	\N	105484916952929400630	\N	\N	null	shashisinghmits1997@gmail.com	\N	true	google_login	\N	true	true	true	false
198	Vishakha BArahdia	\N	\N	111448188806888945054	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAZkKGwF36BqGEI44Qw6lwoXWmN2PoJm4wvrPeb	vishakhabarahdia249@gmail.com	\N	true	google_login	\N	true	true	true	false
156	Nidhi Chauhan	\N	\N	110761460777444715219	\N	\N	null	nidhichauhan9285@gmail.com	\N	true	google_login	ExponentPushToken[Ex-cfMPxTj91gsI5uAyFNf]	true	true	true	false
611	hariom sarjan hariom sarjan	\N	\N	112052631003648225678	\N	\N	null	hspies888@gmail.com	\N	true	google_login	\N	true	true	true	false
526	neelam batham	\N	\N	111040768712994864483	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCjyUcXOYBNOjp5fMGbqMv9sb9Z0VyQ7CAfkSUzOg	neelambatham482@gmail.com	\N	true	google_login	\N	true	true	true	false
495	Ankit Pachauri	\N	\N	107083544791149389589	\N	\N	null	ankitpachauri091@gmail.com	\N	true	google_login	\N	true	true	true	false
533	Arun Sharma	\N	\N	110798334996582415415	\N	\N	https://lh5.googleusercontent.com/-MreSC0SoePM/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfWzU23IwC3EnNRrG6-MMVP0ElgXA/s96-c/photo.jpg	arunsharma3882@gmail.com	\N	true	google_login	\N	true	true	true	false
401	Ayu Sharma	\N	\N	113557045982916316637	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDGJRXyy-n7xt5ViqAQ5dy1T8hW1yGeLjaL6Fc=s96-c	ayusharma1316@gmail.com	\N	true	google_login	\N	true	true	true	false
497	Hadley Singhal	\N	\N	101631386859717642749	\N	\N	https://lh6.googleusercontent.com/-UTtXuagpOq4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcb5ZTYtyLvFmWa19v5ilLWA65THQ/s96-c/photo.jpg	singhalhadley2462@gmail.com	\N	true	google_login	\N	true	true	true	false
365	rahul pal	\N	\N	117291054944625993768	\N	\N	null	rahulpal5896@gmail.com	\N	true	google_login	\N	true	true	true	false
442	Amar Panday	\N	\N	104796768058307807463	\N	\N	null	amarpanday4155@gmail.com	\N	true	google_login	\N	true	true	true	false
338	Sunil Kushwah	157463025390659	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=157463025390659&height=150&width=200&ext=1565178924&hash=AeRpfHvVrC4t4IXQ	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
364	Mohan Prajapati Mohan Prajapati	713090315777613	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=713090315777613&height=150&width=200&ext=1566185167&hash=AeSuQRqzEFk_mt0t	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
232	Abhishek Sharma	858669304488819	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=858669304488819&height=272&width=384&ext=1582601723&hash=AeSaufAlwSaMOB3m	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
147	Dharmesh Awasthi	\N	\N	110188176878153319781	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAqLCxbFDTbHVOKwM9ZdF2dtlsE6BOtkGpBWrIxkQ	dadu0597@gmail.com	\N	true	google_login	ExponentPushToken[GhC8OnBTtGDE6XAA7K215N]	true	true	true	false
385	Ghanshyam Kumar	\N	\N	117077979198259151946	\N	\N	null	ghanshyam00751@gmail.com	\N	true	google_login	\N	true	true	true	false
224	sanjay Joshi	\N	\N	110430237222870713856	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBVKg2h9hzu-rE8InNL2IHWYCe8U4LRGPH9IcX13g	sanjay.joshi1299@gmail.com	\N	true	google_login	ExponentPushToken[5m3mO9PRb_wrsA9jVGyBnb]	true	true	true	false
267	Bhanupriya Nandwani	2343252669334587	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2343252669334587&height=150&width=200&ext=1563723034&hash=AeT3lQWqkKOCjBi0	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
173	ANIL SINGH RAJPOOT	\N	\N	106329829609706061032	\N	\N	null	anilrajpoot21296@gmail.com	\N	true	google_login	ExponentPushToken[xfE2H7P9fCrUlnqk-RF4i3]	true	true	true	false
515	Surendra Mourya	1198167057033600	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1198167057033600&height=150&width=200&ext=1571385851&hash=AeRwYBU8JXyMzxnu	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
518	RAHUL KUMAR	\N	\N	107238982899361181129	\N	\N	null	kumarrahul5340@gmail.com	\N	true	google_login	\N	true	true	true	false
536	Vikram Diwakar	\N	\N	110496570959843333942	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mDUtNNhaMYXkJKyeeO1rMoFBSwNAK1fS8Qr65aarA	vikramdiwaker2@gmail.com	\N	true	google_login	\N	true	true	true	false
614	Priyanka Shriwas	1075042576220887	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1075042576220887&height=150&width=200&ext=1573964827&hash=AeSBh-Nv7zF8mBPQ	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
332	gaurav bansal	\N	\N	116397977089673154991	\N	\N	null	bansalji2802@gmail.com	\N	true	google_login	\N	true	true	true	false
333	Neha Sharma	\N	\N	109165673450507916675	\N	\N	null	1122neha.sharma@gmail.com	\N	true	google_login	\N	true	true	true	false
492	Rahul Dhanoliya	\N	\N	102160646515544646345	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBv-eC9udYlxqDyDDWIpnVRtRQpsTBlKHV95sxB	rahuldhanoliya1998@gmail.com	\N	true	google_login	\N	true	true	true	false
482	kamal kol	\N	\N	112967238819275010516	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAaLV9-0phnp7EfTfPekfy6U2qDWVxdk223Vnz4pw	kamalkol26@gmail.com	\N	true	google_login	\N	true	true	true	false
409	mohan prajapati	\N	\N	115199151791658937370	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mAOFYQ1zF2zl8f0i9ygwOYUy9UxvTSOZY-JM2Lx	prajapatimohan029@gmail.com	\N	true	google_login	\N	true	true	true	false
246	Vivek Jha	1070386143152517	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1070386143152517&height=150&width=200&ext=1563244290&hash=AeSNqax6k880OC2-	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
149	Ajay Kumar	2340679819511100	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2340679819511100&height=150&width=200&ext=1561429987&hash=AeRVF_UutLui8La7	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
266	Abhishek Sharma	1014992175357810	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1014992175357810&height=150&width=200&ext=1563715697&hash=AeRsYAHtaaI66_Ry	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
204	Vikash Singh Bhadauriya	170007830676140	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=170007830676140&height=150&width=200&ext=1562036283&hash=AeRkYSuRMhjWVvGq	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
162	Sandeep Kumar Chaurasiya	1296700830492679	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1296700830492679&height=272&width=384&ext=1578655615&hash=AeQ8IcQQvttovSfF	\N	\N	\N	\N	\N	\N	true	fb_login	ExponentPushToken[osf_NACl0yWI4JlE_NBSOZ]	true	true	true	false
163	Gaurav Sharma	\N	\N	110734383545575306073	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mCiFpOZ3wFCv0mI9MgLXWJUpv7fUGfnx_qWH98xAA=s96-c	gauravsharma8562@gmail.com	\N	true	google_login	\N	true	true	true	false
196	Shiv Pratap	\N	\N	106378253179233339207	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBPWIgUEPZeNzR8H2jOAfWGkbqTrzTh3qgyizi8rw=s96-c	shivpratap84040@gmail.com	\N	true	google_login	ExponentPushToken[P0QJQ6DkF3QEmC6B0tUDVq]	true	true	true	false
608	Anand Singh Yashpal	1413620692122094	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1413620692122094&height=272&width=384&ext=1582179068&hash=AeRw17rLPnPQgIXK	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
622	Shivani Dixit	\N	\N	102002312380193898803	\N	\N	https://lh3.googleusercontent.com/-0exHrzyfSFo/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdnRNUiLNEiCjk_i7Wewuox5N-nhA/s96-c/photo.jpg	dixitshivani016@gmail.com	\N	true	google_login	\N	true	true	true	false
616	Jitendra Jaiswal	2641895759209312	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2641895759209312&height=150&width=200&ext=1573971320&hash=AeRccDhJjRBzc5-w	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
575	Shalini Chaudhary	\N	\N	107007056676028633813	\N	\N	null	shalinichaudhary305@gmail.com	\N	true	google_login	\N	true	true	true	false
582	Aman Gupta	2500023143452774	https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2500023143452774&height=150&width=200&ext=1573306405&hash=AeRPF3iPUjpzNYIY	\N	\N	\N	\N	\N	\N	true	fb_login	\N	true	true	true	false
610	Pradeep Raj	\N	\N	104926415375401744197	\N	\N	https://lh3.googleusercontent.com/a-/AAuE7mBK8yTMwjo1JrDS7ohzu9zVZQQuaNTtjwyjh6WFFg	pradeep408si@gmail.com	\N	true	google_login	\N	true	true	true	false
528	Soni Verma	\N	\N	106081196009831995588	\N	\N	null	vsoni2299@gmail.com	\N	true	google_login	\N	true	true	true	false
527	DHEERAJ KUMAR	\N	\N	113443589389896332598	\N	\N	null	dk34976@gmail.com	\N	true	google_login	\N	true	true	true	false
\.


--
-- Name: student__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.student__id_seq', 1271, true);


--
-- Data for Name: sub_category; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.sub_category (_id, category_id, hindi_name, english_name, logo, demo) FROM stdin;
17	1		Percentage	37fc0af636dbe36733059ff4ae9daaf4	false
41	1		Pipes And Cisterns	615862243c1351af3f3933acc3bfd46c	false
42	1		Time And Work(2)	21ff555285ecec9f207ad64d948d3e03	false
15	1		Time and Work	5b08e5b7977106c0f4fed0070c242257	false
16	1		Profit And Loss	870221c7cacf4e364f2d337790ef4259	false
19	1		H.C.F And L.C.M	59f25eed77fd8690f3bfca839b0bfdb3	false
23	1		Mixture And Alligations	cc937deb675dd7521cc9e24c61efc701	false
24	1		Number System	683df71b90f91c5128544f6b81e33dee	false
25	2		Order And Ranking	44c4b92306485d80afc86b13311a73a1	false
27	1		Mensuration 2D	a40aa468f1c6341b1bdc612de341bd23	false
28	1		Compound Interest	a99cf9e80ce3a84f9232c702dcaa20eb	false
30	1		Simple Interest	507e9604387b55386b7d7461ea0ca23c	false
39	1		Speed,Distance And Time	b28528db735f92c9ee52babf0da960ac	false
31	2		Coding And Decoding	cee1eef7ba84aefd189c2c2add53e66c	false
22	1		Average	8a090f6717bd15c865dfadb863c53cae	true
18	1		Boats And Streams	6a4c7240bf28b7c88e076b7a066d3825	true
21	1		Ages	2fd754f5ba407fc970cc3f4e9fac3776	true
26	2		Syllogism	dae0bbf35b0f232b9fe0404fb08d901c	true
34	1		Chain Rule	cc0dac62469a43cc08cef6aa7d7d3ec5	false
\.


--
-- Name: sub_category__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.sub_category__id_seq', 45, true);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.test (_id, english_title, hindi_title, cancel_allowed_time_in_minutes, online_status, test_commence_date, test_commence_time, test_allowed_time_in_seconds, test_online_no_of_days, end_time, set_password, shuffle_required, set_as_demo_test) FROM stdin;
113	Test : 20 (Taste of C.I..)	 	\N	\N	2019-11-12	07:00:00	3600		23:59:59	false	true	false
78	T-17 (TASTE of S.I.)		\N	\N	2019-11-12	07:00:00	3600		23:00:00	false	true	true
79	T-18 (PERCENTAGE  BASIC)		\N	\N	2019-11-14	07:00:00	2400		23:00:00	false	true	false
112	T-19 (PERCENTAGE)		\N	\N	2019-11-17	07:00:00	6000		23:59:00	false	true	false
114	T-21 (P & L) Basics		\N	\N	2019-11-18	07:00:00	3600		23:59:59	false	true	false
115	T-022 (NUMBER SYSTEM) & HCF LCM		\N	\N	2020-01-12	09:15:00	5400		10:15:00	true	true	false
116	T-23 (Time and Work) 		\N	\N	2020-01-26	09:00:00	3600		12:00:00	true	false	false
63	TEST 05 (T&W , HCF & LCM)		\N	\N	2019-06-30	08:40:00	2700		09:00:00	true	true	false
57	NUMBER SYSTEM 02		\N	\N	2019-06-02	08:15:00	2400		08:35:00	true	true	false
56	NUMBER SYSTEM 01 		\N	\N	2019-09-15	09:00:00	2400		23:00:00	false	true	false
60	HCF & LCM with N.S.  04		\N	\N	2019-09-22	09:00:00	2400		19:00:00	true	true	false
58	NUMBER SYSTEM 03		\N	\N	2019-06-09	08:15:00	2700		08:35:00	true	true	false
61	NTPC MOCK TEST 01		\N	\N	2019-06-23	09:30:00	4500		12:00:00	false	false	false
117	T-24 (Time and Work with Pipes and cistern)		\N	\N	2020-02-02	09:00:00	3000		09:15:00	true	true	false
67	T-09 (%, P&L)		\N	\N	2019-08-05	09:30:00	2700		10:30:00	false	true	false
73	T-14 		\N	\N	2019-09-20	10:00:00	5400		23:00:00	false	false	false
76	T-16 (T&W)		\N	\N	2019-11-12	07:00:00	3600		23:00:00	false	true	true
75	T - 15(Average)		\N	\N	2019-10-25	09:00:00	2700		23:00:00	false	true	true
68	T-10 (P & L)		\N	\N	2019-11-24	09:05:00	2700		23:30:00	false	true	false
69	T- 10 (P&L - 02)		\N	\N	2019-11-24	08:00:00	2700		23:59:00	false	true	false
64	Test 06(T&W, P&C)		\N	\N	2019-07-07	08:35:00	2700		09:00:00	true	true	false
66	T-08 (T&W, %)		\N	\N	2019-07-21	08:30:00	2700		09:00:00	true	true	false
65	T-07 (T&W, P&C, %)		\N	\N	2019-07-14	09:05:00	3600		09:30:00	true	true	false
70	T - 11 (SPEED)		\N	\N	2019-09-01	09:05:00	2400		09:25:00	false	true	false
71	T- 12 (SPEED)		\N	\N	2019-09-08	09:05:00	3000		09:35:00	true	true	false
72	T-13 (SPEED + BOAT)		\N	\N	2019-09-15	10:35:00	2700		23:59:59	false	true	false
74	TEST - 14 (mixture & alligation)	 	\N	\N	2019-09-22	09:00:00	3600		23:59:59	true	true	false
\.


--
-- Name: test__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.test__id_seq', 117, true);


--
-- Data for Name: test_options; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.test_options (_id, test_question_id, english_text, hindi_text) FROM stdin;
333	84	option A	
334	84	option B	
335	84	option C	
336	84	option  D	
337	84	option  E 	
342	86	24	
343	86	25	
344	86	28	
345	86	30	
2662	591	Rs.1200	Rs.1200
2663	591	Rs.1600	Rs.1600
2664	591	Rs.1400	Rs.1400
2665	591	Rs.1000	Rs.1000
368	92	24	
369	92	25	
370	92	28	
371	92	30	
376	94	1	
377	94	3	
378	94	5	
379	94	7	
384	96	24	
385	96	12	
386	96	10	
387	96	0	
392	98	10	
393	98	9	
394	98	11	
395	98	6	
400	100	2/11	
401	100	11/2	
402	100	18/11	
403	100	11/18	
408	102	9	
409	102	3	
410	102	97	
411	102	6	
416	104	149	
417	104	147	
418	104	141	
419	104	143	
424	106	117	
425	106	119	
426	106	120	
427	106	153	
432	108	323   	
433	108	221	
434	108	247	
435	108	357	
452	113	10	
453	113	12	
454	113	14	
455	113	16	
464	116	3017	
465	116	3311	
466	116	2926	
467	116	3215	
472	118	603	
473	118	600	
474	118	598	
475	118	597	
476	119	4	
477	119	10	
478	119	8	
479	119	6	
480	120	Option 1	
481	120	Option 2	
482	120	Option 3	
483	120	Option 4	
488	122	Option A	
489	122	Option B	
490	122	Option C	
491	122	Option D	
492	123	1	
493	123	2	
494	123	3	
495	123	0	
496	124	42	
497	124	1	
498	124	16	
499	124	3	
500	125	2788	
501	125	2688	
502	125	2678	
503	125	2798	
504	126	1200	
505	126	1300	
506	126	250	
507	126	1050	
570	142	1	
518	129	22.22	
519	129	22.02	
520	129	22.04	
521	129	22.0	
522	130	12	
523	130	11	
524	130	11	
525	130	11	
530	132	0	
531	132	5	
532	132	4	
533	132	2	
538	134	5	
539	134	3	
540	134	2	
541	134	1	
546	136	Option A	
547	136	Option B	
548	136	Option C	
549	136	Option D	
554	138	1	
555	138	3	
562	140	6	
563	140	3	
564	140	4	
565	140	12	
571	142	2	
572	142	0	
573	142	3	
556	138	1/3	
557	138	1/2	
213	54	√3	
214	54	√5	
215	54	√10	
216	54	√12	
217	55	13	
218	55	11	
219	55	7	
220	55	4	
221	56	5/39	
222	56	4/39	
223	56	2/39	
224	56	7/39	
225	57	12	
227	57	14	
228	57	16	
229	58	21	
230	58	22	
231	58	23	
232	58	24	
233	59	1	
234	59	2	
235	59	3	
236	59	0	
237	60	10	
238	60	1	
239	60	2374156	
240	60	5374158	
241	61	100	
242	61	200	
243	61	250	
244	61	400	
245	62	16	
246	62	20	
247	62	24	
248	62	30	
249	63	6400	
250	63	6480	
251	63	400	
252	63	480	
253	64	10	
254	64	12	
255	64	15	
256	64	20	
257	65	Odd number	
258	65	Even number	
574	143	10	
575	143	12	
576	143	6	
577	143	8	
578	144	10	
579	144	1	
580	144	8315945 	
581	144	831594	
582	145	5	
583	145	6	
584	145	7	
585	145	8	
259	65	Even and Odd Both	
260	65	neither odd nor even	
261	66	Prime number	
262	66	Composite number	
263	66	a and b both	
264	66	neither a nor b 	
265	67	5	
266	67	1	
267	67	3	
268	67	2	
269	68	6	
270	68	0	
271	68	2	
272	68	3	
273	69	8	
274	69	9	
275	69	12	
276	69	13	
277	70	2/11	
278	70	11/2	
279	70	18/11	
280	70	11/18	
281	71	23/30	
282	71	23/36	
283	71	18/49	
284	71	17/25	
285	72	73	
286	72	75	
287	72	76	
288	72	78	
289	73	162	
290	73	172	
291	73	182	
292	73	192	
293	74	43	
294	74	41	
295	74	25	
296	74	35	
297	75	60	
298	75	89	
299	75	54	
300	75	40	
301	76	81	
302	76	125	
303	76	9	
304	76	3	
305	77	50	
306	77	51	
307	77	29	
308	77	8	
309	78	3	
310	78	10	
311	78	11	
312	78	13	
313	79	11	
314	79	16	
315	79	25	
316	79	30	
317	80	option (a)	
318	80	option (b)	
319	80	option (c)	
320	80	option (d)	
321	81	7/8	
322	81	31/32	
323	81	23/24	
324	81	15/16	
325	82	5	
326	82	6	
327	82	7	
328	82	8	
329	83	option (a)	
330	83	option (b)	
331	83	option (c)	
332	83	option (d)	
338	85	fr	
339	85	drcd	
340	85	fcd	
341	85	fdrgf	
346	87	2	
347	87	3	
348	87	1	
349	87	0	
355	89	35	
356	89	80	
357	89	20	
358	89	10	
364	91	1/n	
365	91	2/n	
366	91	(2(n-1)) / n	
367	91	2 / (n(n+1))	
372	93	1001  	
373	93	101	
374	93	10001 	
375	93	10101	
380	95	58	
381	95	50	
382	95	59	
383	95	60	
388	97	2	
389	97	3	
390	97	4	
391	97	9	
396	99	5050   	
397	99	4275	
398	99	4025	
399	99	3775	
404	101	8	
405	101	12	
406	101	54	
407	101	76	
412	103	0.6	
413	103	0.9	
414	103	0.06	
415	103	4.8	
420	105	2600  	
421	105	3240 	
422	105	3040 	
423	105	2400	
428	107	1	
429	107	1.125	
430	107	2	
431	107	2.125	
436	109	784  	
437	109	576	
438	109	484 	
439	109	529	
444	111	130  	
445	111	175 	
446	111	360	
447	111	350	
448	112	16	
449	112	14	
450	112	18	
451	112	20	
456	114	4	
457	114	5	
458	114	3	
459	114	7	
460	115	77	
461	115	88	
462	115	85	
463	115	90	
468	117	10	
469	117	26	
470	117	63	
471	117	49	
484	121	3	
485	121	4	
486	121	6	
487	121	9	
508	127	642046	
509	127	612058	
510	127	620148	
511	127	623056	
512	127	None	
513	128	6984	
514	128	6884	
515	128	6894	
516	128	6954	
517	128	None	
526	131	10	
527	131	26	
528	131	63	
529	131	49	
534	133	0	
535	133	1	
536	133	4	
537	133	5	
542	135	7	
543	135	14	
544	135	17	
545	135	9	
550	137	Option A	
551	137	Option B	
552	137	Option C	
553	137	Option D	
558	139	6	
559	139	3	
560	139	9	
561	139	12	
586	146	10	
587	146	9	
588	146	11	
589	146	6	
590	147	16	
591	147	18	
592	147	19	
593	147	12	
594	148	30	
595	148	25	
596	148	40	
597	148	50	
598	149	8ab    	
599	149	-8ab	
600	149	 8a² + 2b²	
601	149	8a²-2b²	
602	150	18	
603	150	40	
604	150	27	
605	150	10	
606	151	82	
607	151	83	
608	151	84	
609	151	86	
610	152	413   	
611	152	409	
612	152	395	
613	152	492	
614	153	9	
615	153	6	
616	153	7	
617	153	8	
618	154	20	
619	154	11	
620	154	10	
621	154	19	
622	155	399 तथा  38      	
623	155	295 तथा 142 	
624	155	 58 तथा 379	
625	155	 323 तथा 114	
626	156	212    	
627	156	220	
628	156	218	
629	156	216	
630	157	84    	
631	157	42	
632	157	126	
633	157	70	
634	158	8 and 7	
635	158	6 and 9	
636	158	5 and 10	
637	158	3 and 12	
638	159	6	
639	159	7	
640	159	8	
641	159	9	
642	160	100000    	
643	160	999900	
644	160	100008	
645	160	100006	
646	161	165   	
647	161	185	
648	161	195	
649	161	 175	
650	162	1196    	
651	162	1296	
652	162	1331	
653	162	1276	
654	163	384	
655	163	285	
656	163	385	
657	163	380	
658	164	Rs. 48	
659	164	Rs. 36	
660	164	Rs. 60	
661	164	Rs. 64	
662	165	18	
663	165	20	
664	165	22	
665	165	24	
666	166	17	
667	166	19	
668	166	21	
669	166	23	
670	167	400	
671	167	600	
672	167	300	
673	167	500	
674	168	13/7	
675	168	20/91	
676	168	91/20	
677	168	13/20	
678	169	83	
679	169	92	
680	169	29	
681	169	38	
682	170	37	
683	170	84	
684	170	73	
685	170	62	
686	171	11	
687	171	2	
688	171	1	
689	171	10	
690	172	9	
691	172	10	
692	172	8	
693	172	7	
694	173	X+Y     	
695	173	X-Y	
696	173	X + Y +1	
697	173	XY	
698	174	2	
699	174	3	
700	174	4	
701	174	0	
702	175	2	
703	175	5	
704	175	6	
705	175	3	
706	176	6	
707	176	4	
708	176	2	
709	176	1	
710	177	6	
711	177	9	
712	177	7	
713	177	8	
714	178	18	
715	178	17	
716	178	19	
717	178	15	
718	179	35	
719	179	36	
720	179	44	
721	179	48	
722	180	14	
723	180	18	
724	180	16	
725	180	20	
726	181	173	
727	181	162	
728	181	183	
729	181	143	
730	182	0.0001	
731	182	0.001	
732	182	0.01	
733	182	0.1	
734	182	none	
735	183	7612.48 	
736	183	7352.48	
737	183	7532.68	
738	183	7642.58	
739	183	None	
2666	591	NONE	NONE
741	184	only 7	
742	184	only 11	
743	184	only 13 	
744	184	 1001	
745	184	none	
746	185	2	
747	185	3	
748	185	1	
749	185	97	
750	185	37	
751	186	3	
752	186	4	
753	186	5	
754	186	0	
755	186	none	
756	187	77	
757	187	88	
758	187	85	
759	187	90	
760	187	none	
761	188	03	
762	188	04	
763	188	60	
764	188	77	
765	188	40	
766	189	9	
767	189	7	
768	189	5	
769	189	3	
770	189	none	
771	190	3	
772	190	4	
773	190	5	
774	190	2	
775	190	none	
777	191	10037	
778	191	10086	
779	191	10081	
780	191	10063	
781	191	none	
782	192	13	
783	192	12	
784	192	11	
785	192	10	
786	192	24	
787	193	1	
788	193	0	
789	193	2	
790	193	3	
791	193	7	
792	194	2	
793	194	32	
794	194	40	
795	194	39	
796	194	6	
797	195	2	
798	195	32	
799	195	40	
800	195	39	
801	195	56	
802	196	12	
803	196	6	
804	196	3	
805	196	2	
806	196	8	
807	197	28	
808	197	16	
809	197	18	
810	197	40	
811	197	none	
812	198	4	
813	198	5	
814	198	6	
815	198	2	
816	198	9	
817	199	9240	
818	199	10080	
819	199	9996	
820	199	10000	
821	199	none	
822	200	14	
823	200	21	
824	200	22	
825	200	48	
826	200	none	
827	201	9690	
828	201	9720	
829	201	9930	
830	201	9960	
831	201	none	
832	202	13	
833	202	910	
834	202	1001	
835	202	1911	
836	202	none	
837	203	37	
838	203	36	
839	203	39	
840	203	30	
841	203	none	
842	204	8	
843	204	12	
844	204	24	
845	204	35	
846	204	none	
872	210	4	
873	210	2	
874	210	3	
875	210	5	
876	210	NONE	
877	211	75	
878	211	81	
879	211	85	
880	211	89	
881	211	NONE	
882	212	80	
883	212	79	
884	212	78	
885	212	81	
886	212	NONE	
887	213	280	
888	213	360	
889	213	240	
890	213	300	
891	213	NONE	
892	214	4	
893	214	8	
894	214	6	
895	214	2	
896	215	310	
897	215	329	
898	215	290	
899	215	125	
900	215	210	
901	216	0.08	
902	216	0.2	
903	216	0.8	
904	216	1	
905	216	NONE	
906	217	4	
907	217	8	
908	217	6	
909	217	2	
910	218	310	
911	218	329	
912	218	290	
913	218	125	
914	218	210	
915	219	0.08	
916	219	0.2	
917	219	0.8	
918	219	1	
919	219	None	
920	220	8	
921	220	6	
922	220	2	
923	220	All of the above 	
924	221	9	
925	221	7	
926	221	0	
927	221	NONE	
928	222	2	
929	222	1	
930	222	0	
931	222	3	
932	223	2	
933	223	1	
934	223	0	
935	223	3	
936	224	11	
937	224	13	
938	224	17	
939	224	19	
940	225	4	
941	225	6	
942	225	9	
943	225	1	
857	207	9	
862	208	420	
949	227	Rs.1000	
950	227	Rs.800	
863	208	448	
864	208	392	
865	208	476	
866	208	none	
867	209	252	
868	209	228	
869	209	304	
870	209	380	
871	209	none	
852	206	100796	
853	206	100256 	
854	206	100446	
855	206	101046	
856	206	none	
847	205	868600	
848	205	529200	
849	205	692600	
850	205	705600	
851	205	none	
951	227	Rs.500	
952	227	Rs.900	
953	227	None	
954	228	45%	
955	228	52.5%	
956	228	55%	
957	228	60%	
958	228	None	
959	229	180cm	
960	229	150cm	
961	229	90cm	
962	229	45cm	
963	229	None	
964	230	√3cm	
965	230	2√3cm	
966	230	3√2cm	
967	230	2√2cm	
968	230	None	
969	231	20:27	
970	231	20:17	
971	231	10:11	
972	231	20:29	
973	231	None	
974	232	6,12	
975	232	5,10	
976	232	4,8	
977	232	7,14	
978	232	None	
979	233	7	
980	233	6	
981	233	5	
982	233	4	
983	233	None	
984	234	8	
985	234	10	
986	234	15	
987	234	12	
988	234	None	
989	235	5√2	
990	235	2√5	
991	235	3√5	
992	235	5√3	
993	235	None	
994	236	396	
995	236	44	
996	236	99	
997	236	400	
998	236	None	
999	237	822	
1000	237	713	
1001	237	766	
1002	237	810	
1003	237	None	
1004	238	172	
1005	238	175	
1006	238	174	
1007	238	173	
1008	238	None	
1009	239	12	
1010	239	6	
1011	239	10	
1012	239	20	
1013	239	None	
1014	240	1/3	
1015	240	4/3	
1016	240	9/3	
1017	240	10/3	
1018	240	None	
1019	241	1300	
1020	241	1600	
1021	241	1900	
1022	241	2200	
1023	241	None	
1024	242	RGP	
1025	242	RGQ	
1026	242	RFP	
1027	242	RFQ	
1028	242	None	
1029	243	8% decrease	
1030	243	10% decrease	
1031	243	10% increase	
1032	243	8% increase	
1033	243	None	
1034	244	24	
1035	244	36	
1036	244	32	
1037	244	28	
1038	244	None	
1039	245	1/4	
1040	245	1/3	
1041	245	1/6	
1042	245	2/3	
1043	245	None	
1044	246	72.45	
1045	246	72	
1046	246	70.25	
1047	246	60	
1048	246	None	
1049	247	20rs	
1050	247	15rs	
1051	247	24rs	
1052	247	30rs	
1053	247	None	
1054	248	910m	
1055	248	920m	
1056	248	930m	
1057	248	940m	
1058	248	None	
1059	249	3/4 > ½ > 2/5  > 3/7	
1060	249	3/4 > ½ > 3/7  > 2/5	
1061	249	3/4 < ½ < 2/5 < 3/7	
1062	249	3/4 < ½ < 3/7 < 2/5	
1063	249	None	
1064	250	64	
1065	250	72	
1066	250	78	
1067	250	84	
1068	250	None	
1069	251	29700	
1070	251	30000	
1071	251	29800	
1072	251	29900	
1073	251	None	
1074	252	4/19	
1075	252	7/22	
1076	252	8/23	
1077	252	2/17	
1078	252	None	
1079	253	14-2744	
1080	253	18-5832	
1081	253	10-10000	
1082	253	19-6859	
1083	253	None	
1084	254	10min	
1085	254	6min	
1086	254	8min	
1087	254	9min	
1088	254	None	
1089	255	47.27	
1090	255	23.57	
1091	255	22.24	
1092	255	20.18	
1093	255	None	
1094	256	14days	
1095	256	15days	
1096	256	17days	
1097	256	18days	
1098	256	None	
1099	257	A	
1100	257	B	
1101	257	C	
1102	257	D	
1103	257	E	
1104	258	Twinkle	
1105	258	Twister	
1106	258	Trump	
1107	258	Trigger	
1108	259	ABC	
1109	259	MNO	
1110	259	RST	
1111	259	PQM	
1112	260	daughter	बेटी
1113	260	brother	भाई 
1114	260	mother	माॅं
1115	260	CND	
1116	261	TORMENT	
1117	261	RENT	
1118	261	TOUR 	
1119	261	TRAP	
1120	262	father	
1121	262	son	
1122	262	grandfather	
1123	262	brother	
1124	263	Monday	
1125	263	Tuesday	
1126	263	Wednesday	
1127	263	Thursday	
1128	264	Remorse	
1129	264	Truancy	
1130	264	Confinement	
1131	264	Mercy	
1132	265	Krishna	
1133	265	Bhagirathi	
1134	265	Yamuna	
1135	265	Brahmaputra	
1136	266	Ajanta	
1137	266	Ellora	
1138	266	Bhimbetka	
1139	266	Elephanta	
1140	267	Golgi apparatus	गाॅल्जी उपकरण 
1141	267	reticulum 	 अन्तः प्रदव्ययी जलिका 
1142	267	Red blood cells	लाल रक्त कोशिका
1143	267	 Leukocytes	 ल्यूकोसाइट्स
1144	268	Dinkar Gupta	
1145	268	Suresh Arora 	
1146	268	Rakesh Madan	
1147	268	Anil Srivastava	
1148	269	Bangladesh 	
1149	269	China	
1150	269	 Pakistan 	
1151	269	Sri Lanka	
1152	270	Cannes, France	
1153	270	Los Angeles, USA	
1154	270	Morocco\t	
1155	270	London, England	
1156	271	Colorless oily liquid	रंगहीन तैलीय द्रव
1157	271	Produced by nitrating glycerol with white fuming nitric acid	 सफेद फयूमिंग नाइटिृक एसिड के साथ ग्लिसराॅल के नाइटृीकरण द्वारा उत्पादित
1158	271	Explosive in nature	 प्रकृति में विस्फोटक 
1159	271	All of these	 सभी
1160	272	Malaysiya	
1161	272	india	
1162	272	japan	
1163	272	singapore	
1164	272	none	
1165	273	Andrew Harris\t	
1166	273	Corentin Moutet	
1167	273	Rohan Bopanna\t	
1168	273	Rafael Nadal	
1169	274	Secret Government Informations	गुप्त सरकारी जानकारी
1170	274	Black Money	काला धन 
1171	274	Industrial Reforms	औद्योगिक सुधार 
1172	274	Inlinking of Rivers	 नदी जोड़ों 
1173	275	Legislature	विधान मंडल
1174	275	Judiciary	 न्यायतंत्र 
1175	275	Executive Council	 आधिकारिक परिषद
1176	275	Media	 मीडिया
1177	276	Dadabhai Naoroji 	
1178	276	Gopal Krishna Gokhale 	
1179	276	Lala Lajpat Rai	
1180	276	Bal Gangadhar Tilak	
1181	277	444	
1182	277	397	
1183	277	395	
1184	277	398	
1185	278	Insulator 	
1186	278	 Semi-Conductor	
1187	278	 Metal 	
1188	278	 None	
1189	279	Estate duty	
1190	279	 Custom duty	
1191	279	 Corporation Tax	
1192	279	All of these	
1193	280	Karbi Anglong, Assam\t	
1194	280	Korba, Chattisgarh 	
1195	280	Rajgir, Bihar	
1196	280	Mysore, Karnataka	
1197	281	Odyssey	
1198	281	Kuchipudi	
1199	281	Bharatanatyam\t	
1200	281	Kathakali	
1201	282	Friedrich Miescher\t	
1202	282	James Watson 	
1203	282	Francis Crick	
1204	282	Both James Watson and Francis Crick	
1205	283	Chloroplasts	
1206	283	Leucoplasts	
1207	283	Protoplasts 	
1208	283	Chromoplasts	
1209	284	USA	
1210	284	Finland	
1211	284	India	
1212	284	China	
1213	285	Wales	
1214	285	Hungary 	
1215	285	Holland	
1216	285	Rumania	
1217	286	Ahmed Shah I\t	
1218	286	Mahmud Begda 	
1219	286	Mujaffarshah I	
1220	286	 Mujaffarshah II	
1221	287	Shamsul Akbaar	
1222	287	Bombay Samachar 	
1223	287	Bengal Gazette 	
1224	287	Samachar Chandrika	
1225	288	renewable 	नवीकरणीय
1226	288	non-renewable	 गैर नवीकरणीय 
1227	288	generating	 उत्पादक 
1228	288	producing	 उत्पादन
1229	289	Cornea\t	
1230	289	Ciliary muscles	
1231	289	Iris	
1232	289	Crystalline lens	
1233	290	78	
1234	290	73	
1235	290	75	
1236	290	82	
1237	290	84	
1238	291	34	
1239	291	25	
1240	291	27	
1241	291	30	
1242	291	32	
1243	292	100	
1244	292	110	
1245	292	111	
1246	292	151	
1247	292	121	
1248	293	J	
1249	293	K	
1250	293	L	
1251	293	H	
1252	293	I	
1253	294	HR	
1254	294	GS	
1255	294	EV	
1256	294	FT	
1257	294	IQ	
1258	295	hijk	
1259	295	FGHI	
1260	295	NOPQ	
1261	295	HIJK	
1262	295	PNmk	
1263	296	MNPQ	
2667	592	6000	6000
1265	296	STUV	
1266	296	KMOX	
1267	296	TVXZ	
1268	297	4523	
1269	297	5324	
1270	297	3452	
1271	297	2345	
1272	297	5342	
1273	298	LNO	
1274	298	EFH	
1275	298	KLM	
1276	298	VXY	
1277	298	RPO	
1278	299	abaab	
1279	299	baabb	
1280	299	ababa	
1281	299	bbaab	
1282	299	aabba	
1283	300	27	
1284	300	28	
1285	300	29	
1286	300	36	
1287	300	none	
1288	301	NMLK	
1289	301	RQPO	
1290	301	UTSR	
1291	301	WXUV	
1292	301	DCBA	
1293	302	Door	
1294	302	Gate	
1295	302	Table	
1296	302	Window	
1297	302	none	
1298	303	50	
1299	303	55	
1300	303	56	
1301	303	57	
1302	303	none	
2668	592	6125	6125
2669	592	6250	6250
2670	592	6200	6200
2671	592	NONE	NONE
2677	594	13837	13837
2678	594	52000	52000
2679	594	55350	55350
2680	594	56775	56775
2681	594	NONE	NONE
2682	595	41	41
2683	595	50	50
1419	330	7 days	7 days
1315	307	agra	
1316	307	tokyo	
1317	307	osaka	
1318	307	bangaluru	
1319	308	March 31, 2019 	
1320	308	 31MARCH 2020 	
1321	308	march 31 , 2021	
1322	308	march 31, 2022	
1323	309	Gujrat	
1324	309	Delhi	
1325	309	Haryana	
1326	309	Maharashtra	
1327	310	India	
1328	310	China	
1329	310	Thailand	
1330	310	Japan	
1331	311	Girish Pillai 	
1332	311	Ghanshyam Singh	
1333	311	Vinod Kumar Yadav 	
1334	311	 Alok Verma	
1335	312	GOLDEN BUS 	
1336	312	 Leopard 	
1337	312	 Deer	
1338	312	 Turtle	
1339	313	India-Singapore	
1340	313	India-Japan 	
1341	313	India-Russia 	
1342	313	 None	
1343	314	28th 	
1344	314	43rd 	
1345	314	58th	
1346	314	72nd	
1347	314	none	
1348	315	Jammu and Kashmir  	
1349	315	Mizoram	
1350	315	Manipur	
1351	315	Nagaland	
1352	315	none	
1353	316	Tiger Year	बाघ वर्ष 
1354	316	 Pig Year	शूकर वर्ष 
1355	316	 Serpent Year	सर्प वर्ष 
1356	316	 Horse Year	 अश्व वर्ष
1357	317	World Homeopathy Day 	
1358	317	World Diabetes Day 	
1359	317	Mass Drug Day	
1360	317	 None of these	
1361	318	4000 	
1362	318	 4291 	
1363	318	4447	
1364	318	 4791	
1365	318	5000	
1366	319	L	
1367	319	I	
1368	319	M	
1369	319	P	
1370	319	O	
1371	320	ONE	
1372	320	TWO	
1373	320	THREE	
1374	320	MORE THAN THREE	
1375	320	NONE	
1376	321	Z 13 Q	
1377	321	Y 13 P	
1378	321	Y 15 Q 	
1379	321	Y 13 Q	
1380	321	X 15 Y	
1381	322	East	
1382	322	North-East	
1383	322	North-West 	
1384	322	South	
1385	322	None 	
1386	323	22	
1387	323	21	
1388	323	20	
1389	323	19	
1390	323	18	
1391	324	17	
1392	324	18	
1393	324	19	
1394	324	20	
1395	324	21	
1396	325	65	
1397	325	97	
1398	325	46	
1399	325	80	
1400	325	100	
1401	326	All numbers except 5 and 7 	
1402	326	Only by 2, 3, 6 and 9 	
1403	326	Only by 2, 3 and 6  	
1404	326	All numbers except 5	
1405	327	56	
1406	327	113	
1407	327	115	
1408	327	120	
1409	328	WIX  	
1410	328	MXI\t	
1411	328	MIX  	
1412	328	XIW 	
1413	328	 XIM	
1264	296	OQST	
1424	331	6:1	6:1
1425	331	2:3	2:3
1426	331	3:2	3:2
1427	331	7:2	7:2
1428	331	None	None
1429	332	456	456
1430	332	454	454
1431	332	540	540
1432	332	544	544
1433	332	None	None
1434	333	214344	214344
1435	333	214434	214434
1436	333	213444	213444
1437	333	231444	231444
1438	333	None	None
1439	334	12 mid night	
1440	334	3 a.m.	
1441	334	6 a.m.	
1442	334	9 a.m.	
1420	330	8days	8days
1421	330	10days	10days
1422	330	12days	12days
1443	334	None of these	
1444	335	840	840
1445	335	841	841
1446	335	820	820
1447	335	814	814
1448	335	None	None
1453	337	115	115
1454	337	116	116
1455	337	114	114
1456	337	120	120
1457	338	540	540
1458	338	585	585
1459	338	720	720
1460	338	765	765
1461	339	2/63	2/63
1462	339	1/28	1/28
1463	339	8/27	8/27
1464	339	16/63	16/63
1465	340	36	36
1466	340	32	32
1467	340	30	30
1468	340	48	48
1469	341	x³ - y³	x³ - y³
1470	341	x³	x³
1471	341	y³	y³
1472	341	x³ + y³	x³ + y³
1473	342	11	11
1474	342	8	8
1475	342	6	6
1476	342	7	7
1477	343	10	10
1478	343	12	12
1479	343	15	15
1480	343	18	18
1493	347	110 days	110 days
1494	347	120 days	120 days
1495	347	111 days	111 days
1496	347	150 days	150 days
1497	348	A-30 days, B-20days, C-10days	A-30 days, B-20days, C-10days
1498	348	A-35 days, B-10days, C-22days	A-35 days, B-10days, C-22days
1499	348	A-40 days, B-25days, C-15days	A-40 days, B-25days, C-15days
1500	348	A-35 days, B-25days, C-30days	A-35 days, B-25days, C-30days
1505	350	26	26
1506	350	22	22
1507	350	25	25
1508	350	20	20
1509	351	80	80
1510	351	60	60
1511	351	90	90
1512	351	70	70
1513	352	35	35
1514	352	30	30
1515	352	45	45
1516	352	40	40
1517	353	18(4/6) days	18(4/6) days
1518	353	18(2/5) days	18(2/5) days
1519	353	18(1/4) days	18(1/4) days
1520	353	18(1/6) days	18(1/6) days
1521	354	108 days	108 days
1522	354	105 days	105 days
1523	354	144 days	144 days
1524	354	100 days	100 days
1525	355	28	28
1526	355	30	30
1527	355	29	29
1528	355	35	35
1529	356	25(1/3)	25(1/3)
1530	356	25(1/6)	25(1/6)
1531	356	25(1/5)	25(1/5)
1532	356	25(1/4)	25(1/4)
1533	357	37(1/5)	37(1/5)
1534	357	37(1/4)	37(1/4)
1535	357	37(1/2)	37(1/2)
1536	357	37(1/6)	37(1/6)
1537	358	10 days	10 days
1538	358	13 days	13 days
1539	358	18 days	18 days
1540	358	15 days	15 days
1541	359	15 days	15 days
1542	359	11 days	11 days
1543	359	18 days	18 days
1544	359	10 days	10 days
1545	360	7	7
1546	360	6	6
1547	360	9	9
1548	360	10	10
1549	361	24	24
1550	361	15	15
1551	361	20	20
1552	361	16	16
1553	362	A-12 days, B-28 days	A-12 days, B-28 days
1554	362	A-14 days, B-23 days	A-14 days, B-23 days
1555	362	A-16 days, B-20 days	A-16 days, B-20 days
1556	362	A-18 days, B-22 days	A-18 days, B-22 days
1557	363	A-12 days, B-28 days	A-12 days, B-28 days
1558	363	A-15 days, B-35 days	A-15 days, B-35 days
1559	363	A-14 days, B-32 days	A-14 days, B-32 days
1560	363	A-10 days, B-30 days	A-10 days, B-30 days
1561	364	13(1/4)	13(1/4)
1562	364	13(1/5)	13(1/5)
1563	364	13(1/3)	13(1/3)
1564	364	13(1/7)	13(1/7)
1565	365	A-95days, B-60(1/2) days	A-95days, B-60(1/2) days
1566	365	A-98days, B-64(3/4) days	A-98days, B-64(3/4) days
1567	365	A-95days, B-66(2/3) days	A-100days, B-66(2/3) days
1568	365	A-99days, B-68(3/6) days	A-99days, B-68(3/6) days
1569	366	12(1/7)	12(1/7)
1570	366	12(2/9)	12(2/9)
1571	366	12(3/5)	12(3/5)
1572	366	12(4/6)	12(4/6)
1577	368	a+b+1	a+b+1
1578	368	a+b	a+b
1579	368	ab	ab
1580	368	ab+2	ab+2
1581	369	11	11
1582	369	13	13
1583	369	12	12
1584	369	17	17
1585	370	2525	2525
1586	370	2500	2500
1587	370	1250	1250
1588	370	5000	5000
1449	336	25days	25days
1450	336	28days	28days
1451	336	28days	28days
1452	336	30days	30days
1485	345	10 days	10 days
1486	345	15days	15days
1487	345	12days	12days
1488	345	18 days	18 days
1489	346	6(1/3)	6(1/3)
1490	346	8(1/5)	8(1/5)
1491	346	8(1/4)	8(1/4)
1492	346	8(1/7)	8(1/7)
1589	371	10(1/3)	10(1/3)
1590	371	12(2/3)	12(2/3)
1591	371	13(1/3)	13(1/3)
1573	367	24	24
1574	367	27	27
1575	367	20	20
1576	367	16	16
1481	344	30 days	30 days
1482	344	35days	35days
1483	344	25 days	25 days
1484	344	20 days	20 days
1593	372	-1	-1
1594	372	-1000	-1000
1595	372	-10000	-10000
1596	372	-100000	-100000
1597	373	155	155
1598	373	145	145
1599	373	75	75
1600	373	65	65
1601	374	8	8
1602	374	10	10
1603	374	11	11
1604	374	12	12
1605	374	None	None
1606	375	7days	7days
1607	375	8days	8days
1608	375	10days	10days
1609	375	12days	12days
1610	375	None	None
1611	376	116	116
1612	376	122	122
1613	376	124	124
1614	376	126	126
1615	376	None	None
1616	377	20 men	20 men
1617	377	30men	30men
1618	377	40men	40men
1619	377	50men	50men
1620	377	Nne	Nne
1621	378	1day	1day
1622	378	2days	2days
1623	378	3days	3days
1624	378	4days	4days
1625	378	None	None
1626	379	10hrs	10hrs
1627	379	12hrs	12hrs
1628	379	14hrs	14hrs
1629	379	16hrs	16hrs
1630	379	None	None
1631	380	45min	45min
1632	380	60min	60min
1633	380	75min	75min
1634	380	90min	90min
1635	380	None	None
1636	381	42min	42min
1637	381	45min	45min
1638	381	48min	48min
1639	381	CND	CND
1640	381	None	None
1641	382	15(1/7) hrs	15(1/7) hrs
1642	382	17(1/7)hrs	17(1/7)hrs
1643	382	19(1/7)hrs	19(1/7)hrs
1644	382	19(2/7)hrs	19(2/7)hrs
1645	382	None	None
1646	383	5days	5days
1647	383	10days	10days
1648	383	6days	6days
1649	383	12days	12days
1650	383	None	None
1651	384	3(3/7) days	3(3/7) days
1652	384	2(3/7) days	2(3/7) days
1653	384	4(3/7) days	4(3/7) days
1654	384	3(3/5) days	3(3/5) days
1655	384	None	None
1656	385	3days	3days
1657	385	6days	6days
1658	385	5days	5days
1659	385	8days	8days
1660	385	None	None
1661	386	6days	6days
1662	386	3days	3days
1663	386	5days	5days
1664	386	4days	4days
1665	386	None	None
1666	387	6(1/3)days	6(1/3)days
1667	387	6(1/5)days	6(1/5)days
1668	387	6(1/4)days	6(1/4)days
1669	387	6(1/7)days	6(1/7)days
1670	387	None	None
1671	388	25days	25days
1672	388	28days	28days
1673	388	32days	32days
1674	388	30days	30days
1675	388	None	None
1676	389	10days	10days
1677	389	14days	14days
1678	389	12days	12days
1679	389	18days	18days
1680	389	None	None
1681	390	8(1/4)hrs	8(1/4)hrs
1682	390	8(1/2)hrs	8(1/2)hrs
1683	390	8(1/6)hrs	8(1/6)hrs
1684	390	8(1/3)hrs	8(1/3)hrs
1685	390	None	None
1686	391	10(1/3)	10(1/3)
1687	391	12(2/3)	12(2/3)
1688	391	13(1/3)	13(1/3)
1689	391	8(1/4)	8(1/4)
1690	391	None	None
1691	392	60days	60days
1692	392	62days	62days
1693	392	64days	64days
1694	392	67days	67days
1695	392	None	None
1696	393	44	44
1697	393	33	33
1698	393	22	22
1699	393	11	11
1700	393	None	None
1701	394	9(3/8) days	9(3/8) days
1702	394	4(3/8) days	4(3/8) days
1703	394	8(4/13) days	8(4/13) days
1704	394	3(9/13) days	3(9/13) days
1705	394	None	None
1706	395	10(2/3) days	10(2/3) days
1707	395	10(1/2) days	10(1/2) days
1708	395	10(1/4) days	10(1/4) days
1709	395	10(1/3) days	10(1/3) days
1710	395	None	None
1711	396	6(3/2) days	6(3/2) days
1712	396	3(3/4) days	3(3/4) days
1713	396	9(9/4) days	9(9/4) days
1714	396	3(1/4) days	3(1/4) days
1715	396	None	None
1716	397	48(7/30) days	48(7/30) days
1717	397	48(6/20) days	48(6/20) days
1718	397	48(8/29) days	48(8/29) days
1719	397	48(5/23) days	48(5/23) days
1720	397	None	None
1721	398	95 days	95 days
1722	398	98 days	98 days
1723	398	100 days	100 days
1724	398	99 days	99 days
1725	398	None	None
1726	399	6(13/15) days	6(13/15) days
1727	399	8 days	8 days
1728	399	12(11/17) days	12(11/17) days
1729	399	5(7/11) days	5(7/11) days
1730	399	None	None
1731	400	20	20
1732	400	10	10
1733	400	15	15
1734	400	5	5
1735	400	None	None
1736	401	75	75
1737	401	100	100
1738	401	125	125
1739	401	50	50
1740	401	None	None
1741	402	2hr 55min	2hr 55min
1742	402	3hr 40min	3hr 40min
1743	402	4hr 48min	4hr 48min
1744	402	5hr 53min	5hr 53min
1745	402	None	None
1746	403	5	5
1747	403	4	4
1748	403	6	6
1749	403	8	8
1750	403	None	None
1751	404	55	55
1752	404	35	35
1753	404	25	25
1754	404	15	15
1755	404	None	None
1756	405	4(1/2)	4(1/2)
1757	405	6(6/7)	6(6/7)
1758	405	6(5/6)	6(5/6)
1759	405	6(2/3)	6(2/3)
1760	405	None	None
1761	406	abcba	abcba
1762	406	aadcb	aadcb
1763	406	bacab	bacab
1764	406	bcaab	bcaab
1765	406	None	None
1766	407	aabca	aabca
1767	407	abaca	abaca
1768	407	bacab	bacab
1769	407	bcaca	bcaca
1770	407	None	None
1771	408	16	16
1772	408	14	14
1773	408	18	18
1774	408	20	20
1775	408	None	None
1776	409	98999	98999
1777	409	99899	99899
1778	409	99989	99989
1779	409	99998	99998
1780	409	None	None
1781	410	9	9
1782	410	7	7
1783	410	4	4
1784	410	3	3
1785	410	None	None
1786	411	5	5
1787	411	3	3
1788	411	2	2
1789	411	1	1
1790	412	59	59
1791	412	98	98
1792	412	123	123
1793	412	138	138
1794	413	1	1
1795	413	2	2
1796	413	0	0
1797	413	4	4
1798	414	549.5	549.5
1799	414	550.5	550.5
1800	414	649.5	649.5
1801	414	848.4	848.4
1802	414	NONE OF THESE	NONE OF THESE
1803	415	81min	81min
1804	415	108min	108min
1805	415	144min	144min
1806	415	192min	192min
1807	415	None of these	None of these
1808	416	2	2
1809	416	4	4
1810	416	3	3
1811	416	5	5
1812	416	None of these	None of these
1813	417	7	7
1814	417	14	14
1815	417	28	28
1816	417	21	21
1817	417	None of these	None of these
1818	420	42min	42min
1819	420	45min	45min
1820	420	48min	48min
1821	420	Can not be determine	Can not be determine
1822	420	None of these	इनमें से कोई नहीं
1823	421	12 men	12 men
1824	421	20 men	20 men
1825	421	16 men	16 men
1826	421	10 men	10 men
1827	421	None of these	None of these
1828	422	3 days	3 days
1829	422	4 days	4 days
1830	422	2.5 days	2.5 days
1831	422	3.6 days	3.6 days
1832	422	None of these	None of these
1833	423	12 days	12 days
1834	423	18 days	18 days
1835	423	36 days	36 days
1836	423	30 days	30 days
1837	423	None of these	None of these
1838	424	72 days	72 days
1839	424	20 days	20 days
1840	424	24 days	24 days
1841	424	36 days	36 days
1842	424	None of these	None of these
1843	425	Rs. 4,250 	Rs. 4,250 
1844	425	Rs. 3,450	Rs. 3,450
1845	425	Rs. 1,950	Rs. 1,950
1846	425	Rs. 2,290	Rs. 2,290
1847	425	None of these	None of these
1848	426	48	48
1849	426	56	56
1850	426	40	40
1851	426	50	50
1852	426	None of these	None of these
1853	427	10 days	10 days
1854	427	14 days	14 days
1855	427	12 days	12 days
1856	427	18 days	18 days
1857	427	None of these	None of these
1858	428	A-12days, B-28days	A-12days, B-28days
1859	428	A-14days, B-23days	A-14days, B-23days
1860	428	A-16days, B-20days	A-16days, B-20days
1861	428	A-18days, B-22days	A-18days, B-22days
1862	428	None of these	None of these
1863	429	37(1/5) days	37(1/5) days
1864	429	37(1/4) days	37(1/4) days
1865	429	37(1/2) days	37(1/2) days
1866	429	37(1/6) days	37(1/6) days
1867	429	None of these	None of these
1868	430	12 hr	12 hr
1869	430	21 hr	21 hr
1870	430	6(1/2) hr	6(1/2) hr
1871	430	10(1/2) hr	10(1/2) hr
1872	430	None of these	None of these
1873	431	36 min	36 min
1874	431	42 min	42 min
1875	431	48 min	48 min
1876	431	44 min	44 min
1877	431	None of these	None of these
1878	432	15 min	15 min
1879	432	10 min	10 min
1880	432	5 min	5 min
1881	432	9 min	9 min
1882	432	None of these	None of these
1883	433	06hr : 15min 	06hr : 15min 
1884	433	08hr : 20min 	08hr : 20min 
1885	433	07hr : 15min 	07hr : 15min 
1886	433	05hr : 20min 	05hr : 20min 
1887	433	None of these	None of these
1888	434	6 min empty	6 min खाली
1889	434	13(1/3) min full	13(1/3) min भरने
1890	434	13(1/3) min empty	13(1/3) min खाली
1891	434	9 min full	9 min भरने
1892	434	None of these	None of these
1893	435	12:35 am	12:35 am
1894	435	12:45 pm	12:45 pm
1895	435	12:30 pm	12:30 pm
1896	435	12:55 pm	12:55 pm
1897	435	None of these	None of these
1898	436	121 min	121 min
1899	436	110 min	110 min
1900	436	115 min	115 min
1901	436	120 min	120 min
1902	436	None of these	None of these
1903	437	2:3:16	2:3:16
1904	437	3:2:16	3:2:16
1905	437	10:15:18	10:15:18
1906	437	15:10:18	15:10:18
1907	437	None of these	None of these
1908	438	1139	1139
1909	438	1189	1189
1910	438	1289	1289
1911	438	1239	1239
1912	438	None of these	None of these
1913	439	41.64660	41.64660
1914	439	42.479532	42.479532
1915	439	49.97592	49.97592
1916	439	58.7952	58.7952
1917	439	None of these	None of these
1918	440	30	30
1919	440	60	60
1920	440	80	80
1921	440	100	100
1922	440	None of these	None of these
1923	441	7612.48	7612.48
1924	441	7352.48	7352.48
1925	441	7532.68	7532.68
1926	441	7642.58	7642.58
1927	441	None of these	None of these
1928	442	23.43	23.43
1929	442	-23.43	-23.43
1930	442	21.43	21.43
1931	442	-21.43	-21.43
1932	442	None of these	None of these
1933	443	6	6
1934	443	8	8
1935	443	9	9
1936	443	7	7
1937	443	None of these	None of these
1938	444	Option A	Option A
1939	444	Option B	Option B
1940	444	Option C	Option C
1941	444	Option D	Option D
1942	445	2	2
1943	445	4	4
1944	445	3	3
1945	445	1	1
1946	445	None of these	None of these
1947	446	25	25
1948	446	26	26
1949	446	42	42
1950	446	41	41
1951	446	None of these	None of these
1952	447	5000	5000
1953	447	4950	4950
1954	447	4980	4980
1955	447	4900	4900
1956	447	None of these	None of these
1957	448	966	966
1958	448	696	696
1959	448	669	669
1960	448	666	666
1961	448	None of these	None of these
1962	449	70	70
1963	449	1690	1690
1964	449	364	364
1965	449	1264	1264
1966	449	None of these	None of these
1967	450	5	5
1968	450	15	15
1969	450	45	45
1970	450	270	270
1971	450	None of these	None of these
1972	451	900	900
1973	451	1600	1600
1974	451	2500	2500
1975	451	3600	3600
1976	451	None of these	None of these
1977	452	32	32
1978	452	64	64
1979	452	25	25
1980	452	16	16
1981	452	None of these	None of these
1982	453	8(1/3)%	8(1/3)%
1983	453	8(2/3)%	8(2/3)%
1984	453	8.5%	8.5%
1985	453	9%	9%
1986	453	None of these	None of these
1987	454	Rs.3000	Rs.3000
1988	454	Rs.6000	Rs.6000
1989	454	Rs.4500	Rs.4500
1990	454	Cannot be determine	निर्धारित नहीं किया जा सकता
1991	454	None of these	None of these
1992	455	100	100
1993	455	160	160
1994	455	180	180
1995	455	200	200
1996	455	None of these	None of these
1997	456	35	35
1998	456	80	80
1999	456	20	20
2000	456	10	10
2001	456	None of these	None of these
2002	457	64% decrease	64% कमी
2003	457	64% increase	64% वृद्धि
2004	457	44% decrease	44% कमी
2005	457	44% increase	44% वृद्धि
2006	457	None of these	None of these
2007	458	25	25
2008	458	45	45
2009	458	50	50
2010	458	80	80
2011	458	None of these	None of these
2012	459	14%	14%
2013	459	14.28%	14.28%
2014	459	16.66%	16.66%
2015	459	7.14%	7.14%
2016	459	None of these	None of these
2017	460	1 : 3	1 : 3
2018	460	1 : 4	1 : 4
2019	460	1 : 10	1 : 10
2020	460	1 : 5	1 : 5
2021	460	None of these	None of these
2022	461	200	200
2023	461	400	400
2024	461	500	500
2025	461	600	600
2026	461	None of these	None of these
2027	462	3(1/13)%	3(1/13)%
2028	462	4%	4%
2029	462	4(1/13)%	4(1/13)%
2030	462	3(11/13)%	3(11/13)%
2031	462	None of these	None of these
2032	463	4% decrease	4% कमी
2033	463	4% increase	4% वृद्धि
2034	463	8% decrease	8% कमी
2035	463	neither decrease or increase	न कमी न वृद्धि
2036	463	None of these	None of these
2037	464	7.218	7.218
2038	464	7.291	7.291
2039	464	8.3	8.3
2040	464	8.24	8.24
2041	464	None of these	None of these
2042	465	77	77
2043	465	60	60
2044	465	42	42
2045	465	25	25
2046	465	None of these	None of these
2047	466	4221	4221
2048	466	4942	4942
2049	466	5642	5642
2050	466	6328	6328
2051	466	None of these	None of these
2052	467	882	882
2053	467	1008	1008
2054	467	828	828
2055	467	756	756
2056	467	None of these	None of these
2057	468	54	54
2058	468	42	42
2059	468	63	63
2060	468	72	72
2061	468	None of these	None of these
2062	469	152	152
2063	469	108	108
2064	469	72	72
2065	469	162	162
2066	469	None of these	None of these
2067	470	6400	6400
2068	470	80	80
2069	470	60	60
2070	470	900	900
2071	470	None of these	None of these
2072	471	6 (2/3) %	6 (2/3) %
2073	471	16 (2/3) %	16 (2/3) %
2074	471	83 (1/3) %	83 (1/3) %
2075	471	8.33 %	8.33 %
2076	471	None of these	None of these
2077	472	400 % of a/100	400 % of a/100
2078	472	40 % of a/100	40 % of a/100
2079	472	400 % of a/10	400 % of a/10
2080	472	40 % of a	40 % of a
2081	472	None of these	None of these
2082	473	200%	200%
2083	473	100%	100%
2084	473	300%	300%
2085	473	400%	400%
2086	473	None of these	None of these
2087	474	28 : 25	28 : 25
2088	474	26 : 25	26 : 25
2089	474	14 : 27	14 : 27
2090	474	27 : 14	27 : 14
2091	474	None of these	None of these
2092	475	91 (3/4) %	91 (3/4) %
2093	475	91 (2/3) %	91 (2/3) %
2094	475	91 (1/3) %	91 (1/3) %
2095	475	90 (2/3) %	90 (2/3) %
2096	475	None of these	None of these
2097	476	24	24
2098	476	84	84
2099	476	60	60
2100	476	36	36
2101	476	None of these	None of these
2102	477	40 %	40 %
2103	477	80 %	80 %
2104	477	48.8 %	48.8 %
2105	477	51.2 %	51.2 %
2106	477	None of these	None of these
2107	478	62500	62500
2108	478	63000	63000
2109	478	64756	64756
2110	478	65200	65200
2111	478	None of these	None of these
2112	479	64 rs	64 rs
2113	479	128 rs	128 rs
2114	479	256 rs	256 rs
2115	479	945 rs	945 rs
2116	479	None of these	None of these
2117	480	100 √2 %	100 √2 %
2118	480	100 √2 - 1 %	100 √2 - 1 %
2119	480	100 √2 + 1 %	100 √2 + 1 %
2120	480	50 √2 + 1 %	50 √2 + 1 %
2121	480	None of these	None of these
2122	481	6 : 1 : 2	6 : 1 : 2
2123	481	2 : 4 : 1	2 : 4 : 1
2124	481	4 : 1 : 5	4 : 1 : 5
2125	481	2 : 5 : 4	2 : 5 : 4
2126	481	None of these	None of these
2127	482	350	350
2128	482	300	300
2129	482	250	250
2130	482	200	200
2131	482	None of these	None of these
2132	483	15 %	15 %
2133	483	33.33 %	33.33 %
2134	483	17.5 % 	17.5 % 
2135	483	16.66 %	16.66 %
2136	483	None of these	None of these
2137	484	58.2	58.2
2138	484	58.8	58.8
2139	484	58.6	58.6
2140	484	60.4	60.4
2141	484	None of these	None of these
2142	485	20 % of a/2	20 % of a/2
2143	485	50 % of a/20	50 % of a/20
2144	485	50 % of a/2	50 % of a/2
2145	485	20 % of a/20	20 % of a/20
2146	485	None of these	None of these
2147	486	64 % decrease	64 % कमी
2148	486	64 % increase	64 % वृद्धि
2149	486	36 % decrease	36 % कमी
2150	486	36 % increase	36 % वृद्धि
2151	486	None of these	None of these
2152	487	50	50
2153	487	60	60
2154	487	75	75
2155	487	90	90
2156	487	None of these	None of these
2157	488	2	2
2158	488	2.5	2.5
2159	488	3	3
2160	488	3.5	3.5
2161	488	None of these	None of these
2162	489	30	30
2163	489	40.5	40.5
2164	489	60.5	60.5
2165	489	121	121
2166	489	None of these	None of these
2167	490	11.15	11.15
2168	490	1.115	1.115
2169	490	1115	1115
2170	490	0.1115	0.1115
2171	490	None of these	None of these
2172	491	433 (1/3) rs. 	433 (1/3) rs. 
2173	491	433 rs	433 rs
2174	491	530 rs	530 rs
2175	491	550 rs	550 rs
2176	491	None of these	None of these
2177	492	7/2	7/2
2178	492	2/7	2/7
2179	492	5/7	5/7
2180	492	7/8	7/8
2181	492	None of these	None of these
2182	493	239	239
2183	493	241	241
2184	493	243	243
2185	493	222	222
2186	493	None of these	None of these
2187	494	130	130
2188	494	175	175
2189	494	360	360
2190	494	350	350
2191	494	None of these	None of these
2192	495	7 (1/2) days 	7 (1/2) days 
2193	495	15 days	15 days
2194	495	7 days	7 days
2195	495	8 days	8 days
2196	495	None of these	None of these
2197	496	40 hrs	40 hrs
2198	496	20 hrs	20 hrs
2199	496	30 hrs	30 hrs
2200	496	50 hrs	50 hrs
2201	496	None of these	None of these
2202	497	6 (58/107) %	6 (58/107) %
2203	497	1 (7/100) % 	1 (7/100) % 
2204	497	7 %	7 %
2205	497	2 (58/107) %	2 (58/107) %
2206	497	None of these	None of these
2207	498	648	648
2208	498	1800	1800
2209	498	2700	2700
2210	498	10800	10800
2211	498	None of these	None of these
2212	499	4 days	4 days
2213	499	3 days	3 days
2214	499	5 days	5 days
2215	499	8 days	8 days
2216	499	None of these	None of these
2217	500	12	12
2218	500	10	10
2219	500	8	8
2220	500	16	16
2221	500	None of these	None of these
2222	501	9	9
2223	501	10	10
2224	501	13	13
2225	501	11	11
2226	501	None of these	None of these
2227	502	80	80
2228	502	79	79
2229	502	78	78
2230	502	81	81
2231	502	None of these	None of these
2232	503	2.7	2.7
2233	503	27	27
2234	503	0.27	0.27
2235	503	270	270
2236	503	None of these	None of these
2237	504	480	480
2238	504	48	48
2239	504	4800	4800
2240	504	4.8	4.8
2241	504	None of these	None of these
2242	505	86 days	86 days
2243	505	88 days	88 days
2244	505	80 days	80 days
2245	505	82 days	82 days
2246	505	None of these	None of these
2247	506	2700	2700
2248	506	27000	27000
2249	506	9000	9000
2250	506	270	270
2251	507	Option A	Option A
2252	507	Option B	Option B
2253	507	Option C	Option C
2254	507	Option D	Option D
2255	508	5 days	5 days
2256	508	10 days	10 days
2257	508	2.5 days	2.5 days
2258	508	7.5 days	7.5 days
2259	508	None of these	None of these
2260	509	125	125
2261	509	130	130
2262	509	135	135
2263	509	145	145
2264	509	None of these	None of these
2265	510	400	400
2266	510	408	408
2267	510	404	404
2268	510	412	412
2269	510	None of these	None of these
2270	511	27² + 93² 	27² + 93² 
2271	511	34² + 93² 	34² + 93² 
2272	511	82² + 41² 	82² + 41² 
2273	511	79² + 62² 	79² + 62² 
2274	511	None of these	None of these
2275	512	150	150
2276	512	175	175
2277	512	125	125
2278	512	160	160
2279	512	None of these	None of these
2280	513	80 min	80 min
2281	513	20 min	20 min
2282	513	40 min	40 min
2283	513	100 min	100 min
2284	513	None of these	None of these
2285	514	78	78
2286	514	79.2	79.2
2287	514	75.8	75.8
2288	514	79	79
2289	514	None of these	None of these
2290	515	2	2
2291	515	4	4
2292	515	1	1
2293	515	3	3
2294	515	None of these	None of these
2295	516	50	50
2296	516	60	60
2297	516	100	100
2298	516	80	80
2299	516	None	None
2300	517	30000	30000
2301	517	40000	40000
2302	517	20000	20000
2303	517	10000	10000
2304	517	None	None
2305	518	200	200
2306	518	300	300
2307	518	400	400
2308	518	450	450
2309	518	None	None
2310	519	25%	25%
2311	519	30%	30%
2312	519	33(1/3)%	33(1/3)%
2313	519	40%	40%
2314	519	None	None
2315	520	20000	20000
2316	520	40000	40000
2317	520	25000	25000
2318	520	30000	30000
2319	520	None	None
2320	521	0.021%	0.021%
2321	521	0.0021%	0.0021%
2322	521	21%	21%
2323	521	2.1%	2.1%
2324	521	None	None
2325	522	1 : 2	1 : 2
2326	522	2 : 1	2 : 1
2327	522	1 : 4	1 : 4
2328	522	2 : 3	2 : 3
2329	522	None	None
2330	523	Rs. 4500	Rs. 4500
2331	523	Rs. 3500	Rs. 3500
2332	523	Rs. 5500	Rs. 5500
2333	523	Rs. 6500	Rs. 6500
2334	523	None	None
2335	524	30%	30%
2336	524	15%	15%
2337	524	20%	20%
2338	524	18%	18%
2339	524	None	None
2340	525	24 kg	24 kg
2341	525	32 kg	32 kg
2342	525	34 kg	34 kg
2343	525	21 kg	21 kg
2344	525	None	None
2345	526	24%	24%
2346	526	16%	16%
2347	526	8%	8%
2348	526	12%	12%
2349	526	None	None
2350	527	Rs. 60000	Rs. 60000
2351	527	Rs. 55000	Rs. 55000
2352	527	Rs. 50000	Rs. 50000
2353	527	Rs. 63000	Rs. 63000
2354	527	None	None
2355	528	80%	80%
2356	528	77%	77%
2357	528	69%	69%
2358	528	54%	54%
2359	528	none	none
2360	529	22	22
2361	529	63	63
2362	529	44	44
2363	529	54	54
2364	529	none	none
2365	530	70%	70%
2366	530	63%	63%
2367	530	56%	56%
2368	530	60%	60%
2369	530	none	none
2370	531	509940	509940
2371	531	349680	349680
2372	531	324138	324138
2373	531	459628	459628
2374	531	none	none
2385	534	2%	2%
2386	534	4%	4%
2387	534	3%	3%
2388	534	6%	6%
2389	534	none	none
2390	535	30min	30min
2391	535	24min	24min
2392	535	36min	36min
2393	535	45min	45min
2394	535	none	none
2395	536	100	100
2396	536	80	80
2397	536	72	72
2398	536	54	54
2399	536	none	none
2400	537	2	2
2401	537	7	7
2402	537	11	11
2403	537	3	3
2404	538	6400	6400
2405	538	6480	6480
2406	538	400	400
2407	538	480	480
2408	539	25	25
2409	539	26	26
2410	539	27	27
2411	539	28	28
2412	540	428	428
2413	540	427	427
2414	540	328	328
2415	540	338	338
2416	541	55	55
2417	541	41	41
2418	541	39	39
2419	541	29	29
2420	542	9	9
2421	542	6	6
2422	542	7	7
2423	542	8	8
2424	542	none	none
2425	543	45	45
2426	543	50	50
2427	543	60	60
2428	543	70	70
2429	544	16	16
2430	544	18	18
2431	544	19	19
2432	544	12	12
2433	545	10	10
2434	545	9	9
2435	545	11	11
2436	545	6	6
2437	546	126 Rs.	126 Rs.
2438	546	144 Rs.	144 Rs.
2439	546	150 Rs.	150 Rs.
2440	546	139 Rs.	139 Rs.
2441	546	None of these	None of these
2442	547	775Rs	775Rs
2443	547	850Rs	850Rs
2444	547	890Rs	890Rs
2445	547	975Rs	975Rs
2446	547	None of these	None of these
2447	548	15%	15%
2448	548	25%	25%
2449	548	35%	35%
2450	548	45%	45%
2451	548	None of these	None of these
2452	549	25%	25%
2453	549	30%	30%
2454	549	35%	35%
2455	549	20%	20%
2456	549	None of these	None of these
2457	550	80rs	80rs
2458	550	60rs	60rs
2459	550	45rs	45rs
2460	550	120rs	120rs
2461	550	None of these	None of these
2462	551	560kg	560kg
2463	551	600kg	600kg
2464	551	640kg	640kg
2465	551	400kg	400kg
2466	551	None of these	None of these
2467	552	22%	22%
2468	552	20%	20%
2469	552	18%	18%
2470	552	15%	15%
2471	552	None of these	None of these
2472	553	28% profit	28% लाभ 
2473	553	37(1/2)% profit	37(1/2)% लाभ 
2474	553	28% loss	28% हानि 
2475	553	37(1/2)% loss	37(1/2)% हानि 
2476	553	None of these	None of these
2477	554	350rs	350rs
2478	554	360rs	360rs
2479	554	375rs	375rs
2480	554	400rs	400rs
2481	554	None of these	None of these
2482	555	30rs or 70rs	30rs or 70rs
2483	555	35rs or 60rs	35rs or 60rs
2484	555	45rs	45rs
2485	555	50rs	50rs
2486	555	None of these	None of these
2487	556	66%	66%
2488	556	66(2/3)%	66(2/3)%
2489	556	66(1/4)%	66(1/4)%
2490	556	66(3/4)%	66(3/4)%
2491	556	None of these	None of these
2492	557	60rs	60rs
2493	557	51rs	51rs
2494	557	55.50rs	55.50rs
2495	557	70rs	70rs
2496	557	None of these	None of these
2497	558	no profit no loss	न लाभ न हानि  
2498	558	1% loss	1% हानि 
2499	558	1% profit	1% लाभ
2500	558	8% profit	8% लाभ
2501	558	None of these	None of these
2502	559	20	20
2375	532	156.86%	156.86%
2376	532	163.52%	163.52%
2377	532	140.55%	140.55%
2378	532	151.37%	151.37%
2503	559	16	16
2504	559	25	25
2505	559	30	30
2506	559	None of these	None of these
2507	560	20%	20%
2508	560	18(2/9)%	18(2/9)%
2509	560	14(2/7)%	14(2/7)%
2510	560	21%	21%
2511	560	None of these	None of these
2512	561	20% profit	20% profit
2513	561	25% loss	25% loss
2514	561	10% profit 	10% profit 
2515	561	15% loss	15% loss
2516	561	None of these	None of these
2517	562	9(1/11)%	9(1/11)%
2518	562	9(2/11)%	9(2/11)%
2519	562	9(3/11)%	9(3/11)%
2520	562	9(4/11)%	9(4/11)%
2521	562	None of these	None of these
2522	563	5000rs	5000rs
2523	563	5400rs	5400rs
2524	563	5500rs	5500rs
2525	563	6000rs	6000rs
2526	563	None of these	None of these
2527	564	37(1/2) %	37(1/2) %
2528	564	37(2/3) %	37(2/3) %
2529	564	37(3/2) %	37(3/2) %
2530	564	37(4/3) %	37(4/3) %
2531	564	None of these	None of these
2532	565	4%	4%
2533	565	5%	5%
2534	565	6%	6%
2535	565	7%	7%
2536	565	None of these	None of these
2537	566	2 : 5	2 : 5
2538	566	5 : 2	5 : 2
2539	566	3 : 5	3 : 5
2540	566	5 : 3	5 : 3
2541	566	None of these	None of these
2542	567	1 : 2	1 : 2
2543	567	2 : 1	2 : 1
2544	567	3 : 1	3 : 1
2545	567	1 : 3	1 : 3
2546	567	None of these	None of these
2547	568	3(5/13) % profit	3(5/13) % profit
2548	568	4(5/13) % profit	4(5/13) % profit
2549	568	5(1/13) % profit	5(1/13) % profit
2550	568	2(3/13) % loss	2(3/13) % loss
2551	568	None of these	None of these
2552	569	370rs	370rs
2553	569	372rs	372rs
2554	569	375rs	375rs
2555	569	378rs	378rs
2556	569	None of these	None of these
2557	570	60%	60%
2558	570	20%	20%
2559	570	72%	72%
2560	570	35%	35%
2561	570	None of these	None of these
2562	571	10	10
2563	571	15	15
2564	571	20	20
2565	571	25	25
2566	571	None of these	None of these
2567	572	30%	30%
2568	572	28%	28%
2569	572	16%	16%
2570	572	12%	12%
2571	572	None of these	None of these
2572	573	5 : 4	5 : 4
2573	573	4 : 5	4 : 5
2574	573	1 : 5	1 : 5
2575	573	1 : 4	1 : 4
2576	573	None of these	None of these
2577	574	12.5	12.5
2578	574	13	13
2579	574	13.7	13.7
2580	574	14.25	14.25
2581	574	None of these	None of these
2582	575	648rs	648rs
2583	575	360rs	360rs
2584	575	568rs	568rs
2585	575	440rs	440rs
2586	575	None of these	None of these
2587	576	8% 	8% 
2588	576	2% 	2% 
2589	576	4% 	4% 
2590	576	6%	6%
2591	576	None of these	None of these
2592	577	40	40
2593	577	50	50
2594	577	20	20
2595	577	60	60
2596	577	None of these	None of these
2597	578	16.66%	16.66%
2598	578	25%	25%
2599	578	14.28%	14.28%
2600	578	12.5%	12.5%
2601	578	none	none
2602	579	5rs	5rs
2603	579	7rs	7rs
2604	579	4rs	4rs
2605	579	6rs	6rs
2606	579	None of these	None of these
2607	580	35kg	35kg
2608	580	40kg	40kg
2609	580	64kg	64kg
2610	580	63kg	63kg
2611	580	none	none
2612	581	51%	51%
2613	581	49%	49%
2614	581	12(3/4)%	12(3/4)%
2615	581	24(1/2)%	24(1/2)%
2616	581	None of these	None of these
2617	582	17 %	17 %
2618	582	14.72%	14.72%
2619	582	14.28%	14.28%
2620	582	14%	14%
2621	582	none	none
2622	583	15.7%	15.7%
2623	583	15.6%	15.6%
2624	583	15.5%	15.5%
2625	583	15.4%	15.4%
2626	583	none	none
2627	584	40%	40%
2628	584	45%	45%
2629	584	42%	42%
2630	584	50%	50%
2631	584	none	none
2632	585	16.66%	16.66%
2633	585	14.28%	14.28%
2634	585	25%	25%
2635	585	12.5%	12.5%
2636	585	none	none
2637	586	12(3/4)	12(3/4)
2638	586	110(10/13)	110(10/13)
2639	586	16(2/3)	16(2/3)
2640	586	4(5/13)	4(5/13)
2641	586	None of these	None of these
2642	587	5500rs	5500rs
2643	587	5700rs	5700rs
2644	587	5600rs	5600rs
2645	587	5800rs	5800rs
2646	587	None of these	None of these
2647	588	120.68	120.68
2648	588	129.58	129.58
2649	588	135.78	135.78
2650	588	136.28	136.28
2651	588	None of these	None of these
2652	589	970	970
2653	589	950	950
2654	589	960	960
2655	589	980	980
2656	589	None of these	None of these
2657	590	n + p	n + p
2658	590	n + p + 1	n + p + 1
2659	590	np + 2	np + 2
2660	590	np	np
2661	590	None of these	None of these
2672	593	7(2/7) %	7(2/7) %
2673	593	7(1/7) %	7(1/7) %
2674	593	6(2/3) %	6(2/3) %
2675	593	8 %	8 %
2676	593	NONE	NONE
2684	595	75	75
2685	595	125	125
2686	595	NONE	NONE
2687	596	150	150
2688	596	200	200
2689	596	250	250
2690	596	300	300
2691	596	NONE	NONE
2692	597	(Y-X)/(P+L)	(Y-X)/(P+L)
2693	597	100[(Y+X)/(P+L)]	100[(Y+X)/(P+L)]
2694	597	100[(Y-X)/(P+L)]	100[(Y-X)/(P+L)]
2695	597	100[(Y-X)/(P-L)]	100[(Y-X)/(P-L)]
2696	597	NONE	NONE
2697	598	14.65 %	14.65 %
2698	598	13.20 %	13.20 %
2699	598	18.17 %	18.17 %
2700	598	15.3 %	15.3 %
2701	598	NONE	NONE
2702	599	5.29 % gain	5.29 % gain
2703	599	6.29 % loss	6.29 % loss
2704	599	6.29 % gain	6.29 % gain
2705	599	5.29 % loss	5.29 % loss
2706	599	none	none
2707	600	no loss no gain	no loss no gain
2708	600	loss of 5/66 lacs	loss of 5/66 lacs
2709	600	loss of 4/99 lacs	loss of 4/99 lacs
2710	600	loss of 5/88 lacs	loss of 5/88 lacs
2711	600	NONE	NONE
2712	601	he lost more than Rs.2700	रु 2700 से ज्यादा की हानि
2713	601	he lost less than Rs.2700	रु 2700 से कम की हानि
2714	601	he earned more than Rs.2900	रु 2900 से ज्यादा का लाभ
2715	601	he earned more than Rs.2500	रु 2500 से ज्यादा का लाभ
2716	601	NONE	NONE
2717	602	13.63 %	13.63 %
2718	602	1261 %	1261 %
2719	602	14.68 %	14.68 %
2720	602	15.23 %	15.23 %
2721	602	NONE	NONE
2722	603	48	48
2723	603	50	50
2724	603	52.5	52.5
2725	603	47.5	47.5
2726	603	NONE	NONE
2727	604	20 %	20 %
2728	604	33.33 %	33.33 %
2729	604	22 %	22 %
2730	604	24 %	24 %
2731	604	NONE	NONE
2732	605	35 % LOSS	35 % LOSS
2733	605	40 % PROFIT	40 % PROFIT
2734	605	20 % PROFIT	20 % PROFIT
2735	605	37.5 % PROFIT	37.5 % PROFIT
2736	605	NONE	NONE
2737	606	33	33
2738	606	164	164
2739	606	50	50
2740	606	100	100
2741	606	NONE	NONE
2742	607	26524	26524
2743	607	25000	25000
2744	607	26980	26980
2745	607	28306	28306
2746	607	NONE	NONE
2747	608	20	20
2748	608	15	15
2749	608	25	25
2750	608	10	10
2751	608	NONE	NONE
2752	609	75	75
2753	609	95	95
2754	609	90	90
2755	609	70	70
2756	609	NONE	NONE
2757	610	175	175
2758	610	189	189
2759	610	207	207
2760	610	180	180
2761	610	NONE	NONE
2762	611	17:52	17:52
2763	611	24:65	24:65
2764	611	28:55	28:55
2765	611	32:85	32:85
2766	611	NONE	NONE
2767	612	37.5%	37.5%
2768	612	54.54%	54.54%
2769	612	31.25%	31.25%
2770	612	27.5%	27.5%
2771	612	NONE	NONE
2772	613	Rs.1540	Rs.1540
2773	613	Rs.1755	Rs.1755
2774	613	Rs.1760	Rs.1760
2775	613	Rs.1680	Rs.1680
2776	613	NONE	NONE
2777	614	16.5	16.5
2778	614	15.5	15.5
2779	614	15.375	15.375
2780	614	15.25	15.25
2781	614	NONE	NONE
2782	615	13(1/3)	13(1/3)
2783	615	14(2/3)	14(2/3)
2784	615	16(2/3)	16(2/3)
2785	615	14(1/3)	14(1/3)
2786	615	NONE	NONE
2787	616	28%	28%
2788	616	25%	25%
2789	616	20%	20%
2790	616	23%	23%
2791	616	NONE	NONE
2792	617	9.5	9.5
2793	617	9.8	9.8
2794	617	9.0	9.0
2795	617	9.4	9.4
2796	617	NONE	NONE
2797	618	1% 	1% 
2798	618	5%	5%
2799	618	2%	2%
2800	618	4%	4%
2801	618	NONE	NONE
2802	619	28%	28%
2803	619	25%	25%
2804	619	21%	21%
2805	619	20%	20%
2806	619	NONE	NONE
2807	620	6	6
2808	620	5	5
2809	620	4	4
2810	620	7	7
2811	620	NONE	NONE
2812	621	500/3 %	500/3 %
2813	621	3/500 %	3/500 %
2814	621	500/2 %	500/2 %
2815	621	2/500 %	2/500 %
2816	621	NONE	NONE
2817	622	7000	7000
2818	622	8000	8000
2819	622	8300	8300
2820	622	8500	8500
2821	622	NONE	NONE
2822	623	75	75
2823	623	100	100
2824	623	99	99
2825	623	120	120
2826	624	1000	1000
2827	624	1500	1500
2828	624	1200	1200
2829	624	1400	1400
2830	625	200/9 % 	200/9 % 
2831	625	200/8 %	200/8 %
2832	625	200/7 %	200/7 %
2833	625	200/6 %	200/6 %
2834	626	22 % 	22 % 
2835	626	25 %	25 %
2836	626	20 % 	20 % 
2837	626	30 %	30 %
2838	627	600	600
2839	627	580	580
2840	627	680	680
2841	627	700	700
2842	628	10	10
2843	628	12	12
2844	628	20	20
2845	628	18	18
2846	629	75%	75%
2847	629	80%	80%
2848	629	90%	90%
2849	629	60%	60%
2850	630	33(1/2) %	33(1/2) %
2851	630	33(1/3) %	33(1/3) %
2852	630	33(1/4) %	33(1/4) %
2853	630	33(1/5) %	33(1/5) %
2854	631	88.89%	88.89%
2855	631	87.5%	87.5%
2856	631	80%	80%
2857	631	90%	90%
2858	631	NONE	NONE
2859	632	18hr	18hr
2860	632	12hr	12hr
2861	632	16hr	16hr
2862	632	13hr	13hr
2863	632	none	none
2864	633	180km	180km
2865	633	172km	172km
2866	633	160km	160km
2867	633	192km	192km
2868	633	none	none
2869	634	15min 	15min 
2870	634	20min	20min
2871	634	25min	25min
2872	634	24min	24min
2873	634	none	none
2874	635	576km	576km
2875	635	504km	504km
2876	635	448km	448km
2877	635	588km	588km
2878	635	none	none
2879	636	726	726
2880	636	616	616
2881	636	560	560
2882	636	672	672
2883	636	none	none
2884	637	3 hours	3 hours
2885	637	3hr 15min	3hr 15min
2886	637	3hr 30min	3hr 30min
2887	637	3hr 20min	3hr 20min
2888	637	none	none
2889	638	132.6	132.6
2890	638	134.4	134.4
2891	638	145.9	145.9
2892	638	160.1	160.1
2893	638	none	none
2894	639	30min	30min
2895	639	15min	15min
2896	639	20min	20min
2897	639	10min	10min
2898	639	none	none
2899	640	300kmph	300kmph
2900	640	320kmph	320kmph
2901	640	350kmph	350kmph
2902	640	460kmph	460kmph
2903	640	none	none
2904	641	80kmph	80kmph
2905	641	82kmph	82kmph
2906	641	81kmph	81kmph
2907	641	90kmph	90kmph
2908	641	none	none
2909	642	36sec	36sec
2910	642	30sec	30sec
2911	642	24sec	24sec
2912	642	18sec	18sec
2913	642	none	none
2914	643	01:00pm	01:00pm
2915	643	02:00am	02:00am
2916	643	01:00am	01:00am
2917	643	02:00pm	02:00pm
2918	643	none	none
2919	644	10:45am	10:45am
2920	644	09:45am	09:45am
2921	644	09:50am	09:50am
2922	644	10:12am	10:12am
2923	644	none	none
2924	645	08:45am	08:45am
2925	645	09:48am	09:48am
2926	645	09:00am	09:00am
2927	645	10:48am	10:48am
2928	645	none	none
2929	646	30 km/h, 20 km/h	30 km/h, 20 km/h
2930	646	40 km/h, 10 km/h	40 km/h, 10 km/h
2931	646	22 km/h, 28 km/h 	22 km/h, 28 km/h 
2932	646	25 km/h, 25 km/h	25 km/h, 25 km/h
2933	646	none	none
2934	647	2480m	2480m
2935	647	2400m	2400m
2936	647	1200m	1200m
2937	647	1480m	1480m
2938	647	none	none
2939	648	28km	28km
2940	648	32km	32km
2941	648	20km	20km
2942	648	16km	16km
2943	648	none	none
2944	649	8km/h,7.8km/h	8km/h,7.8km/h
2945	649	7.5km/h,10km/h	7.5km/h,10km/h
2946	649	5km/h,7km/h 	5km/h,7km/h 
2947	649	10km/h 7.5km/h, 	10km/h 7.5km/h, 
2948	649	none	none
2949	650	72kmph	72kmph
2950	650	54kmph	54kmph
2951	650	90kmph	90kmph
2952	650	60kmph	60kmph
2953	650	none	none
2954	651	30 km/h, 45 km/h	30 km/h, 45 km/h
2955	651	40 km/h, 35 km/h	40 km/h, 35 km/h
2956	651	45 km/h, 30 km/h 	45 km/h, 30 km/h 
2957	651	35 km/h, 40 km/h	35 km/h, 40 km/h
2958	651	none	none
2959	651	  	  
2960	652	3.5hr	3.5hr
2961	652	2.5hr	2.5hr
2962	652	2hr	2hr
2963	652	2.6hr	2.6hr
2964	652	none	none
2965	653	4km	4km
2966	653	5km	5km
2967	653	2km	2km
2968	653	6km	6km
2969	653	none	none
2970	654	3hr	3hr
2971	654	6hr	6hr
2972	654	5hr	5hr
2973	654	4hr	4hr
2974	654	none	none
2975	655	60 min	60 min
2976	655	50 min	50 min
2977	655	40 min	40 min
2978	655	70 min	70 min
2979	656	444	444
2980	656	480	480
2981	656	333	333
2982	656	540	540
2983	657	400	400
2984	657	600	600
2985	657	500	500
2986	657	300	300
2987	658	28 kmph	28 kmph
2988	658	35 kmph	35 kmph
2989	658	25 kmph	25 kmph
2990	658	30 kmph	30 kmph
2991	659	16	16
2992	659	15	15
2993	659	12	12
2994	659	10	10
2995	660	2:1	2:1
2996	660	3:2	3:2
2997	660	4:3	4:3
2998	660	5:4	5:4
3134	681	2%	2%
3135	681	4%	4%
3136	681	3%	3%
3137	681	6%	6%
3138	681	none	none
3199	694	94.60 km/hr	94.60 km/hr
3200	694	108.40 km/hr	108.40 km/hr
3201	694	100.80 km/hr	100.80 km/hr
3202	694	102.80 km/hr	102.80 km/hr
3203	694	NONE	NONE
3209	696	50	50
3210	696	62	62
3211	696	68	68
3212	696	24	24
3213	696	NONE	NONE
3219	698	10	10
3220	698	8315945	8315945
3221	698	831594	831594
3222	698	1	1
3223	698	2	2
3229	700	1111	1111
3230	700	101001	101001
3231	700	10101	10101
3232	700	1010101	1010101
3233	700	101010101	101010101
3234	701	55.55% 	55.55% 
3235	701	54.54% 	54.54% 
3236	701	45.45% 	45.45% 
3237	701	44.44%	44.44%
3238	701	NONE	NONE
3244	703	102(6/7)km/hr	102(6/7)km/hr
3245	703	90 km/hr	90 km/hr
3246	703	75 km/hr	75 km/hr
3247	703	85(5/7)km/hr	85(5/7)km/hr
3248	703	none	none
3254	705	175	175
3255	705	280	280
3256	705	245	245
3257	705	210	210
3258	705	none	none
3259	706	8:25 pm	8:25 pm
3260	706	10:15 pm 	10:15 pm 
3261	706	9:45 pm 	9:45 pm 
3262	706	11:15pm	11:15pm
3263	706	none	none
3264	707	1755 km 	1755 km 
3265	707	1950 km 	1950 km 
3266	707	2145 km	2145 km
3267	707	1560km	1560km
3268	707	none	none
3279	710	307.5km	307.5km
3280	710	300km	300km
3281	710	370.5km	370.5km
3282	710	306.5km	306.5km
3283	710	none	none
3289	712	60min	60min
3290	712	80min	80min
3291	712	85min	85min
3292	712	90min	90min
3293	712	none	none
3299	714	9km/hr	9km/hr
3300	714	6km/hr	6km/hr
3301	714	10km/hr	10km/hr
3302	714	12km/hr	12km/hr
3303	714	none	none
3304	715	4	4
3305	715	5	5
3306	715	3	3
3307	715	2	2
3308	715	none	none
3309	716	21 km/hr\t	21 km/hr\t
3310	716	27 km/hr\t	27 km/hr\t
3311	716	18 km/hr	18 km/hr
3312	716	29 km/hr	29 km/hr
3313	716	none	none
3319	718	7.75km	7.75km
3320	718	7.25km	7.25km
3321	718	6.25km	6.25km
3322	718	6.75km	6.75km
3323	718	none	none
3329	720	120,150	120,150
3330	720	108,162	108,162
3331	720	130,140	130,140
3332	720	180,90	180,90
3333	720	none	none
3334	721	50 km/h, 500 km	50 km/h, 500 km
3335	721	30 km/h, 450 km	30 km/h, 450 km
3336	721	50 km/h, 450 km\t	50 km/h, 450 km\t
3337	721	30km/h, 500 km	30km/h, 500 km
3338	721	none	none
3339	722	17 hr  	17 hr  
3340	722	15hr	15hr
3341	722	14hr	14hr
3342	722	18hr	18hr
3343	722	none	none
3349	724	140km	140km
3350	724	150km	150km
3351	724	120km	120km
3352	724	130km	130km
3353	724	none	none
3359	726	12 km/h	12 km/h
3360	726	15km/h	15km/h
3361	726	14 km/h	14 km/h
3362	726	17 km/h	17 km/h
3363	726	none	none
3369	728	2.5km	2.5km
3188	691	none	none
3189	692	540km	540km
3190	692	420km	420km
3191	692	600km	600km
3192	692	620km	620km
3193	692	none	none
3194	693	2160km	2160km
3195	693	2016km	2016km
3196	693	1878km	1878km
3197	693	1989km	1989km
3198	693	none	none
3204	695	7.75 km	7.75 km
3205	695	7.25 km	7.25 km
3206	695	6.25 km	6.25 km
3207	695	6.75 km	6.75 km
3208	695	NONE	NONE
3214	697	1001	1001
3215	697	101	101
3216	697	10001	10001
3217	697	10101	10101
3218	697	none	none
3224	699	3497497 	3497497 
3225	699	4587632	4587632
3226	699	1046529	1046529
3227	699	1034756	1034756
3228	699	NONE	NONE
3239	702	44min	44min
3240	702	40min	40min
3241	702	45min	45min
3242	702	50min	50min
3243	702	none	none
3249	704	384 km 	384 km 
3250	704	560 km	560 km
3251	704	472 km	472 km
3252	704	488 km	488 km
3253	704	none	none
3269	708	54km/hr 	54km/hr 
3270	708	60km/hr	60km/hr
3271	708	72km/hr	72km/hr
3272	708	65km/hr	65km/hr
3273	708	none	none
3274	709	50sec	50sec
3275	709	80sec	80sec
3276	709	60sec	60sec
3277	709	90sec	90sec
3278	709	none	none
3284	711	7 hr 15 min	7 hr 15 min
3285	711	5 hr 15 min	5 hr 15 min
3286	711	6 hr 15 min	6 hr 15 min
3287	711	6 hr 12 min	6 hr 12 min
3288	711	none	none
3294	713	15kmph	15kmph
3295	713	18kmph	18kmph
3296	713	10kmph	10kmph
3297	713	8kmph	8kmph
3298	713	none	none
3314	717	3.33 hr 	3.33 hr 
3315	717	5 hr\t	5 hr\t
3316	717	6.66 hr	6.66 hr
3317	717	7.33 hr	7.33 hr
3318	717	none	none
3324	719	1512km	1512km
3325	719	2205km	2205km
3326	719	1890km	1890km
3327	719	1995km	1995km
3328	719	none	none
3344	723	4 km/h	4 km/h
3345	723	5km/h\t	5km/h\t
3346	723	3 km/h	3 km/h
3347	723	6 km/h	6 km/h
3348	723	none	none
3354	725	28min	28min
3355	725	30min	30min
3356	725	20min	20min
3357	725	40min	40min
3358	725	none	none
3364	727	2 km/h	2 km/h
3365	727	3 km/h\t	3 km/h\t
3366	727	4 km/h\t	4 km/h\t
3367	727	5 km/h	5 km/h
3368	727	none	none
3370	728	3km	3km
3371	728	2.4km	2.4km
3372	728	3.6km	3.6km
3373	728	none	none
3374	729	1 hr	1 hr
3375	729	1 hr 4min	1 hr 4min
3376	729	1 h 20min	1 h 20min
3377	729	1hr 30 min	1hr 30 min
3378	729	none	none
3379	730	0.5kmph	0.5kmph
3380	730	2kmph	2kmph
3381	730	1kmph	1kmph
3382	730	1.5kmph	1.5kmph
3383	730	none	none
3384	731	2hrs	2hrs
3385	731	4.5hrs	4.5hrs
3386	731	5hrs	5hrs
3387	731	3.6hrs	3.6hrs
3388	731	none	none
3389	732	17(1/4)	17(1/4)
3390	732	11(2/3)	11(2/3)
3391	732	21(4/5)	21(4/5)
3392	732	27(1/6)	27(1/6)
3393	732	17	17
3394	733	6 min to empty	6 min to empty
3395	733	9 min to fill	9 min to fill
3396	733	9 min to empty	9 min to empty
3397	733	6 min to fill	6 min to fill
3398	733	none	none
3399	734	405	405
3400	734	400	400
3401	734	300	300
3402	734	450	450
3403	734	none	none
3404	735	60000	60000
3405	735	65000	65000
3406	735	70000	70000
3407	735	63500	63500
3408	735	none	none
3409	736	52500	52500
3410	736	75000	75000
3411	736	67500	67500
3412	736	48000	48000
3413	736	none	none
3414	737	40	40
3415	737	80	80
3416	737	70	70
3417	737	60	60
3418	737	none	none
3419	738	20	20
3420	738	24	24
3421	738	34	34
3422	738	100	100
3139	682	22 kg	22 kg
3140	682	23 kg	23 kg
3141	682	23.5 kg	23.5 kg
3142	682	22-5 kg	22-5 kg
3143	682	none	none
3144	683	75	75
3145	683	100	100
3146	683	125	125
3147	683	50	50
3148	683	none	none
3149	684	3 days	3 days
3150	684	5 days	5 days
3151	684	4days	4days
3152	684	6days	6days
3153	684	none	none
3154	685	12days	12days
3155	685	16days	16days
3156	685	18days	18days
226	57	None	
3157	685	19days	19days
3158	685	none	none
3159	686	3(3/4)	3(3/4)
3160	686	6(2/3)	6(2/3)
3161	686	3(1/4)	3(1/4)
3162	686	3(1/2)	3(1/2)
3163	686	none	none
3164	687	36 km/hr  	36 km/hr  
3165	687	38 km/hr  	38 km/hr  
3166	687	37.5 km/hr  	37.5 km/hr  
3034	661	36	36
3035	661	32	32
3036	661	38	38
3037	661	30	30
3038	661	NONE	NONE
3039	662	224	224
3040	662	256	256
3041	662	288	288
3042	662	300	300
3043	662	NONE	NONE
3044	663	9 hr 40 mins	9 hr 40 mins
3045	663	8 hr 40 mins	8 hr 40 mins
3046	663	6 hr 30 mins	6 hr 30 mins
3047	663	7 hr 20 mins	7 hr 20 mins
3048	663	NONE	NONE
3049	664	210	210
3050	664	250	250
3051	664	240	240
3052	664	220	220
3053	664	none	none
3054	665	12 km/hr	12 km/hr
3055	665	10 km/hr	10 km/hr
3056	665	8 km/hr	8 km/hr
3057	665	6 km/hr	6 km/hr
3058	665	NONE	NONE
3059	666	12kg	12kg
3060	666	16kg	16kg
3061	666	20kg	20kg
3062	666	24kg	24kg
3063	666	none	none
3064	667	10%	10%
3065	667	15%	15%
3066	667	16%	16%
3067	667	18%	18%
3068	667	none	none
3069	668	3 hrs	3 hrs
3070	668	3 hr 15 mins	3 hr 15 mins
3071	668	3 hr 30 mins	3 hr 30 mins
3072	668	3 hr 20 mins	3 hr 20 mins
3073	668	NONE	NONE
3074	669	132.6	132.6
3075	669	134.4	134.4
3076	669	145.9	145.9
3077	669	160.1	160.1
3078	669	NONE	NONE
3079	670	10 km/hr	10 km/hr
3080	670	7.5 km/hr	7.5 km/hr
3081	670	7 km/hr	7 km/hr
3082	670	8 km/hr	8 km/hr
3083	670	NONE	NONE
3084	671	11	11
3085	671	13	13
3086	671	9	9
3087	671	15	15
3088	671	NONE	NONE
3089	672	3000 M	3000 M
3090	672	3400 M	3400 M
3091	672	3600 M	3600 M
3092	672	3500 M	3500 M
3093	672	NONE	NONE
3094	673	6 hr 45 min	6 hr 45 min
3095	673	7 hr	7 hr
3096	673	7 hr 30 min	7 hr 30 min
3097	673	6 hr	6 hr
3098	673	NONE	NONE
3099	674	4 km	4 km
3100	674	5 km	5 km
3101	674	2 km	2 km
3102	674	6 km	6 km
3103	674	NONE	NONE
3104	675	15 % loss	15 % loss
3105	675	15 % profit	15 % profit
3106	675	14(2/7) % loss	14(2/7) % loss
3107	675	14(2/7) % profit	14(2/7) % profit
3108	675	NONE	NONE
3109	676	6 rs	6 rs
3110	676	8 rs	8 rs
3111	676	10 rs	10 rs
3112	676	12 rs	12 rs
3113	676	NONE	NONE
3114	677	1450	1450
3115	677	1400	1400
3116	677	1500	1500
3117	677	1480	1480
3118	677	NONE	NONE
3119	678	12(1/2) %	12(1/2) %
3120	678	14(1/2) %	14(1/2) %
3121	678	16(1/6) %	16(1/6) %
3122	678	33(1/3) %	33(1/3) %
3123	678	NONE	NONE
3124	679	30%	30%
3125	679	33%	33%
3126	679	33.33%	33.33%
3127	679	20%	20%
3128	679	none	none
3129	680	40000	40000
3130	680	50000	50000
3131	680	45000	45000
3132	680	42000	42000
3133	680	none	none
3167	687	42km/hr	42km/hr
3168	687	none	none
3169	688	104days	104days
3170	688	182days	182days
3171	688	78days	78days
3172	688	140days	140days
3173	688	none	none
3174	689	35	35
3175	689	55	55
3176	689	62	62
3177	689	70	70
3178	689	none	none
3179	690	11 hours 21 minutes	11 hours 21 minutes
3180	690	11 hours 11 minutes 	11 hours 11 minutes 
3181	690	10 hours 51 minutes 	10 hours 51 minutes 
3182	690	11 hours 31 minutes	11 hours 31 minutes
3183	690	none	none
3184	691	80	80
3185	691	120	120
3186	691	100	100
3187	691	90	90
3423	738	none	none
3424	739	1	1
3425	739	2	2
3426	739	3	3
3427	739	4	4
3428	739	5	5
3429	740	3	3
3430	740	4	4
3431	740	5	5
3432	740	2	2
3433	740	none	none
3434	741	-	संापों का अध्ययन
3435	741	-	मछलियों का अध्ययन
3436	741	-	सरीसृपों का अध्ययन
3437	741	-	पक्षियों का अध्ययन
3438	741	-	इनमें से कोई नहीें
3439	742	-	डेंड्ोलोजी
3440	742	-	डेंड्ोक्रोनोलोजी\t
3441	742	-	पेलियोबाॅटनी\t
3442	742	-	साॅरोलाॅजी
3443	742	-	NONE
3444	743	-	 शैवाल
3445	743	-	वाइरस\t
3446	743	-	माइकोप्लाज्मा
3447	743	-	कवक
3448	743	-	NONE
3449	744	-	सेल्युलोज
3450	744	-	काइटीन
3451	744	-	पेव्टीडोग्लाइकाॅन
3452	744	-	प्रोटीन
3453	744	-	NONE
3456	745	-	राइबोसोम
3457	745	-	अंतःप्रदव्यजालिका
3458	745	-	NONE
3459	746	-	राइबोसोम
3460	746	-	लाइसोसोम
3461	746	-	पाॅलीसोम
3462	746	-	रिक्तिका
3463	746	-	NONE
3464	747	-	नागेली
3465	747	-	फलेमिंग
3466	747	-	वाल्डेयर
3467	747	-	जाॅनसन
3468	747	-	NONE
3473	748	-	NONE
3474	749	-	 एस्केरिस
3476	749	-	आॅफियोग्लोसस
3478	749	-	NONE
3479	750	-	जाइगोविन
3480	750	-	पेकाइटीन
3481	750	-	 डिव्लोटीन\t
3482	750	-	लेव्टीटीन
3483	750	-	NONE
3484	751	-	 फलेसिंग
3485	751	-	फाॅर्मर व मूरे\t
3486	751	-	 वीजमैन
3487	751	-	 स्टृाॅसबर्गर
3488	751	-	NONE
3489	752	-	थायराॅइड
3490	752	-	क्रीक्वाॅइड
3491	752	-	पेक्टस
3492	752	-	एडमस एपल
3493	752	-	NONE
3494	753	-	\tHyoid
3495	753	-	Temporal\t
3496	753	-	Sphenoid
3497	753	-	Occipetal
3498	753	-	NONE
3499	754	-	33
3500	754	-	36
3501	754	-	28
3502	754	-	30
3503	754	-	 NONE
3504	755	-	Occipetal
3505	755	-	Sphenoid
3506	755	-	ATLAS
3507	755	-	AXIS
3508	755	-	NONE
3509	756	-	फीमर
3510	756	-	सरटोरियस
3511	756	-	मैसेटर
3512	756	-	ग्लूटियस
3513	756	-	NONE
3514	757	-	1,2,3,4
3515	757	-	1,2,4
3516	757	-	1,2,3
3517	757	-	1,3,4
3518	757	-	NONE
3519	758	-	बैलोफिल
3521	758	-	मोनोसाइट
3522	758	-	 न्यूटिृनोफिल
3523	758	-	NONE
3524	759	-	एडमस स्मिथ
3525	759	-	A.C Pegu
3526	759	-	कीन्स
3527	759	-	अमत्र्य सेन
3528	759	-	NONE
3529	760	-	एडमस स्मिथ\t
3530	760	-	अल्फ्रेड मार्शल\t
3531	760	-	कीन्स
3532	760	-	अमत्र्य सेन
3533	760	-	NONE
3536	761	-	एब्डाॅमिनल एओरस
3538	761	-	NONE
3539	762	-	1 से 3 दिन\t
3540	762	-	10 से 15 दिन
3541	762	-	8 से 9 दिन\t
3542	762	-	20 से 25 दिन
3543	762	-	NONE
3544	763	-	बढ़ेगी
3545	763	-	घटेगी
3546	763	-	स्थिर रहेगी
3548	763	-	NONE
3549	764	-	 ए. सी. पीगू
3550	764	-	मार्शल
3551	764	-	कीन्स
3552	764	-	अमत्र्य सेन
3553	764	-	NONE
3554	765	-	 कैरोटिड धमनी\t
3555	765	-	कोरोनरी धमनी
3470	748	-	1,2\t
3471	748	-	2,3
3454	745	-	कोशिका झिल्ली
3472	748	-	2,3,4
3455	745	-	गाॅल्गीकाय
3475	749	-	मायरमिका
3547	763	-	तीव्रता से घटेगी 
3477	749	-	गेहूॅं
3535	761	-	केपिलरी
3534	761	-	सुपीरियर वेनाकावा
3537	761	-	इंफीरियर  वेनाकावा
3520	758	-	लिम्फोसाइट
3556	765	-	इंफीरियर वेनाकावा
3558	765	-	NONE
3559	766	-	अध्यारोपित सीमा का
3560	766	-	अवशिष्ट सीमा
3561	766	-	 पुर्ववत्ती सीमा का
3562	766	-	परवर्ती सीमा का
3563	766	-	NONE
3564	767	-	सभी
3565	767	-	2,3,4
3566	767	-	2,3
3567	767	-	केवल 2
3568	767	-	NONE
3569	768	-	 मेघालय
3570	768	-	त्रिपुरा
3571	768	-	मणिपुर
3572	768	-	मिजोरम
3573	768	-	NONE
3574	769	-	दक्षिणतम
3575	769	-	उत्तरम
3576	769	-	पूर्वी\t
3577	769	-	पश्चिमी
3578	769	-	NONE
3579	770	-	त्रिपुरा
3580	770	-	असम
3581	770	-	मेघालय\t
3582	770	-	 सिक्किम
3583	770	-	NONE
3584	771	-	जमशेदपुर
3585	771	-	इटारसी
3586	771	-	मिर्जापुर
3587	771	-	सूरजपुर
3588	771	-	NONE
3589	772	-	कडप्पा
3590	772	-	धारवाड़
3591	772	-	विंध्यन
3592	772	-	आर्कियन
3593	772	-	NONE
3594	773	-	र्टांस व महान हिमालय
3595	773	-	महान व शिवालिक हिमालय
3596	773	-	शिवालिक व वाहय हिमालय
3597	773	-	वाहय व टृांस हिमालय
3598	773	-	NONE
3599	774	-	 विंध्यन
3600	774	-	गोंडवाना
3601	774	-	धारवाड़
3602	774	-	कड़प्पा
3603	774	-	NONE
3604	775	-	 नामचा वखा
3605	775	-	वुंजी\t
3606	775	-	 मसूरी
3607	775	-	छण्ज्ण्
3608	775	-	NONE
3609	776	-	लघु
3610	776	-	वाहय
3611	776	-	टृांस
3612	776	-	शिवालिक
3613	776	-	NONE
3614	777	-	ताजे पानी की\t 
3615	777	-	लवणयुक्त
3616	777	-	मीठे पानी
3617	777	-	 लैगून
3618	777	-	NONE
3619	778	नाथुला	नाथुला
3620	778	जोजिला	जोजिला
3621	778	वोमडीला	वोमडीला
3622	778	N.I.	N.I.
3623	778	 	 
3624	779	 	 माजुली
3625	779	 	 अंडमान\t\t
3626	779	 	सालसेट\t\t
3627	779	 	 लक्षद्वीप
3628	779	 	 NONE
3629	780	उत्तरी सरकार	उत्तरी सरकार
3630	780	कोरोमंडल तट	कोरोमंडल तट
3631	780	मालावर तट	मालावर तट
3632	780	आंध्र तट	आंध्र तट
3633	780	NONE	NONE
3634	781	व्यास	व्यास
3635	781	 सतलज	 सतलज
3636	781	 रावी\t\t	 रावी\t\t
3637	781	 झेलम	 झेलम
3638	781	NONE	NONE
3639	782	पेरियार	पेरियार
3640	782	जुआरी	जुआरी
3641	782	कावेरी	कावेरी
3642	782	माही 	माही 
3643	782	NONE	NONE
3644	783	सलाल	सलाल
3645	783	तुलबुल	तुलबुल
3646	783	दुलहस्ती	दुलहस्ती
3647	783	बगली हार	बगली हार
3648	783	NONE	NONE
3649	784	पूर्वी तटीय क्षेत्रों में\t	पूर्वी तटीय क्षेत्रों में\t
3650	784	पश्चिमी तटीय क्षेत्रों में	पश्चिमी तटीय क्षेत्रों में
3651	784	राजस्थान के मरुस्थलीय क्षेत्रों में	राजस्थान के मरुस्थलीय क्षेत्रों में
3652	784	अण्डमान द्वीपों में	अण्डमान द्वीपों में
3653	784	NONE	NONE
3654	785	उनकी समुद्र तल से उॅंचाई अलग-अलग है\t	उनकी समुद्र तल से उॅंचाई अलग-अलग है\t
3655	785	उनकी समुद्र तल से दूरी अलग-अलग है 	उनकी समुद्र तल से दूरी अलग-अलग है 
3656	785	उनकी समुद्र से जलवायु अलग है	उनकी समुद्र से जलवायु अलग है
3657	785	सभी	सभी
3658	785	NONE	NONE
3659	786	अरबी	अरबी
3660	786	अंग्रेजी	अंग्रेजी
3661	786	 तुर्की\t	 तुर्की\t
3662	786	हिन्दी	हिन्दी
3663	786	NONE	NONE
3664	787	जलवायु	जलवायु
3665	787	वर्षा	वर्षा
3666	787	मानसून\t	मानसून\t
3667	787	सभी	सभी
3668	787	NONE	NONE
3669	788	जेट स्टृीम	जेट स्टृीम
3670	788	ITCZ	ITCZ
3671	788	 वर्षा\t	 वर्षा\t
3672	788	सभी	सभी
3673	788	NONE	NONE
3674	789	राजस्थान	राजस्थान
3675	789	मेघालय	मेघालय
3676	789	सिक्किम\t	सिक्किम\t
3677	789	अरुणाचल	अरुणाचल
3678	789	NONE	NONE
3679	790	म.प्र.	म.प्र.
3680	790	सिक्किम	सिक्किम
3681	790	मिजोरम	मिजोरम
3682	790	मेघालय	मेघालय
3469	748	-	1,2,3,4
3683	791	7	7
3684	791	11	11
3685	791	13	13
3686	791	1001	1001
3687	791	NONE	NONE
3688	792	1	1
3689	792	3	3
3690	792	5	5
3691	792	7	7
3692	792	NONE	NONE
3693	793	3	3
3694	793	4	4
3695	793	5	5
3696	793	7	7
3697	793	NONE	NONE
3698	794	24	24
3699	794	25	25
3700	794	28	28
3701	794	30	30
3702	794	NONE	NONE
3703	795	124	124
3704	795	125	125
3705	795	130	130
3706	795	135	135
3707	795	NONE	NONE
3708	796	10	10
3709	796	3	3
3710	796	4	4
3711	796	5	5
3712	796	NONE	NONE
3713	797	10	10
3714	797	1	1
3715	797	2374156	2374156
3716	797	5374158	5374158
3717	797	NONE	NONE
3718	798	2500	2500
3719	798	2550	2550
3720	798	2600	2600
3721	798	2450	2450
3722	798	NONE	NONE
3723	799	10	10
3724	799	12	12
3725	799	6	6
3726	799	8	8
3727	799	NONE	NONE
3728	800	28	28
3729	800	16	16
3730	800	18	18
3731	800	40	40
3732	800	NONE	NONE
3733	801	विषमसंख्या 	विषमसंख्या 
3734	801	 सम संख्या 	 सम संख्या 
3735	801	 विषमतथा सम दोनों	 विषमतथा सम दोनों
3736	801	 दोनोंमेंसेकोईनहीं	 दोनोंमेंसेकोईनहीं
3737	801	 NONE	 NONE
3738	802	अभाज्य संख्या\t	अभाज्य संख्या\t
3739	802	भाज्य संख्या 	भाज्य संख्या 
3740	802	A और B दोनों	A और B दोनों
3741	802	न तों A न ही B	न तों A न ही B
3742	802	NONE	NONE
3743	803	divisible by (11+13)	divisible by (11+13)
3744	803	divisible by (13-11)	divisible by (13-11)
3914	837	none	none
3745	803	divisible by (11×13)	divisible by (11×13)
3746	803	429	429
3747	803	NONE	NONE
3748	804	5	5
3749	804	6	6
3750	804	7	7
3751	804	8	8
3752	804	NONE	NONE
3753	805	35	35
3754	805	80	80
3755	805	20	20
3756	805	10	10
3757	805	NONE	NONE
3758	806	1111	1111
3759	806	1010001	1010001
3760	806	10101	10101
3761	806	1010101	1010101
3762	806	NONE	NONE
3763	807	6400	6400
3764	807	6480	6480
3765	807	400	400
3766	807	480	480
3767	807	NONE	NONE
3768	808	5/39	5/39
3769	808	4/39	4/39
3770	808	2/39	2/39
3771	808	7/39	7/39
3772	808	NONE	NONE
3773	809	3	3
3774	809	4	4
3775	809	6	6
3776	809	8	8
3777	809	NONE	NONE
3778	810	67	67
3779	810	80	80
3780	810	13	13
3781	810	15	15
3782	810	NONE	NONE
3783	811	3	3
3784	811	6	6
3785	811	9	9
3786	811	12	12
3787	811	NONE	NONE
3788	812	77	77
3789	812	88	88
3790	812	85	85
3791	812	90	90
3792	812	NONE	NONE
3793	813	-	EJKMNCICNWT
3794	813	-	EJKMOCICNWT
3795	813	-	EJKMOCIBNWT
3796	813	-	EJKMOCICNVT
3797	813	-	NONE
3798	814	-	1 10 R
3799	814	-	H 10 Q
3800	814	-	H 9 R
3801	814	-	H 10 R
3802	814	-	NONE
3803	815	-	T
3804	815	-	W
3805	815	-	J
3806	815	-	ऐसा कोई अक्षर / अंक उपरोक्त क्रम में नही हैं
3807	815	-	NONE
3808	816	-	3
3809	816	-	T
3810	816	-	R
3811	816	-	P
3812	816	-	NONE
3813	817	-	D
3814	817	-	9
3815	817	-	1
3816	817	-	ऐसा कोई अक्षर / अंक उपरोक्त क्रम में नही हैं
3817	817	-	NONE
3818	818	 -	 9T
3819	818	-	Q6
3820	818	-	H4
3821	818	-	R9
3822	818	-	4F
3823	818	-	NONE
3824	819	-	कोई नहीं
3825	819	-	1
3826	819	-	2
3827	819	-	3
3828	819	-	तीन के अधिक
3829	820	-	me
3830	820	-	why
3831	820	-	meet
3832	820	-	cnd
3833	820	-	NONE
3834	821	-	LOCYANCN
3835	821	-	OCYBOCM
3836	821	-	OCYAODM
3837	821	-	OCYBODM
3838	821	-	NONE
3839	822	-	HJTAKCP
3840	822	-	HKTALCP
3841	822	-	HKTAKCP
3842	822	-	HKTAKBP
3843	822	-	NONE
3844	823	-	5
3845	823	-	13
3846	823	-	14
3847	823	-	18
3848	823	-	NONE
3849	824	-	6
3850	824	-	13
3851	824	-	14
3852	824	-	18
3853	824	-	NONE
3854	825	-	6
3855	825	-	10
3856	825	-	12
3857	825	-	13
3858	825	-	NONE
3859	826	-	5
3860	826	-	10
3861	826	-	12
3862	826	-	13
3863	826	-	NONE
3864	827	-	18
3865	827	-	22
3866	827	-	26
3867	827	-	28
3868	827	-	NONE
3869	828	-	6
3870	828	-	10
3871	828	-	8
3872	828	-	9
3873	828	-	NONE
3874	829	-	4 & 8
3875	829	-	8 & 12
3876	829	-	10 & 15
3877	829	-	6 & 9
3878	829	-	NONE
3879	830	1	1
3880	830	100/99	100/99
3881	830	99/100	99/100
3882	830	100/33	100/33
3883	830	None	None
3884	831	21	21
3885	831	22	22
3886	831	23	23
3887	831	24	24
3888	831	None	None
3889	832	3	3
3890	832	4	4
3891	832	6	6
3892	832	8	8
3893	832	None	None
3894	833	20	20
3895	833	10	10
3896	833	80	80
3897	833	100	100
3898	833	120	120
3899	834	290	290
3900	834	280	280
3901	834	300	300
3902	834	285	285
3903	835	40	40
3904	835	50	50
3905	835	60	60
3906	835	70	70
3907	836	220	220
3908	836	140	140
3909	836	150	150
3910	836	None	None
3911	837	60, 80	60, 80
3912	837	80, 50	80, 50
3913	837	50, 80	50, 80
3915	838	OPTION A	OPTION A
3916	838	OPTION B	OPTION B
3917	838	OPTION C	OPTION C
3918	838	OPTION D	OPTION D
3919	839	100	100
3920	839	120	120
3921	839	150	150
3922	839	110	110
3923	840	12	12
3924	840	09	09
3925	840	14	14
3926	840	12	12
3557	765	-	महाधमनी (Aorta) 
3927	841	5:8	5:8
3928	841	8:5	8:5
3929	841	7:5	7:5
3930	841	5:7	5:7
3931	841	none	none
3932	842	5:2 	5:2 
3933	842	2:5	2:5
3934	842	3:5	3:5
3935	842	5:3	5:3
3936	842	none	none
3937	843	16ltr	16ltr
3938	843	15ltr	15ltr
3939	843	20ltr	20ltr
3940	843	14ltr	14ltr
3941	843	none	none
3942	844	28 lt	28 lt
3943	844	25 lt\t	25 lt\t
3944	844	20 lt	20 lt
3945	844	24 lt	24 lt
3946	844	none	none
3947	845	5:16	5:16
3948	845	4:11	4:11
3949	845	5:11	5:11
3950	845	4:3	4:3
3951	845	none	none
3952	846	1/5	1/5
3953	846	1/4	1/4
3954	846	1/2	1/2
3955	846	1/6	1/6
3956	846	none	none
3957	847	1/3	1/3
3958	847	3/7	3/7
3959	847	2/3	2/3
3960	847	2/7	2/7
3961	847	none	none
3962	848	36.43 ltr	36.43 ltr
3963	848	36.44 ltr	36.44 ltr
3964	848	36.45 ltr	36.45 ltr
3965	848	36.42ltr	36.42ltr
3966	848	none	none
3967	849	2906 : 1094 	2906 : 1094 
3968	849	1094: 2906   	1094: 2906   
3969	849	2907 : 1093 	2907 : 1093 
3970	849	1093 : 2907 	1093 : 2907 
3971	849	none	none
3972	850	28:20	28:20
3973	850	20:28	20:28
3974	850	27:23	27:23
3975	850	23:27	23:27
3976	850	none	none
3977	851	12.4%	12.4%
3978	851	12.5%	12.5%
3979	851	12%	12%
3980	851	12.6%	12.6%
3981	851	none	none
3982	852	20ltr	20ltr
3983	852	12ltr	12ltr
3984	852	15ltr	15ltr
3985	852	30ltr	30ltr
3986	852	none	none
3987	853	28ltr	28ltr
3988	853	35ltr	35ltr
3989	853	36ltr	36ltr
3990	853	30ltr	30ltr
3991	853	none	none
3992	854	1ltr	1ltr
3993	854	2ltr	2ltr
3994	854	3ltr	3ltr
3995	854	4ltr	4ltr
3996	854	none	none
3997	855	1/8	1/8
3998	855	1/7	1/7
3999	855	1/5	1/5
4000	855	1/9	1/9
4001	855	none	none
4002	856	121:39	121:39
4003	856	39:121	39:121
4004	856	120:41	120:41
4005	856	41:120	41:120
4006	856	none	none
4007	857	28%	28%
4008	857	25%\t	25%\t
4009	857	30%\t	30%\t
4010	857	29%	29%
4011	857	none	none
4012	858	28%	28%
4013	858	35%\t	35%\t
4014	858	20%	20%
4015	858	25%	25%
4016	858	none	none
4017	859	3:10	3:10
4018	859	3:7	3:7
4019	859	10:3	10:3
4020	859	7:3	7:3
4021	859	none	none
4022	860	14 carat	14 carat
4023	860	15 carat	15 carat
4024	860	17 carat	17 carat
4025	860	18 carat	18 carat
4026	860	none	none
4027	861	4:15	4:15
4028	861	9:8	9:8
4029	861	1:2	1:2
4030	861	21:8	21:8
4031	861	none	none
4032	861	 	 
4033	862	3:2	3:2
4034	862	4:3	4:3
4035	862	5:4	5:4
4036	862	4:5	4:5
4037	862	none	none
4038	863	35kmph	35kmph
4039	863	31kmph	31kmph
4040	863	40kmph	40kmph
4041	863	32.5kmph	32.5kmph
4042	863	none	none
4043	864	125rs.	125rs.
4044	864	105rs.	105rs.
4045	864	140rs.	140rs.
4046	864	145rs.	145rs.
4047	864	none	none
4048	865	68,22	68,22
4049	865	22,68	22,68
4050	865	32,48	32,48
4051	865	48,32	48,32
4052	865	none	none
4053	866	79	79
4054	866	78	78
4055	866	75	75
4056	866	70	70
4057	866	none	none
4058	867	83.33 %	83.33 %
4059	867	80.33 %	80.33 %
4060	867	85.33 %	85.33 %
4061	867	84.33 %	84.33 %
4062	867	none	none
4063	868	3/5	3/5
4064	868	3/4	3/4
4065	868	4/11	4/11
4066	868	2/5	2/5
4067	868	none	none
4068	869	19:1	19:1
4069	869	20:1	20:1
4070	869	1:19	1:19
4071	869	1:20	1:20
4072	869	none	none
4073	870	70 lt	70 lt
4074	870	50 lt	50 lt
4075	870	40 lt	40 lt
4076	870	60 lt	60 lt
4077	870	none	none
4078	871	5:2	5:2
4079	871	6:1	6:1
4080	871	1:6	1:6
4081	871	2:5	2:5
4082	871	none	none
4083	872	11 lt	11 lt
4084	872	15 lt	15 lt
4085	872	18 lt	18 lt
4086	872	14 lt	14 lt
4087	872	none	none
4088	873	4%	4%
4089	873	5%	5%
4090	873	6%	6%
4091	873	7%	7%
4092	873	none	none
4093	874	3:5	3:5
4094	874	5:3	5:3
4095	874	5:2	5:2
4096	874	2:5	2:5
4097	874	none	none
4098	875	1ltr	1ltr
4099	875	2ltr	2ltr
4100	875	3ltr	3ltr
4101	875	4ltr	4ltr
4102	875	none	none
4103	876	1:2	1:2
4104	876	2:3	2:3
4105	876	2:1	2:1
4106	876	3:2	3:2
4107	876	none	none
4108	877	1650	1650
4109	877	3300	3300
4110	877	825	825
4111	877	4950	4950
4112	877	none	none
4113	878	20%	20%
4114	878	15%	15%
4115	878	19%	19%
4116	878	14%	14%
4117	878	none	none
4118	879	5	5
4119	879	8	8
4120	879	10	10
4121	879	80	80
4122	879	none	none
4123	880	11:17 	11:17 
4124	880	 2:9 	 2:9 
4125	880	5:9 	5:9 
4126	880	8:27	8:27
4127	880	none	none
4128	881	15	15
4129	881	45	45
4130	881	42	42
4131	881	48	48
4132	881	NONE	NONE
4133	882	28	28
4134	882	5	5
4135	882	20	20
4136	882	140	140
4137	882	NONE	NONE
4138	883	200	200
4139	883	312	312
4140	883	462	462
4141	883	550	550
4142	883	NONE	NONE
4143	884	2	2
4144	884	3	3
4145	884	4	4
4146	884	6	6
4147	884	NONE	NONE
4148	885	20	20
4149	885	103	103
4150	885	140	140
4151	885	105	105
4152	885	NONE	NONE
4153	886	m/n	m/n
4154	886	m+n	m+n
4155	886	mn	mn
4156	886	m-n	m-n
4157	886	NONE	NONE
4158	887	20	20
4159	887	27	27
4160	887	31	31
4161	887	30	30
4162	887	NONE	NONE
4163	888	8	8
4164	888	24	24
4165	888	4	4
4166	888	12	12
4167	888	NONE	NONE
4168	889	72	72
4169	889	68	68
4170	889	71	71
4171	889	80	80
4172	889	NONE	NONE
4173	890	39	39
4174	890	32	32
4175	890	36	36
4176	890	42	42
4177	890	NONE	NONE
4178	891	96	96
4179	891	100	100
4180	891	58	58
4181	891	150	150
4182	891	NONE	NONE
4183	892	125	125
4184	892	120	120
4185	892	110	110
4186	892	100	100
4187	892	NONE	NONE
4188	893	100	100
4189	893	132	132
4190	893	131	131
4191	893	142	142
4192	893	NONE	NONE
4193	894	70.1	70.1
4194	894	72.1	72.1
4195	894	72.2	72.2
4196	894	71.1	71.1
4197	894	NONE	NONE
4198	895	40.25kg	40.25kg
4199	895	42kg	42kg
4200	895	45kg	45kg
4201	895	43kg	43kg
4202	895	NONE	NONE
4203	896	200rs	200rs
4204	896	400rs	400rs
4205	896	500rs	500rs
4206	896	600rs	600rs
4207	896	NONE	NONE
4208	897	200rs	200rs
4209	897	225rs	225rs
4210	897	252rs	252rs
4211	897	235rs	235rs
4212	897	NONE	NONE
4213	898	81.5rs	81.5rs
4214	898	82.5rs	82.5rs
4215	898	77.5rs	77.5rs
4216	898	70.5rs	70.5rs
4217	898	NONE	NONE
4218	899	8 kmph	8 kmph
4219	899	6 kmph	6 kmph
4220	899	7 kmph	7 kmph
4221	899	7.5 kmph	7.5 kmph
4222	899	NONE	NONE
4223	900	10.1	10.1
4224	900	10	10
4225	900	12.9	12.9
4226	900	13	13
4227	900	NONE	NONE
4228	901	49.5	49.5
4229	901	50	50
4230	901	40	40
4231	901	41	41
4232	901	NONE	NONE
4233	902	10	10
4234	902	12	12
4235	902	8	8
4236	902	9	9
4237	902	NONE	NONE
4238	903	49	49
4239	903	14	14
4240	903	21	21
4241	903	42	42
4242	903	NONE	NONE
4243	904	a + 3	a + 3
4244	904	a + 4	a + 4
4245	904	a + 5	a + 5
4246	904	a + 6	a + 6
4247	904	NONE	NONE
4248	905	45	45
4249	905	64	64
4250	905	53	53
4251	905	35	35
4252	905	NONE	NONE
4253	906	50	50
4254	906	46	46
4255	906	48	48
4256	906	41	41
4257	906	NONE	NONE
4258	907	59	59
4259	907	60	60
4260	907	65	65
4261	907	61	61
4262	907	NONE	NONE
4263	908	60	60
4264	908	65	65
4265	908	77	77
4266	908	85	85
4267	908	NONE	NONE
4268	909	64.18	64.18
4269	909	55.18	55.18
4270	909	58.18	58.18
4271	909	62.18	62.18
4272	909	NONE	NONE
4273	910	49.7	49.7
4274	910	50.7	50.7
4275	910	55.7	55.7
4276	910	45.6	45.6
4277	910	NONE	NONE
4278	911	20	20
4279	911	22	22
4280	911	24	24
4281	911	26	26
4282	911	NONE	NONE
4283	912	1 yr	1 yr
4284	912	2 yr	2 yr
4285	912	6 yr	6 yr
4286	912	7 yr	7 yr
4287	912	NONE	NONE
4288	913	2 yr	2 yr
4289	913	3 yr	3 yr
4290	913	4 yr	4 yr
4291	913	5 yr	5 yr
4292	913	NONE	NONE
4293	914	10	10
4294	914	15	15
4295	914	12	12
4296	914	18	18
4297	914	NONE	NONE
4298	915	6(1/3)	6(1/3)
4299	915	6(1/5)	6(1/5)
4300	915	6(1/4)	6(1/4)
4301	915	6(1/7)	6(1/7)
4302	915	NONE	NONE
4303	916	6	6
4304	916	3	3
4305	916	5	5
4306	916	4	4
4307	916	NONE	NONE
4308	917	25	25
4309	917	28	28
4310	917	32	32
4311	917	30	30
4312	917	NONE	NONE
4313	918	10 hrs	10 hrs
4314	918	9 hrs	9 hrs
4315	918	12 hrs	12 hrs
4316	918	15 hrs	15 hrs
4317	918	NONE	NONE
4318	919	110	110
4319	919	120	120
4320	919	29	29
4321	919	150	150
4322	919	NONE	NONE
4323	920	20 days	20 days
4324	920	25 days	25 days
4325	920	29 days	29 days
4326	920	30 days	30 days
4327	920	NONE	NONE
4328	921	12 days	12 days
4329	921	15 days	15 days
4330	921	16 days	16 days
4331	921	18 days	18 days
4332	921	NONE	NONE
4333	922	6(12/14) 	6(12/14) 
4334	922	6(13/15) 	6(13/15) 
4335	922	6(15/17) 	6(15/17) 
4336	922	6(18/19) 	6(18/19) 
4337	922	NONE	NONE
4338	923	15	15
4339	923	24	24
4340	923	12	12
4341	923	10	10
4342	923	NONE	NONE
4343	924	5	5
4344	924	9	9
4345	924	6	6
4346	924	7	7
4347	924	NONE	NONE
4348	925	4/3 hrs	4/3 hrs
4349	925	3/2 hrs	3/2 hrs
4350	925	5/3 hrs	5/3 hrs
4351	925	6/4 hrs	6/4 hrs
4352	925	NONE	NONE
4353	926	40	40
4354	926	35	35
4355	926	48	48
4356	926	50	50
4357	926	NONE	NONE
4364	928	A- 20 days, B- 5 days	A- 20 days, B- 5 days
4365	928	A- 25 days, B- 3 days	A- 25 days, B- 3 days
4366	928	A- 28 days, B- 6 days	A- 28 days, B- 6 days
4367	928	A- 27 days, B- 8 days	A- 27 days, B- 8 days
4368	928	NONE	NONE
4369	929	80	80
4370	929	60	60
4371	929	90	90
4372	929	70	70
4373	929	NONE	NONE
4374	930	35 	35 
4375	930	30	30
4376	930	45	45
4377	930	40	40
4378	930	NONE	NONE
4379	931	35(5/6) days	35(5/6) days
4380	931	55(4/5) days	55(4/5) days
4381	931	35(5/9) days	35(5/9) days
4382	931	55(3/4) days	55(3/4) days
4383	931	NONE	NONE
4384	932	18(4/6) days	18(4/6) days
4385	932	18(2/5) days	18(2/5) days
4386	932	18(1/4) days	18(1/4) days
4387	932	18(1/6) days	18(1/6) days
4388	932	NONE	NONE
4389	933	108	108
4390	933	105	105
4391	933	144	144
4392	933	100	100
4393	933	NONE	NONE
4394	934	28	28
4395	934	30	30
4396	934	29	29
4397	934	35	35
4398	934	NONE	NONE
4399	935	25(1/3) days	25(1/3) days
4400	935	25(1/6) days	25(1/6) days
4401	935	25(1/5) days	25(1/5) days
4402	935	25(1/4) days	25(1/4) days
4403	935	NONE	NONE
4404	936	4	4
4405	936	6	6
4406	936	2	2
4407	936	5	5
4408	936	NONE	NONE
4409	937	37(1/5) days	37(1/5) days
4410	937	37(1/4) days	37(1/4) days
4411	937	37(1/2) days	37(1/2) days
4412	937	37(1/6) days	37(1/6) days
4413	937	NONE	NONE
4414	938	8	8
4415	938	6	6
4416	938	4	4
4417	938	5	5
4418	938	NONE	NONE
4419	939	2(3/4) days	2(3/4) days
4420	939	2(2/5) days	2(2/5) days
4421	939	2(4/6) days	2(4/6) days
4422	939	2(5/7) days 	2(5/7) days 
4423	939	NONE	NONE
4424	940	75	75
4425	940	90	90
4426	940	100	100
4427	940	80	80
4428	940	NONE	NONE
4429	941	24	24
4430	941	15	15
4431	941	20	20
4432	941	16	16
4433	941	NONE	NONE
4434	942	A- 12 days, B- 28 days	A- 12 days, B- 28 days
4435	942	A- 14 days, B- 23 days	A- 14 days, B- 23 days
4436	942	A- 16 days, B- 20 days	A- 16 days, B- 20 days
4437	942	A- 18 days, B- 22 days	A- 18 days, B- 22 days
4438	942	NONE	NONE
4439	943	A-12 days, B-28 days	A-12 days, B-28 days
4440	943	A-15 days, B-35 days	A-15 days, B-35 days
4441	943	A-14 days, B-32 days	A-14 days, B-32 days
4442	943	A-10 days, B-30 days	A-10 days, B-30 days
4443	943	NONE	NONE
4444	944	13(1/4)	13(1/4)
4445	944	13(1/5)	13(1/5)
4446	944	13(1/3)	13(1/3)
4447	944	13(1/7)	13(1/7)
4448	944	NONE	NONE
4449	945	48(7/30) days	48(7/30) days
4450	945	48(6/20) days	48(6/20) days
4451	945	48(8/29) days	48(8/29) days
4452	945	48(5/23) days	48(5/23) days
4453	945	NONE	NONE
4454	946	175	175
4455	946	150	150
4456	946	183	183
4457	946	168	168
4458	946	NONE	NONE
4459	947	9(6/7) days	9(6/7) days
4460	947	9(3/4) days	9(3/4) days
4461	947	9(5/6) days	9(5/6) days
4462	947	9(2/3) days	9(2/3) days
4463	947	NONE	NONE
4464	948	17(2/3) days	17(2/3) days
4358	927	26	26
4465	948	17(4/5) days	17(4/5) days
4466	948	15(2/3) days	15(2/3) days
4467	948	15(4/5) days	15(4/5) days
4468	948	NONE	NONE
4469	949	A-25, B-27	A-25, B-27
4470	949	A-15, B-35	A-15, B-35
4471	949	A-18, B-25	A-18, B-25
4472	949	A- 19, B- 28	A- 19, B- 28
4473	949	NONE	NONE
4474	950	10(1/3) days	10(1/3) days
4475	950	12(2/3) days	12(2/3) days
4476	950	13(1/3) days	13(1/3) days
4477	950	8(1/4) days	8(1/4) days
4478	950	NONE	NONE
4479	951	5(5/6 )	5(5/6 )
4480	951	5.25	5.25
4481	951	3.5	3.5
4482	951	3.75	3.75
4483	951	none	none
4484	952	72 days	72 days
4485	952	20 days	20 days
4486	952	24 days	24 days
4487	952	36 days	36 days
4488	952	none	none
4489	953	20, 10	20, 10
4490	953	5, 15	5, 15
4491	953	30, 20	30, 20
4492	953	5, 20	5, 20
4493	953	NONE	NONE
4494	954	Body	Body
4495	954	Mind	Mind
4496	954	Soul	Soul
4497	954	Nothing	Nothing
4498	955	life is suffering	life is suffering
4499	955	you created it	you created it
4500	955	it do not exist	it do not exist
4501	955	it is the very state of mind	it is the very state of mind
4502	956	1yr	1yr
4503	956	2yr	2yr
4504	956	8yr	8yr
4505	956	6yr	6yr
4506	956	none	none
4507	957	5yr	5yr
4508	957	3yr	3yr
4509	957	9yr	9yr
4510	957	15yr	15yr
4511	957	none	none
4512	958	15	15
4513	958	14.5	14.5
4514	958	20.25	20.25
4515	958	18.75	18.75
4516	958	25	25
4517	959	20yr.	20yr.
4518	959	18yrs.	18yrs.
4519	959	14yrs.	14yrs.
4520	959	22yrs.	22yrs.
4521	959	25yrs.	25yrs.
4522	960	3:8	3:8
4523	960	1:5	1:5
4524	960	1:2	1:2
4525	960	3:2	3:2
4526	960	none	none
4527	961	130	130
4528	961	140	140
4529	961	120	120
4530	961	100	100
4531	961	110	110
4532	962	4	4
4533	962	2	2
4534	962	3	3
4535	962	7	7
4536	962	6	6
4537	963	7550	7550
4538	963	7560	7560
4539	963	8960	8960
4540	963	9608	9608
4541	963	none	none
4542	964	6.2%	6.2%
4543	964	6.25%	6.25%
4544	964	6.33%	6.33%
4545	964	6.5%	6.5%
4546	964	none	none
4547	965	7(1/4)yrs	7(1/4)yrs
4548	965	7(1/2)yrs	7(1/2)yrs
4549	965	7(1/5)yrs	7(1/5)yrs
4550	965	7(1/6)yrs	7(1/6)yrs
4551	965	none	none
4552	966	3445	3445
4553	966	3425	3425
4554	966	3450	3450
4555	966	3440	3440
4556	966	none	none
4557	967	3000	3000
4558	967	4000	4000
4559	967	2000	2000
4560	967	1000	1000
4561	967	none	none
4562	968	552, 528, 506 rs	552, 528, 506 rs
4563	968	550, 520, 502 rs	550, 520, 502 rs
4564	968	545, 530, 505 rs	545, 530, 505 rs
4565	968	555, 535, 508 rs	555, 535, 508 rs
4566	968	none	none
4567	969	5%	5%
4568	969	7%	7%
4569	969	6%	6%
4570	969	8%	8%
4571	969	none	none
4572	970	12%, 500rs 	12%, 500rs 
4573	970	11%, 200rs 	11%, 200rs 
4574	970	15%, 400rs 	15%, 400rs 
4575	970	13%, 600rs 	13%, 600rs 
4576	970	none	none
4577	971	16.66yr	16.66yr
4578	971	16.25yr	16.25yr
4579	971	16.2yr	16.2yr
4580	971	16.125yr	16.125yr
4581	971	none	none
4582	972	6.33yr	6.33yr
4583	972	6(1/9)yr	6(1/9)yr
4584	972	6.2yr	6.2yr
4585	972	6(1/7)yr	6(1/7)yr
4586	972	none	none
4587	973	7000 rs , 5%	7000 rs , 5%
4588	973	8000 rs , 6%	8000 rs , 6%
4589	973	6000 rs , 4%	6000 rs , 4%
4590	973	5000 rs , 3%	5000 rs , 3%
4591	973	none	none
4592	974	9673	9673
4593	974	9074	9074
4594	974	9577	9577
4595	974	9375	9375
4596	974	none	none
4597	975	1470	1470
4598	975	1675	1675
4599	975	1600	1600
4600	975	1650	1650
4601	975	none	none
4602	976	400	400
4603	976	450	450
4604	976	420	420
4605	976	500	500
4606	976	none	none
4607	977	2000rs, 4000 rs, 6000 rs,	2000rs, 4000 rs, 6000 rs,
4608	977	3000rs, 6000 rs, 12000 rs,	3000rs, 6000 rs, 12000 rs,
4609	977	1000rs, 2000 rs, 4000 rs,	1000rs, 2000 rs, 4000 rs,
4610	977	2500rs, 5000 rs, 4500 rs,	2500rs, 5000 rs, 4500 rs,
4611	977	none	none
4612	978	25(1/2)%	25(1/2)%
4613	978	22(1/4)%	22(1/4)%
4614	978	26(2/3)%	26(2/3)%
4615	978	24(2/3)%	24(2/3)%
4616	978	NONE	NONE
4617	979	1000rs	1000rs
4618	979	2000rs	2000rs
4619	979	3000rs	3000rs
4620	979	4000rs	4000rs
4621	979	none	none
4622	980	5000rs	5000rs
4623	980	5500rs	5500rs
4624	980	6400rs	6400rs
4625	980	6000rs	6000rs
4626	980	none	none
4627	981	5%	5%
4628	981	3%	3%
4629	981	6%	6%
4630	981	4%	4%
4631	981	none	none
4632	982	8000rs	8000rs
4633	982	6000rs	6000rs
4634	982	7000rs	7000rs
4635	982	4000rs	4000rs
4636	982	none	none
4637	983	6	6
4638	983	5	5
4639	983	8	8
4640	983	7	7
4641	983	none	none
4642	984	5%	5%
4643	984	4%	4%
4644	984	4%	4%
4645	984	8%	8%
4646	984	none	none
4647	985	5%	5%
4648	985	4%	4%
4649	985	6%	6%
4650	985	8%	8%
4651	985	none	none
4652	986	75yr	75yr
4653	986	55yr	55yr
4654	986	50yr	50yr
4655	986	70yr	70yr
4656	986	none	none
4657	987	6000rs	6000rs
4658	987	8000rs	8000rs
4659	987	2000rs	2000rs
4660	987	4000rs	4000rs
4661	987	none	none
4662	988	14.5yr	14.5yr
4663	988	14.66yr	14.66yr
4664	988	14.28yr	14.28yr
4665	988	16.66yr	16.66yr
4666	988	none	none
4667	989	7(1/9)%	7(1/9)%
4668	989	7(4/9)%	7(4/9)%
4669	989	7(2/3)%	7(2/3)%
4670	989	7(1/6)%	7(1/6)%
4671	989	none	none
4672	990	5%	5%
4673	990	7%	7%
4674	990	6%	6%
4675	990	9%	9%
4676	990	none	none
4677	991	5%	5%
4678	991	7%	7%
4679	991	6%	6%
4680	991	9%	9%
4681	991	NONE	NONE
4682	992	1400rs.	1400rs.
4683	992	1500rs.	1500rs.
4684	992	1700rs.	1700rs.
4685	992	1600rs.	1600rs.
4686	992	none	none
4687	993	1/9yr	1/9yr
4688	993	1/5yr	1/5yr
4689	993	1/8yr	1/8yr
4690	993	1/7yr	1/7yr
4691	993	none	none
4692	994	96rs.	96rs.
4693	994	90rs.	90rs.
4694	994	100rs.	100rs.
4695	994	125rs.	125rs.
4696	994	none	none
4697	995	960rs	960rs
4698	995	900rs	900rs
4699	995	772rs	772rs
4700	995	720rs	720rs
4701	995	none	none
4702	996	17900 RS.	17900 RS.
4703	996	14800 RS.	14800 RS.
4704	996	18900 RS.	18900 RS.
4705	996	16700 RS.	16700 RS.
4706	996	NONE	NONE
4707	997	5%	5%
4708	997	7%	7%
4709	997	10% 	10% 
4710	997	8%	8%
4711	997	NONE	NONE
4717	999	30%	30%
4718	999	40%	40%
4719	999	25%	25%
4720	999	15%	15%
4721	999	NONE	NONE
4722	1000	385.5	385.5
4723	1000	374.4	374.4
4724	1000	390	390
4725	1000	375	375
4726	1000	NONE	NONE
4727	1001	150%	150%
4728	1001	75%	75%
4729	1001	100%	100%
4730	1001	125%	125%
4731	1001	NONE	NONE
4732	1002	100	100
4733	1002	160	160
4734	1002	180	180
4735	1002	200	200
4736	1002	NONE	NONE
4737	1003	3000mtr	3000mtr
4738	1003	4000mtr	4000mtr
4739	1003	2000mtr	2000mtr
4740	1003	1000mtr	1000mtr
4741	1003	none	none
4742	1004	405	405
4743	1004	400	400
4744	1004	300	300
4745	1004	450	450
4746	1004	NONE	NONE
4747	1005	6000	6000
4748	1005	5500	5500
4749	1005	4000	4000
4750	1005	5000	5000
4751	1005	NONE	NONE
4752	1006	20%	20%
4753	1006	14.28%	14.28%
4754	1006	11.11%  	11.11%  
4755	1006	10%	10%
4756	1006	NONE	NONE
4757	1007	75rs 	75rs 
4758	1007	90rs	90rs
4759	1007	70rs	70rs
4760	1007	80rs	80rs
4761	1007	none	none
4790	1040	914.976	914.976
4791	1040	947.916	947.916
4792	1040	945.912	945.912
4793	1040	965.925	965.925
4794	1040	none	none
4795	1041	1000rs	1000rs
4796	1041	5000rs	5000rs
4797	1041	2000rs	2000rs
4798	1041	3000rs	3000rs
4799	1041	none	none
4800	1042	106(2/3) %	106(2/3) %
4801	1042	106(4/6) %	106(4/6) %
4802	1042	106(2/4) %	106(2/4) %
4803	1042	106(1/2) %	106(1/2) %
4804	1042	none	none
4805	1043	6000rs	6000rs
4806	1043	9000rs	9000rs
4807	1043	5000rs	5000rs
4808	1043	8000rs	8000rs
4809	1043	none	none
4810	1044	92/40	92/40
4811	1044	90/45	90/45
4812	1044	95/48	95/48
4813	1044	97/44	97/44
4814	1044	none	none
4815	1045	4/6	4/6
4816	1045	3/4	3/4
4817	1045	1/3	1/3
4818	1045	1/2	1/2
4819	1045	none	none
4820	1046	2%	2%
4821	1046	4%	4%
4822	1046	3%	3%
4823	1046	6%	6%
4824	1046	none	none
4825	1047	12.55%	12.55%
4826	1047	15.65%	15.65%
4827	1047	14.68%	14.68%
4828	1047	17.70%	17.70%
4829	1047	none	none
4830	1048	20.6%	20.6%
4831	1048	25.7%	25.7%
4832	1048	26.5%	26.5%
4833	1048	24.4%	24.4%
4834	1048	none	none
4835	1049	16(1/2)%	16(1/2)%
4836	1049	16(2/3)%	16(2/3)%
4837	1049	16(4/6)%	16(4/6)%
4838	1049	16(1/4)%	16(1/4)%
4839	1049	none	none
4840	1050	100%	100%
4841	1050	2000/11%	2000/11%
4842	1050	2100/12%	2100/12%
4843	1050	2500/16%	2500/16%
4844	1050	NONE	NONE
4845	1051	23(1/12) %	23(1/12) %
4846	1051	23%	23%
4847	1051	24%	24%
4848	1051	23(1/13) %	23(1/13) %
4849	1051	NONE	NONE
4850	1052	66.25%	66.25%
4851	1052	66.66%	66.66%
4852	1052	66.6%	66.6%
4853	1052	66.8%	66.8%
4854	1052	NONE	NONE
4855	1053	32.06%	32.06%
4856	1053	33.05%	33.05%
4857	1053	34.07%	34.07%
4858	1053	35.08%	35.08%
4859	1053	NONE	NONE
4860	1054	30%	30%
4861	1054	25%	25%
4862	1054	33%	33%
4863	1054	20%	20%
4864	1054	NONE	NONE
4865	1055	64% decrease	64% decrease
4866	1055	64% increase	64% increase
4867	1055	65% decrease	65% decrease
4868	1055	65% increase	65% increase
4869	1055	NONE	NONE
4870	1056	16.16% decrease	16.16% decrease
4871	1056	15.15% decrease	15.15% decrease
4872	1056	13.13% decrease	13.13% decrease
4873	1056	11.11% decrease	11.11% decrease
4874	1056	NONE	NONE
4875	1057	2(1/12) %	2(1/12) %
4876	1057	3(1/8)%	3(1/8)%
4877	1057	2(1/6)%	2(1/6)%
4878	1057	3(1/12)%	3(1/12)%
4879	1057	none	none
4880	1058	20.68%	20.68%
4881	1058	22.22%	22.22%
4882	1058	22.25%	22.25%
4883	1058	25.22%	25.22%
4884	1058	none	none
4885	1059	100	100
4886	1059	250	250
4887	1059	125	125
4888	1059	400	400
4889	1059	none	none
4890	1060	20.5hr	20.5hr
4891	1060	24.4hr	24.4hr
4892	1060	30hr.	30hr.
4893	1060	31.5hr	31.5hr
4894	1060	none	none
4895	1061	4hr	4hr
4896	1061	4hr 15min	4hr 15min
4897	1061	3hr 45min	3hr 45min
4898	1061	45min	45min
4899	1061	none	none
4900	1062	5min	5min
4901	1062	8min	8min
4902	1062	10min	10min
4903	1062	12min	12min
4904	1062	none	none
4905	1063	36hr	36hr
4906	1063	24hr	24hr
4907	1063	30hr	30hr
4908	1063	18hr	18hr
4909	1063	72hr	72hr
4910	1064	6min empty	6min empty
4911	1064	6min full	6min full
4912	1064	13.33 min empty	13.33 min empty
4913	1064	13.33min full	13.33min full
4914	1064	none	none
4915	1065	8min	8min
4916	1065	13.33min	13.33min
4917	1065	30min	30min
4918	1065	38min	38min
4919	1065	none	none
4920	1066	10	10
4921	1066	12	12
4922	1066	15	15
4923	1066	18	18
4924	1066	none	none
4925	1067	5	5
4926	1067	4	4
4927	1067	6	6
4928	1067	8	8
4929	1067	none	none
4930	1068	2	2
4931	1068	4	4
4932	1068	3	3
4933	1068	5	5
4934	1068	none	none
4935	1069	11.40 a.m	11.40 a.m
4936	1069	12.40 pm	12.40 pm
4937	1069	1.40 pm	1.40 pm
4938	1069	2.40 pm	2.40 pm
4939	1069	none	none
3029	226	45	
3030	226	60	
3031	226	75	
3032	226	90	90
3033	226	None	
4712	998	280	280
4713	998	270	270
4714	998	300	300
4715	998	350	350
4716	998	none	none
4940	1070	3520	3520
4941	1070	5623	5623
4942	1070	2252	2252
4943	1070	2432	2432
4944	1070	NONE	NONE
4945	1071	96	96
4946	1071	90	90
4947	1071	77	77
4948	1071	85	85
4949	1071	NONE	NONE
4950	1072	192.96	192.96
4951	1072	181.44	181.44
4952	1072	169.92	169.92
4953	1072	204.48	204.48
4954	1072	NONE	NONE
4955	1073	ab/c	ab/c
4956	1073	bc/a	bc/a
4957	1073	ac/b	ac/b
4958	1073	bc/b	bc/b
4959	1073	NONE	NONE
4960	1074	25	25
4961	1074	45	45
4962	1074	50	50
4963	1074	80	80
4964	1074	NONE	NONE
4965	1075	125	125
4966	1075	130	130
4967	1075	135	135
4968	1075	145	145
4969	1075	NONE	NONE
4970	1076	64 % decrease	64 % decrease
4971	1076	64 % increase	64 % increase
4972	1076	65 % decrease	65 % decrease
4973	1076	65 % increase	65 % increase
4974	1076	NONE	NONE
4975	1077	3000	3000
4976	1077	4000	4000
4977	1077	2000	2000
4978	1077	1000	1000
4979	1077	NONE	NONE
4980	1077	-	-
4981	1078	20500	20500
4982	1078	22500	22500
4983	1078	24500	24500
4984	1078	23500	23500
4985	1078	NONE	NONE
4986	1079	10 %	10 %
4987	1079	7 %	7 %
4988	1079	3 %	3 %
4989	1079	4 %	4 %
4990	1079	NONE	NONE
4991	1080	1 : 3	1 : 3
4992	1080	1 : 4	1 : 4
4993	1080	1 : 6	1 : 6
4994	1080	1 : 5	1 : 5
4995	1080	NONE	NONE
4996	1081	15 %	15 %
4997	1081	17.36 %	17.36 %
4998	1081	17 %	17 %
4999	1081	16.36 %	16.36 %
5000	1081	NONE	NONE
5001	1082	200	200
5002	1082	400	400
5003	1082	500	500
5004	1082	600	600
5005	1082	NONE	NONE
5006	1083	20	20
5007	1083	10	10
5008	1083	30	30
5009	1083	40	40
5010	1083	NONE	NONE
5016	1085	12.55 %	12.55 %
5017	1085	15.65 %	15.65 %
5018	1085	14.68 %	14.68 %
5019	1085	17.70 %	17.70 %
5020	1085	NONE	NONE
5021	1086	7 %	7 %
5022	1086	21 %	21 %
5023	1086	28 %	28 %
5024	1086	35 %	35 %
5025	1086	NONE	NONE
5026	1087	45	45
5027	1087	50	50
5028	1087	48	48
5029	1087	40	40
5030	1087	NONE	NONE
5031	1088	400 rs. kg	400 rs. kg
5032	1088	250 rs kg	250 rs kg
5033	1088	200 rs. kg	200 rs. kg
5034	1088	300 rs. kg	300 rs. kg
5035	1088	NONE	NONE
5036	1089	25	25
5037	1089	36	36
5038	1089	48	48
5039	1089	40	40
5040	1089	NONE	NONE
5041	1090	150	150
5042	1090	120	120
5043	1090	100	100
5044	1090	180	180
5045	1090	NONE	NONE
5046	1091	21000	21000
5047	1091	23000	23000
5048	1091	25000	25000
5049	1091	24000	24000
5050	1091	NONE	NONE
5051	1092	14200	14200
5052	1092	13400	13400
5053	1092	12600	12600
5054	1092	16800	16800
5055	1092	NONE	NONE
5056	1093	60000 rs	60000 rs
5057	1093	55000 rs	55000 rs
5058	1093	75000 rs	75000 rs
5059	1093	70000 rs	70000 rs
5060	1093	NONE	NONE
5061	1094	72526	72526
5062	1094	60480	60480
5063	1094	60000	60000
5064	1094	52800	52800
5065	1094	42336	42336
5066	1094	NONE	NONE
5067	1095	52500	52500
5068	1095	75000	75000
5069	1095	67500	67500
5070	1095	48000	48000
5071	1095	NONE	NONE
5072	1096	70000 rs	70000 rs
5073	1096	46000 rs	46000 rs
5074	1096	50000 rs	50000 rs
5075	1096	42000 rs	42000 rs
5076	1096	NONE	NONE
5077	1097	46610 rs	46610 rs
5078	1097	51666 rs	51666 rs
5079	1097	56200 rs	56200 rs
5080	1097	60040 rs	60040 rs
5081	1097	NONE	NONE
5082	1098	12%, 15%	12%, 15%
5083	1098	13%, 18%	13%, 18%
5084	1098	16%, 22%	16%, 22%
5085	1098	11%, 15%	11%, 15%
5086	1098	NONE	NONE
5087	1099	200 %	200 %
5088	1099	300 %	300 %
5089	1099	150 %	150 %
5090	1099	50 %	50 %
5091	1099	NONE	NONE
5092	1100	30%	30%
5093	1100	25%	25%
5094	1100	33%	33%
5095	1100	20%	20%
5096	1100	NONE	NONE
5097	1101	22 kg	22 kg
5098	1101	23kg	23kg
5099	1101	23.5kg	23.5kg
5100	1101	22.5kg	22.5kg
5101	1101	NONE	NONE
5102	1102	33(1/3) %	33(1/3) %
5103	1102	16(2/3) %	16(2/3) %
5104	1102	42 %	42 %
5105	1102	35 %	35 %
5106	1102	NONE	NONE
5107	1103	15%	15%
5108	1103	13%	13%
5109	1103	10%	10%
5110	1103	12.5%	12.5%
5111	1103	NONE	NONE
5112	1104	100 √2 %	100 √2 %
5113	1104	100 √2 - 1 %	100 √2 - 1 %
5114	1104	100 √2 + 1 %	100 √2 + 1 %
5115	1104	50 √2 + 1 %	50 √2 + 1 %
5116	1104	NONE	NONE
5117	1105	15 %	15 %
5118	1105	25 %	25 %
5119	1105	20 %	20 %
5120	1105	18 %	18 %
5121	1105	NONE	NONE
5122	1106	2250	2250
5123	1106	1125	1125
5124	1106	2000	2000
5125	1106	1525	1525
5126	1106	NONE	NONE
5127	1107	10%	10%
5128	1107	15%	15%
5129	1107	16%	16%
5130	1107	18%	18%
5131	1107	NONE	NONE
5132	1108	30 kg	30 kg
5133	1108	32 kg	32 kg
5134	1108	34 kg	34 kg
5135	1108	35 kg	35 kg
5136	1108	NONE	NONE
5137	1109	30 ltr	30 ltr
5138	1109	35 ltr	35 ltr
5139	1109	40 ltr	40 ltr
5140	1109	45 ltr	45 ltr
5141	1109	NONE	NONE
5142	1110	24%	24%
5143	1110	16%	16%
5144	1110	8%	8%
5145	1110	12%	12%
5146	1110	NONE	NONE
5011	1084	32.06 %	32.06 %
5012	1084	33.05 %	33.05 %
5013	1084	34.07 %	34.07 %
5014	1084	35.08 %	35.08 %
5015	1084	NONE	NONE
5147	1111	50	50
5148	1111	28	28
5149	1111	75	75
5150	1111	26	26
5151	1111	NONE	NONE
5152	1112	12%	12%
5153	1112	7%	7%
5154	1112	8%	8%
5155	1112	13%	13%
5156	1112	NONE	NONE
5157	1113	70.50%	70.50%
5158	1113	69.45%	69.45%
5159	1113	68.75%	68.75%
5160	1113	62.75%	62.75%
5161	1113	NONE	NONE
5162	1114	6000	6000
5163	1114	6100	6100
5164	1114	6300	6300
5165	1114	6400	6400
5166	1114	NONE	NONE
5167	1115	16 : 15 : 9	16 : 15 : 9
5168	1115	16 : 12 : 9	16 : 12 : 9
5169	1115	20 : 12 : 9	20 : 12 : 9
5170	1115	20 : 16 : 15	20 : 16 : 15
5171	1115	NONE	NONE
5172	1116	14(1/8) %	14(1/8) %
5173	1116	7(1/8) %	7(1/8) %
5174	1116	56(1/8) %	56(1/8) %
5175	1116	28(1/8) %	28(1/8) %
5176	1116	NONE	NONE
5177	1117	42	42
5178	1117	32	32
5179	1117	23	23
5180	1117	24	24
5181	1117	NONE	NONE
5182	1118	20%	20%
5183	1118	10%	10%
5184	1118	30%	30%
5185	1118	12%	12%
5186	1118	NONE	NONE
5187	1119	30000	30000
5188	1119	28000	28000
5189	1119	28800	28800
5190	1119	40000	40000
5191	1119	NONE	NONE
5192	1120	374	374
5193	1120	430	430
5194	1120	350	350
5195	1120	482	482
5196	1120	NONE	NONE
5197	1121	14(2/7) %	14(2/7) %
5198	1121	16 %	16 %
5199	1121	16(2/3) %	16(2/3) %
5200	1121	14(1/3) %	14(1/3) %
5201	1121	NONE	NONE
5202	1122	16.66 %	16.66 %
5203	1122	15.15 %	15.15 %
5204	1122	13.13 %	13.13 %
5205	1122	11.11 %	11.11 %
5206	1122	NONE	NONE
5207	1123	156.86 %	156.86 %
5208	1123	163.52 %	163.52 %
5209	1123	140.55 %	140.55 %
5210	1123	151.37 %	151.37 %
5211	1123	NONE	NONE
5212	1124	10000	10000
5213	1124	12000	12000
5214	1124	9000	9000
5215	1124	6000	6000
5216	1124	NONE	NONE
5217	1125	61.29 %	61.29 %
5218	1125	69 %	69 %
5219	1125	96 %	96 %
5220	1125	82.25 %	82.25 %
5221	1125	NONE	NONE
5222	1126	15	15
5223	1126	14	14
5224	1126	18	18
5225	1126	17	17
5226	1126	NONE	NONE
5227	1127	48%	48%
5228	1127	53%	53%
5229	1127	61%	61%
5230	1127	50%	50%
5231	1127	NONE	NONE
5232	1128	rs. 5280	rs. 5280
5233	1128	rs. 4720	rs. 4720
5234	1128	rs. 6290	rs. 6290
5235	1128	rs. 4960	rs. 4960
5236	1128	NONE	NONE
5237	1129	96000	96000
5238	1129	84000	84000
5239	1129	128000	128000
5240	1129	120000	120000
5241	1129	NONE	NONE
5242	1130	450000	450000
5243	1130	460000	460000
5244	1130	475000	475000
5245	1130	480000	480000
5246	1130	NONE	NONE
5247	1131	20 : 11	20 : 11
5248	1131	9 : 11	9 : 11
5249	1131	8 : 9	8 : 9
5250	1131	11 : 20	11 : 20
5251	1131	NONE	NONE
5252	1132	22.20 %	22.20 %
5253	1132	36.36 %	36.36 %
5254	1132	27.27 %	27.27 %
5255	1132	33.33 %	33.33 %
5256	1132	NONE	NONE
5257	1133	42 kg	42 kg
5258	1133	45.5 kg	45.5 kg
5259	1133	56 kg	56 kg
5260	1133	52 kg	52 kg
5261	1133	NONE	NONE
5262	1134	11.11 %	11.11 %
5263	1134	9.09 %	9.09 %
5264	1134	15.15 %	15.15 %
5265	1134	10 %	10 %
5266	1134	NONE	NONE
5267	1135	9.375 %	9.375 %
5268	1135	5.72 %	5.72 %
5269	1135	7.39 %	7.39 %
5270	1135	8.57 %	8.57 %
5271	1135	NONE	NONE
5272	1136	1.625 %	1.625 %
5273	1136	1.25 %	1.25 %
5274	1136	1.875 %	1.875 %
5275	1136	1.5625 %	1.5625 %
5276	1136	NONE	NONE
5277	1137	Rs 25.5	Rs 25.5
5278	1137	Rs. 30	Rs. 30
5279	1137	Rs. 27	Rs. 27
5280	1137	Rs. 28	Rs. 28
5281	1137	NONE	NONE
5282	1138	rs.1785	rs.1785
5283	1138	rs.2295	rs.2295
5284	1138	rs.2550	rs.2550
5285	1138	rs.2750	rs.2750
5286	1138	NONE	NONE
5287	1139	16.66 %	16.66 %
5288	1139	25 %	25 %
5289	1139	12 %	12 %
5290	1139	3.33 %	3.33 %
5291	1139	NONE	NONE
5292	1140	200	200
5293	1140	250	250
5294	1140	300	300
5295	1140	303	303
5296	1140	NONE	NONE
5297	1141	15%	15%
5298	1141	14%	14%
5299	1141	12%	12%
5300	1141	10%	10%
5301	1141	NONE	NONE
5302	1142	300.80	300.80
5303	1142	312.40	312.40
5304	1142	311.90	311.90
5305	1142	310.20	310.20
5306	1142	none	none
5307	1143	700.55 rs	700.55 rs
5308	1143	750.40 rs	750.40 rs
5309	1143	787.50 rs	787.50 rs
5310	1143	740.60 rs	740.60 rs
5311	1143	none	none
5312	1144	2400rs.	2400rs.
5313	1144	2000rs.	2000rs.
5314	1144	2200rs.	2200rs.
5315	1144	2500rs.	2500rs.
5316	1144	none	none
5317	1145	P=Rs.625, r=4%	P=Rs.625, r=4%
5318	1145	P=Rs.600, r=5%	P=Rs.600, r=5%
5319	1145	P=Rs.650, r=7%	P=Rs.650, r=7%
5320	1145	P=Rs.630, r=6%	P=Rs.630, r=6%
5321	1145	none	none
5322	1146	7%	7%
5323	1146	5%	5%
5324	1146	4%	4%
5325	1146	6%	6%
5326	1146	none	none
5327	1147	3000rs.	3000rs.
5328	1147	3500rs.	3500rs.
5329	1147	3200rs.	3200rs.
5330	1147	3400rs.	3400rs.
5331	1147	none	none
5332	1148	rs. 1270	rs. 1270
5333	1148	rs.1200	rs.1200
5334	1148	rs.1280	rs.1280
5335	1148	rs.1250	rs.1250
5336	1148	none	none
5337	1149	18yrs	18yrs
5338	1149	15yrs	15yrs
5339	1149	12yrs	12yrs
5340	1149	14yrs	14yrs
5341	1149	none	none
5342	1150	18yrs	18yrs
5343	1150	17yrs	17yrs
5344	1150	20yrs	20yrs
5345	1150	24yrs	24yrs
5346	1150	none	none
5347	1151	25yrs	25yrs
5348	1151	18yrs	18yrs
5349	1151	30yrs	30yrs
5350	1151	35yrs	35yrs
5351	1151	none	none
5352	1152	2 years	2 years
5353	1152	3 years	3 years
5354	1152	4 years	4 years
5355	1152	5 years	5 years
5356	1152	none	none
5357	1153	4000 rs.	4000 rs.
5358	1153	5000 rs.	5000 rs.
5359	1153	4500 rs.	4500 rs.
5360	1153	6000 rs.	6000 rs.
5361	1153	none	none
5362	1154	7%	7%
5363	1154	5%	5%
5364	1154	6%	6%
5365	1154	8%	8%
5366	1154	none	none
5367	1155	1,00,000	1,00,000
5368	1155	1,40,000	1,40,000
5369	1155	1,50,000	1,50,000
5370	1155	2,00,000	2,00,000
5371	1155	none	none
5372	1156	rs. 32000 	rs. 32000 
5373	1156	rs. 34000 	rs. 34000 
5374	1156	rs. 36000 	rs. 36000 
5375	1156	rs. 30000 	rs. 30000 
5376	1156	none	none
5377	1157	25%	25%
5378	1157	30%	30%
5379	1157	20%	20%
5380	1157	24%	24%
5381	1157	none	none
5382	1158	Rs. 1537.50	Rs. 1537.50
5383	1158	Rs. 1573.50	Rs. 1573.50
5384	1158	Rs. 1557.50	Rs. 1557.50
5385	1158	Rs. 1540.50	Rs. 1540.50
5386	1158	none	none
5387	1159	7%\t	7%\t
5388	1159	5%\t	5%\t
5389	1159	6%\t	6%\t
5390	1159	8%\t	8%\t
5391	1159	none	none
5392	1160	464.20 	464.20 
5393	1160	464.10 	464.10 
5394	1160	400.30 	400.30 
5395	1160	430.40	430.40
5396	1160	none	none
5397	1161	rs. 8000	rs. 8000
5398	1161	rs. 1500	rs. 1500
5399	1161	rs. 2000	rs. 2000
5400	1161	rs. 2500	rs. 2500
5401	1161	none	none
5402	1162	6000	6000
5403	1162	5000	5000
5404	1162	8000	8000
5405	1162	9000	9000
5406	1162	none	none
5407	1163	4.404	4.404
5408	1163	4.405\t	4.405\t
5409	1163	4.403\t	4.403\t
5410	1163	4.406	4.406
5411	1163	none	none
5412	1164	81.60	81.60
5413	1164	80.55\t	80.55\t
5414	1164	82.50\t	82.50\t
5415	1164	84.65	84.65
5416	1164	none	none
5417	1165	2%	2%
5418	1165	1%	1%
5419	1165	5%	5%
5420	1165	3%	3%
5421	1165	none	none
5422	1166	8	8
5423	1166	7	7
5424	1166	10	10
5425	1166	9	9
5426	1166	none	none
5427	1167	10,000\t	10,000\t
5428	1167	15,000\t	15,000\t
5429	1167	20,000\t	20,000\t
5430	1167	14,000\t	14,000\t
5431	1167	none\t	none\t
5432	1168	630	630
5433	1168	640	640
5434	1168	650	650
5435	1168	625	625
5436	1168	none	none
5437	1169	18cm	18cm
5438	1169	15cm	15cm
5439	1169	20cm	20cm
5440	1169	17cm	17cm
5441	1169	none	none
5442	1170	4yrs	4yrs
5443	1170	5yrs	5yrs
5444	1170	7yrs	7yrs
5445	1170	6yrs	6yrs
5446	1170	none	none
5447	1171	3500	3500
5448	1171	3000\t	3000\t
5449	1171	3600\t	3600\t
5450	1171	3300\t	3300\t
5451	1171	none	none
5452	1172	1600	1600
5453	1172	1500	1500
5454	1172	1400	1400
5455	1172	1700	1700
5456	1172	NONE	NONE
5457	1173	2930	2930
5458	1173	2929	2929
5459	1173	2030	2030
5460	1173	2525	2525
5461	1173	NONE	NONE
5462	1174	20700	20700
5463	1174	22750	22750
5464	1174	21780	21780
5465	1174	25855	25855
5466	1174	none	none
5467	1175	1652.80	1652.80
5468	1175	1561.85	1561.85
5469	1175	1751.86	1751.86
5470	1175	1431.87	1431.87
5471	1175	none	none
5472	1176	280.80	280.80
5473	1176	280.50	280.50
5474	1176	280.70	280.70
5475	1176	280.60	280.60
5476	1176	none	none
5477	1177	4.1666 %	4.1666 %
5478	1177	4.5%	4.5%
5479	1177	4.333%	4.333%
5480	1177	4.2%	4.2%
5481	1177	4.25%	4.25%
5482	1178	18%	18%
5483	1178	19%	19%
5484	1178	20%	20%
5485	1178	12%	12%
5486	1178	none	none
5487	1179	3 years	3 years
5488	1179	2 years	2 years
5489	1179	4 years	4 years
5490	1179	5 years	5 years
5491	1179	none	none
5492	1180	24yrs	24yrs
5493	1180	25yrs	25yrs
5494	1180	20yrs	20yrs
5495	1180	22yrs	22yrs
5496	1180	none	none
5497	1181	1600	1600
5498	1181	1500	1500
5499	1181	1200	1200
5500	1181	1400	1400
5501	1181	none	none
5502	1182	2000	2000
5503	1182	2500	2500
5504	1182	2400	2400
5505	1182	2200	2200
5506	1182	none	none
5507	1183	570	570
5508	1183	650	650
5509	1183	675	675
5510	1183	720	720
5511	1183	none	none
5512	1184	4000	4000
5513	1184	4750	4750
5514	1184	4850	4850
5515	1184	4900	4900
5516	1184	none	none
5517	1185	4000	4000
5518	1185	5000	5000
5519	1185	7000	7000
5520	1185	6000	6000
5521	1185	none	none
5522	1186	 5%	 5%
5523	1186	 4%	 4%
5524	1186	 3%	 3%
5525	1186	6%	6%
5526	1186	none	none
5527	1187	9144	9144
5528	1187	8449	8449
5529	1187	8944	8944
5530	1187	7494	7494
5531	1187	NONE	NONE
5532	1188	400	400
5533	1188	800	800
5534	1188	600	600
5535	1188	700	700
5536	1188	NONE	NONE
5537	1189	8810	8810
5538	1189	8820	8820
5539	1189	8820	8820
5540	1189	8840	8840
5541	1189	NONE	NONE
5542	1190	2403	2403
5543	1190	3240	3240
5544	1190	4032	4032
5545	1190	2340	2340
5546	1190	none	none
5547	1191	30%	30%
5548	1191	50%	50%
5549	1191	20%	20%
5550	1191	40%	40%
5551	1191	none	none
5552	1192	920	920
5553	1192	910	910
5554	1192	890	890
5555	1192	880	880
5556	1192	none	none
5557	1193	850	850
5558	1193	920	920
5559	1193	890	890
5560	1193	930	930
5561	1193	none	none
5562	1194	600	600
5563	1194	900	900
5564	1194	750	750
5565	1194	800	800
5566	1194	none	none
5567	1195	30%	30%
5568	1195	50%	50%
5569	1195	20%	20%
5570	1195	35%	35%
5571	1195	none	none
5572	1196	18000rs.	18000rs.
5573	1196	15000rs.	15000rs.
5574	1196	12000rs.	12000rs.
5575	1196	14000rs.	14000rs.
5576	1196	none	none
5577	1197	16.5%	16.5%
5578	1197	15.5%	15.5%
5579	1197	14.6%	14.6%
5580	1197	12.5%	12.5%
5581	1197	none	none
5582	1198	22.22 %\t	22.22 %\t
5583	1198	28.56 %\t	28.56 %\t
5584	1198	14 %\t	14 %\t
5585	1198	16.25 %\t	16.25 %\t
5586	1198	none	none
5587	1199	1:2	1:2
5588	1199	5:2	5:2
5589	1199	2:5	2:5
5590	1199	3:5	3:5
5591	1199	none	none
5592	1200	25%	25%
5593	1200	33.33%	33.33%
5594	1200	66.66%	66.66%
5595	1200	50%	50%
5596	1200	none	none
5597	1201	25%	25%
5598	1201	33.33%	33.33%
5599	1201	66.66%	66.66%
5600	1201	50%	50%
5601	1201	none	none
5602	1202	40	40
5603	1202	50	50
5604	1202	60	60
5605	1202	80	80
5606	1202	none	none
5607	1203	100rs	100rs
5608	1203	120rs	120rs
5609	1203	150rs	150rs
5610	1203	200rs	200rs
5611	1203	none	none
5612	1204	30rs. 	30rs. 
5613	1204	90rs. 	90rs. 
5614	1204	110rs. 	110rs. 
5615	1204	80rs. 	80rs. 
5616	1204	none	none
5617	1205	30rs	30rs
5618	1205	50rs	50rs
5619	1205	40rs	40rs
5620	1205	80rs	80rs
5621	1205	none	none
5622	1206	40	40
5623	1206	50	50
5624	1206	20	20
5625	1206	60	60
5626	1206	none	none
5627	1207	16.66% loss	16.66% loss
5628	1207	12.50% loss	12.50% loss
5629	1207	12.25% loss	12.25% loss
5630	1207	30% loss	30% loss
5631	1207	none	none
5632	1208	25%	25%
5633	1208	15%	15%
5634	1208	16.66%	16.66%
5635	1208	14.28%	14.28%
5636	1208	none	none
5637	1209	20	20
5638	1209	22	22
5639	1209	24	24
5640	1209	25	25
5641	1209	none	none
5642	1210	30%	30%
5643	1210	45%	45%
5644	1210	44%	44%
5645	1210	35%	35%
5646	1210	none	none
5647	1211	600rs.	600rs.
5648	1211	700rs.	700rs.
5649	1211	800rs.	800rs.
5650	1211	550rs.	550rs.
5651	1211	none	none
5652	1212	250rs	250rs
5653	1212	350rs	350rs
5654	1212	375rs	375rs
5655	1212	400rs	400rs
5656	1212	none	none
5657	1213	45%	45%
5658	1213	50%	50%
5659	1213	60%	60%
5660	1213	70%	70%
5661	1213	none	none
5662	1214	15%	15%
5663	1214	14%	14%
5664	1214	20%	20%
5665	1214	18%	18%
5666	1214	none	none
5667	1215	28	28
5668	1215	25	25
5669	1215	20	20
5670	1215	30	30
5671	1215	none	none
5672	1216	34.17	34.17
5673	1216	41.66	41.66
5674	1216	51.25	51.25
5675	1216	36.36	36.36
5676	1216	none	none
5677	1217	51%	51%
5678	1217	42.84%	42.84%
5679	1217	35%	35%
5680	1217	35.7%	35.7%
5681	1217	none	none
5682	1218	40	40
5683	1218	30	30
5684	1218	50	50
5685	1218	80	80
5686	1218	none	none
5687	1219	1200rs	1200rs
5688	1219	1600rs	1600rs
5689	1219	1400rs	1400rs
5690	1219	1000rs	1000rs
5691	1219	none	none
5692	1220	6000	6000
5693	1220	6125	6125
5694	1220	6250	6250
5695	1220	6200	6200
5696	1220	none	none
5697	1221	7.14%	7.14%
5698	1221	6.66%	6.66%
5699	1221	6.25%	6.25%
5700	1221	14.28%	14.28%
5701	1221	none	none
5702	1222	13837	13837
5703	1222	52000	52000
5704	1222	55350	55350
5705	1222	56775	56775
5706	1222	none	none
5707	1223	41	41
5708	1223	50	50
5709	1223	75	75
5710	1223	125	125
5711	1223	none	none
5712	1224	25	25
5713	1224	50	50
5714	1224	100	100
5715	1224	75	75
5716	1224	none	none
5717	1225	63%loss	63%loss
5718	1225	70%loss	70%loss
5719	1225	75% profit	75% profit
5720	1225	80% profit	80% profit
5721	1225	none	none
5722	1226	10	10
5723	1226	12.5	12.5
5724	1226	15	15
5725	1226	20	20
5726	1226	none	none
5727	1227	(Y-X)/(P+L)	(Y-X)/(P+L)
5728	1227	(Y+X)/(P+L)	(Y+X)/(P+L)
5729	1227	{(Y-X)/(P+L)}X100	{(Y-X)/(P+L)}X100
5730	1227	{(Y-X)/(P-L)}X100	{(Y-X)/(P-L)}X100
5731	1227	NONE	NONE
5732	1228	RS. 3192	RS. 3192
5733	1228	RS. 3032	RS. 3032
5734	1228	RS. 3082	RS. 3082
5735	1228	RS. 3136	RS. 3136
5736	1228	NONE	NONE
5737	1229	16	16
5738	1229	15	15
5739	1229	20	20
5740	1229	24	24
5741	1229	NONE	NONE
5742	1230	18	18
5743	1230	40	40
5744	1230	10	10
5745	1230	27	27
5746	1230	NONE	NONE
5747	1231	10	10
5748	1231	9	9
5749	1231	11	11
5750	1231	6	6
5751	1231	3	3
5752	1232	4	4
5753	1232	5	5
5754	1232	6	6
5755	1232	7	7
5756	1232	NONE	NONE
5757	1233	10	10
5758	1233	1	1
5759	1233	8315945	8315945
5760	1233	831594	831594
5761	1233	NONE	NONE
5762	1234	8ab    	8ab    
5763	1234	-8ab	-8ab
5764	1234	 8a² + 2b²	 8a² + 2b²
5765	1234	8a²-2b²	8a²-2b²
5766	1234	NONE	NONE
5767	1235	12	12
5768	1235	10	10
5769	1235	16	16
5770	1235	8	8
5771	1235	NONE	NONE
5772	1236	30	30
5773	1236	25	25
5774	1236	40	40
5775	1236	50	50
5776	1236	NONE	NONE
5777	1237	82	82
5778	1237	83	83
5779	1237	84	84
5780	1237	86	86
5781	1237	NONE	NONE
5782	1238	9	9
5783	1238	6	6
5784	1238	7	7
5785	1238	8	8
5786	1238	NONE	NONE
5787	1239	399 AND  38	399 AND  38
5788	1239	295 AND 142 	295 AND 142 
5789	1239	 58 AND 379	 58 AND 379
5790	1239	23 AND 214	23 AND 214
5791	1239	NONE	NONE
5792	1240	6	6
5793	1240	7	7
5794	1240	8	8
5795	1240	9	9
5796	1240	NONE	NONE
5797	1241	100000    	100000    
5798	1241	199900	199900
5799	1241	100008	100008
5800	1241	100006	100006
5801	1241	NONE	NONE
5802	1242	165   	165   
5803	1242	185   	185   
5804	1242	195   	195   
5805	1242	175   	175   
5806	1242	NONE	NONE
5807	1243	13/7	13/7
5808	1243	20/91	20/91
5809	1243	91/20	91/20
5810	1243	13/20	13/20
5811	1243	NONE	NONE
5812	1244	X+Y 	X+Y 
5813	1244	X-Y	X-Y
5814	1244	X + Y +1	X + Y +1
5815	1244	XY	XY
5816	1244	NONE	NONE
5817	1245	2	2
5818	1245	5	5
5819	1245	6	6
5820	1245	3	3
5821	1245	NONE	NONE
5822	1246	6	6
5823	1246	4	4
5824	1246	2	2
5825	1246	1	1
5826	1246	NONE	NONE
5827	1247	18	18
5828	1247	17	17
5829	1247	19	19
5830	1247	15	15
5831	1247	NONE	NONE
5832	1248	0.0001	0.0001
5833	1248	0.001	0.001
5834	1248	0.01	0.01
5835	1248	0.1	0.1
5836	1248	none	none
5837	1249	77	77
5838	1249	66	66
5839	1249	88	88
5840	1249	90	90
5841	1249	85	85
5842	1250	10037	10037
5843	1250	10086	10086
5844	1250	10081	10081
5845	1250	10063	10063
5846	1250	NONE	NONE
5847	1251	13	13
5848	1251	12	12
5849	1251	11	11
5850	1251	10	10
5851	1251	24	24
5852	1252	2	2
5853	1252	32	32
5854	1252	40	40
5855	1252	39	39
5856	1252	6	6
5857	1253	20	20
5858	1253	32	32
5859	1253	40	40
5860	1253	39	39
5861	1253	56	56
5862	1254	4	4
5863	1254	5	5
5864	1254	6	6
5865	1254	2	2
5866	1254	NONE	NONE
5867	1255	14	14
5868	1255	21	21
5869	1255	22	22
5870	1255	48	48
5871	1255	NONE	NONE
5872	1256	9690	9690
5873	1256	9720	9720
5874	1256	9930	9930
5875	1256	9960	9960
5876	1256	NONE	NONE
5877	1257	37	37
5878	1257	36	36
5879	1257	39	39
5880	1257	30	30
5881	1257	NONE	NONE
5882	1258	8	8
5883	1258	12	12
5884	1258	24	24
5885	1258	35	35
5886	1258	NONE	NONE
5887	1259	868600	868600
5888	1259	532900	532900
5889	1259	692600	692600
5890	1259	705600	705600
5891	1259	NONE	NONE
5892	1260	252	252
5893	1260	228	228
5894	1260	304	304
5895	1260	380	380
5896	1260	NONE	NONE
5897	1261	78	78
5898	1261	79	79
5899	1261	80	80
5900	1261	81	81
5901	1261	NONE	NONE
5902	1262	75	75
5903	1262	81	81
5904	1262	85	85
5905	1262	89	89
5906	1262	NONE	NONE
5907	1263	03	03
5908	1263	60	60
5909	1263	70	70
5910	1263	40	40
5911	1263	04	04
5912	1264	12 mid night	12 mid night
5913	1264	3 a.m.	3 a.m.
5914	1264	6 a.m.	6 a.m.
5915	1264	9 a.m.	9 a.m.
5916	1264	NONE	NONE
5917	1265	840	840
5918	1265	841	841
5919	1265	820	820
5920	1265	814	814
5921	1265	NONE	NONE
5922	1266	36	36
5923	1266	32	32
5924	1266	30	30
5925	1266	48	48
5926	1266	NONE	NONE
5927	1267	x³ - y³	x³ - y³
5928	1267	x³	x³
5929	1267	y³	y³
5930	1267	x³ + y³	x³ + y³
5931	1267	NONE	NONE
5932	1268	11	11
5933	1268	8	8
5934	1268	6	6
5935	1268	7	7
5936	1268	NONE	NONE
5937	1269	8	8
5938	1269	10	10
5939	1269	12	12
5940	1269	15	15
5941	1269	18	18
5942	1270	2550	2550
5943	1270	2600	2600
5944	1270	2500	2500
5945	1270	2650	2650
5946	1270	none	none
5947	1271	divisible by (11+13)	divisible by (11+13)
5948	1271	divisible by (13-11)	divisible by (13-11)
5949	1271	429	429
5950	1271	divisible by (11×13)	divisible by (11×13)
5951	1271	none	none
5952	1272	12	12
5953	1272	6	6
5954	1272	3	3
5955	1272	2	2
5956	1272	8	8
5957	1273	28	28
5958	1273	16	16
5959	1273	18	18
5960	1273	40	40
5961	1273	none	none
5962	1274	Rational	अपरिमेय
5963	1274	Integers	पूर्णांक
5964	1274	Natural	पूर्ण/प्राकृतिक
5965	1274	Real	वास्तविक
5966	1274	none	none
5967	1275	a+b+1	a+b+1
5968	1275	a+b	a+b
5969	1275	ab	ab
5970	1275	ab+2	ab+2
5971	1275	none	none
5972	1276	0.000004	0.000004
5973	1276	0.000002 	0.000002 
5974	1276	0.04	0.04
5975	1276	0.02	0.02
5976	1276	NONE	NONE
5977	1277	35	35
5978	1277	80	80
5979	1277	20	20
5980	1277	10	10
5981	1277	NONE	NONE
5982	1278	44	44
5983	1278	54	54
5984	1278	64	64
5985	1278	65	65
5986	1278	NONE	NONE
5987	1279	121	21
5988	1279	31	31
5989	1279	93	39
5990	1279	91	91
5991	1279	NONE	NONE
1501	349	A-10days, B-15days	A-10days, B-15days
1502	349	A-12days, B-15days	A-12days, B-15days
1503	349	A-14days, B-16days	A-14days, B-16days
1504	349	A-10days, B-18days	A-10days, B-18days
6040	1293	70	70
6041	1293	77	77
6042	1293	63	63
6043	1293	56	56
6044	1293	None	None
6100	1336	4	4
1423	330	None	None
1592	371	8(1/4)	8(1/4)
6101	1336	6	6
6102	1336	2	2
6103	1336	5	5
6104	1336	none	none
6105	1337	2(3/4) days	2(3/4) days
6035	1297	6(13/15) days	6(13/15) days
6036	1297	8 days	8 days
6037	1297	12(11/17) days	12(11/17) days
6038	1297	5(7/11) days	5(7/11) days
6039	1297	None	None
6045	1325	abcba	abcba
6046	1325	aadcb	aadcb
6047	1325	bacab	bacab
6048	1325	bcaab	bcaab
6049	1325	None	None
6050	1326	aabca	aabca
6051	1326	abaca	abaca
6052	1326	bacab	bacab
6053	1326	bcaca	bcaca
6054	1326	None	None
6055	1327	98999	98999
6056	1327	99899	99899
6057	1327	99989	99989
6058	1327	99998	99998
6059	1327	None	None
6060	1328	9	9
6061	1328	7	7
6062	1328	4	4
6063	1328	3	3
6064	1328	none	none
6065	1329	3days	3days
6066	1329	4days	4days
6067	1329	5days	5days
6068	1329	8days	8days
6069	1329	none	none
6070	1330	40 hrs	40 hrs
6071	1330	20 hrs	20 hrs
6072	1330	30 hrs	30 hrs
6073	1330	50 hrs	50 hrs
6074	1330	none	none
6075	1331	648	648
6076	1331	1800	1800
6077	1331	2700	2700
6078	1331	10800	10800
6079	1331	none	none
6080	1332	78	78
6081	1332	79	79
6082	1332	80	80
6083	1332	81	81
6084	1332	none	none
6085	1333	5 days	5 days
6086	1333	10 days	10 days
6087	1333	2.5 days	2.5 days
6088	1333	7.5 days	7.5 days
6089	1333	none	none
6090	1334	400	400
6091	1334	404	404
6092	1334	408	408
6093	1334	412	412
6094	1334	none	none
6095	1335	27² + 93² 	27² + 93² 
6096	1335	34² + 93² 	34² + 93² 
6097	1335	82² + 41² 	82² + 41² 
6098	1335	79² + 62² 	79² + 62² 
6099	1335	none	none
2380	533	3cm	3cm
2381	533	5cm	5cm
2382	533	3.75cm	3.75cm
2383	533	4cm	4cm
2384	533	2.5cm	2.5cm
2379	532	none	none
6106	1337	2(2/5) days	2(2/5) days
6107	1337	2(4/6) days	2(4/6) days
6108	1337	2(5/7) days 	2(5/7) days 
6109	1337	NONE	NONE
6110	1338	24	24
6111	1338	15	15
6112	1338	20	20
6113	1338	16	16
6114	1338	none	none
6115	1339	A- 12 days, B- 28 days	A- 12 days, B- 28 days
6116	1339	A- 14 days, B- 23 days	A- 14 days, B- 23 days
6117	1339	A- 16 days, B- 20 days	A- 16 days, B- 20 days
6118	1339	A- 18 days, B- 22 days	A- 18 days, B- 22 days
6119	1339	NONE	NONE
6120	1340	48(7/30) days	48(7/30) days
6121	1340	48(6/20) days	48(6/20) days
6122	1340	48(8/29) days	48(8/29) days
6123	1340	48(5/23) days	48(5/23) days
6124	1340	NONE	NONE
6125	1341	175	175
6126	1341	150	150
6127	1341	183	183
6128	1341	168	168
6129	1341	none	none
6130	1342	9(6/7) days	9(6/7) days
6131	1342	9(3/4) days	9(3/4) days
6132	1342	9(5/6) days	9(5/6) days
6133	1342	9(2/3) days	9(2/3) days
6134	1342	NONE	NONE
6135	1343	17(2/3) days	17(2/3) days
6136	1343	17(4/5) days	17(4/5) days
6137	1343	15(2/3) days	15(2/3) days
6138	1343	15(4/5) days	15(4/5) days
6139	1343	NONE	NONE
6140	1344	15	15
6141	1344	24	24
6142	1344	12	12
6143	1344	10	10
6144	1344	none	none
6145	1345	5/3 hrs	5/3 hrs
6146	1345	3/2 hrs	3/2 hrs
6147	1345	2/3 hrs	2/3 hrs
6148	1345	4/3 hrs	4/3 hrs
6149	1345	none	none
4359	927	22	22
4360	927	25	25
4361	927	20	20
4362	927	NONE	NONE
4363	927	-	-
6150	1346	900,120,180	900,120,180
6151	1346	500,480,220 	500,480,220 
6152	1346	300,360,540	300,360,540
6153	1346	250,300,500	250,300,500
6154	1346	none	none
6155	1347	50,100,150 	50,100,150 
6156	1347	170,80,50 	170,80,50 
6157	1347	50,200,50 	50,200,50 
6158	1347	150,100,50 	150,100,50 
6159	1347	none	none
6160	1348	650,250,100	650,250,100
6161	1348	450,250,300	450,250,300
6162	1348	550,250,200	550,250,200
6163	1348	300,250,200	300,250,200
6164	1348	none	none
6165	1349	1000,800	1000,800
6166	1349	1400,400	1400,400
6167	1349	1200,600	1200,600
6168	1349	1500,300	1500,300
6169	1349	none	none
6170	1350	300rs	300rs
6171	1350	325rs	325rs
6172	1350	250rs	250rs
6173	1350	275rs	275rs
6174	1350	none	none
6175	1351	1600	1600
6176	1351	2000	2000
6177	1351	2500	2500
6178	1351	2400	2400
6179	1351	none	none
6180	1352	40	40
6181	1352	80	80
6182	1352	50	50
6183	1352	60	60
6184	1352	none	none
6185	1353	1040	1040
6186	1353	1440	1440
6187	1353	1560	1560
6188	1353	910	910
6189	1353	none	none
6190	1354	10	10
6191	1354	4	4
6192	1354	8	8
6193	1354	5.5	5.5
6194	1354	none	none
6195	1355	6	6
6196	1355	8	8
6197	1355	10	10
6198	1355	12	12
6199	1355	none	none
6200	1356	14	14
6201	1356	36	36
6202	1356	24	24
6203	1356	27	27
6204	1356	none	none
6205	1357	4000	4000
6206	1357	4320	4320
6207	1357	4500	4500
6208	1357	4860	4860
6209	1357	none	none
6210	1358	500	500
6211	1358	600	600
6212	1358	1000	1000
6213	1358	700	700
6214	1358	none	none
6215	1359	20	20
6216	1359	25	25
6217	1359	30	30
6218	1359	15	15
6219	1359	none	none
6220	1360	20	20
6221	1360	25	25
6222	1360	24	24
6223	1360	22	22
6224	1360	none	none
6225	1361	10 min	10 min
6226	1361	12 min	12 min
6227	1361	20 min	20 min
6228	1361	8 min	8 min
6229	1361	none	none
6230	1361	 	 
6231	1362	81min	81min
6232	1362	108min	108min
6233	1362	144min	144min
6234	1362	192min	192min
6235	1362	none	none
6236	1363	7	7
6237	1363	14	14
6238	1363	28	28
6239	1363	21	21
6240	1363	none	none
6241	1364	3/4 > ½ > 2/5  > 3/7	3/4 > ½ > 2/5  > 3/7
6242	1364	3/4 > ½ > 3/7  > 2/5	3/4 > ½ > 3/7  > 2/5
6243	1364	3/4 < ½ < 2/5 < 3/7	3/4 < ½ < 2/5 < 3/7
6244	1364	3/4 < ½ < 3/7 < 2/5	3/4 < ½ < 3/7 < 2/5
6245	1364	none	none
6246	1365	34	34
6247	1365	25	25
6248	1365	27	27
6249	1365	30	30
6250	1365	32	32
6251	1366	100	100
6252	1366	110	110
6253	1366	111	111
6254	1366	151	151
6255	1366	121	121
6256	1367	LNO	LNO
6257	1367	EFH	EFH
6258	1367	KLM	KLM
6259	1367	VXY	VXY
6260	1367	RPO	RPO
6261	1368	50	50
6262	1368	55	55
6263	1368	56	56
6264	1368	57	57
6265	1368	none	none
6266	1369	Door	Door
6267	1369	Gate	Gate
6268	1369	Table	Table
6269	1369	Window	Window
6270	1369	none	none
6271	1370	NMLK	NMLK
6272	1370	RQPO	RQPO
6273	1370	UTSR	UTSR
6274	1370	WXUV	WXUV
6275	1370	DCBA	DCBA
6276	1371	2	2
6277	1371	3	3
6278	1371	1	1
6279	1371	97	97
6280	1371	37	37
6281	1372	03	03
6282	1372	04	04
6283	1372	60	60
6284	1372	77	77
6285	1372	40	40
6286	1373	9240	9240
6287	1373	10080	10080
6288	1373	9996	9996
6289	1373	10000	10000
6290	1373	none	none
858	207	10	
859	207	13	
860	207	11	
861	207	none	
6291	1374	7612.48 	7612.48 
6292	1374	7352.48	7352.48
6293	1374	7532.68	7532.68
6294	1374	7642.58	7642.58
6295	1374	none	none
6296	1375	0.000004	0.000004
6297	1375	0.000002 	0.000002 
6298	1375	0.04	0.04
6299	1375	0.02	0.02
6300	1375	NONE	NONE
6301	1376	121	121
6302	1376	31	31
6303	1376	93	93
6304	1376	91	91
6305	1376	none	none
6306	1377	6(1/3)days	6(1/3)days
6307	1377	6(1/5)days	6(1/5)days
6308	1377	6(1/4)days	6(1/4)days
6309	1377	6(1/7)days	6(1/7)days
6310	1377	None	None
6311	1378	6 min to empty	6 min to empty
6312	1378	9 min to fill	9 min to fill
6313	1378	9 min to empty	9 min to empty
6314	1378	6 min to fill	6 min to fill
6315	1378	none	none
6316	1379	12 days	12 days
6317	1379	15 days	15 days
6318	1379	18 days	18 days
6319	1379	10 days	10 days
6320	1379	none	none
\.


--
-- Name: test_options__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.test_options__id_seq', 6320, true);


--
-- Data for Name: test_questions; Type: TABLE DATA; Schema: public; Owner: saanviin
--

COPY public.test_questions (_id, test_id, correct_option_index, hindi_text, english_text, pic) FROM stdin;
349	116	2	A किसी काम को करने में (A+B) से़ 5(1/)3 दिन ज्यादा लेता है। जबकि B इसी काम को करने में (A+B) सेे 8(1/3) दिन ज्यादा लेता है तो A और B इस काम को अलग-अलग कितने दिन में कर सकते है ?	A takes 5(1/3)  days more than (A+B) together to complete a work. B takes 8(1/3) days more than (A+B) together to complete a work. In how many days will A and B alone complete this work.	\N
1330	117	5	एक टंकी पाइप A द्वारा 4 घण्टे में भरती है तथा B उसे 5 घण्टे में खाली कर सकती है यदि दोनों नल एक घण्टे के अन्तराल में काम करता है तो टंकी भरने में कितना समय लगेगा यदि पहले A खोला जाए तो।	A can fill the tank in 4 hours B can empty the same tank in 5 hours if they are working alternately how much time to fill the tank if A opens first?	\N
1270	63	3	\tव्यंजक 1+2+3+.......+49+50+49+.....+3+2+1 = ?	Find the sum of 1+2+3+⋯+50+49+⋯+3+2+1	\N
952	76	1	1 पुरूष और 1 लड़का मिलकर किसी काम को 24 दिनों में समाप्त कर सकते है। यदि अंतिम 6 दिनों से केवल लड़का काम कर रहा हो, तो काम 26 दिनों में समाप्त हो जाता है, तो पुरूष अकेलेे काम को कितने दिनों में करेगा?	A man and a boy can complete a piece of work together in 24 days. If for the last six days boy alone does the work then it is completed in 26 days. How long the man will take to complete the work alone ?	\N
956	76	4	दो भाइयों के उम्रों में अन्तर 8 साल है तथा योग 10 साल के बाद उनके उम्रों का योग दुना हो जाएगा। तो छोटे भाई की वर्तमान उम्र क्या है ?	difference between the ages of two brother is 8 year and sum after 10 year is twice than sum of their age than find the age of youngest brother.	\N
546	67	3	किसी वस्तु को 105 रू॰ में बेचने पर एक व्यापारी को 9 प्रतिशत की हानि होती है। 30 प्रतिशत का लाभ प्राप्त करने के लिए,उस व्यापारी को वह वस्तु निम्न भाव में बेचनी चाहिए।	On selling  an article of Rs.105 a person incurred a loss of 9%. At what price should he sell the article to get a profit of 30%?	\N
1230	115	3	( √6 + √10 - √21 - √35 ) (√6 - √10 + √21 - √35) = ?	The value of ( √6 + √10 - √21 - √35 ) (√6 - √10 + √21 - √35)	\N
1231	115	2	किसी दो अंकीय संख्या और अंक पलटने पर बनी नयी संख्या का अंतर सदैव विभाज्य है-	The difference of a number consisting of two digits from the number formed by interchanging the digits is always divisible by.	\N
1232	115	3	100 से 200 के बीच संख्याओं 9 ओर 6 दोनों से भाज्य पूर्णाकों की कुल संख्या.	The total number of integers between 100 and 200, which are divisible by both 9 and 6, is.	\N
1233	115	2	व्यंजक 8315945 × 8315947 में क्या जोड़ा जाये कि पूर्ण वर्ग बन जाये।	What should be added to 8315945 × 8315947, so that number will be a perfect ².	\N
1236	115	1	(1+2+3+4+.…+20 )/ 7\n\nका मान ज्ञात करें।	What is the value of-  (1+2+3+4+.…+20 )/ 7	\N
779	72	3	भारत का सर्वा. आबादी वाला द्वीप कौन सा है ?	 	\N
921	75	2	A किसी काम को करने में (A + B) से़ 5(1/3) दिन ज्यादा लेता है। जबकि B इसी काम को करने में (A + B) सेे 8(1/3) दिन ज्यादा लेता है तो B इस काम को कितने दिन में कर सकता है ?	A takes 5(1/3) days more than (A+B) together to complete a work. B takes 8(1/3) days more than (A+B) together to complete a work. In how many days will B alone complete this work.	\N
1331	117	2	एक समान चाल से चलने पर 6 मशीनें 270 बोटले प्रति मिनिट बनाती है। समान दर से चलते हुए 10 मशीनें 4 मिनट में कितनी बोतले बनाएगीं?	Running at the same constant rate, 6 identical machines can produce a total of 270 bottles per minute. At this rate. How many bottles could 10 such machines produces in 4 minutes.	\N
1332	117	2	एक नौकर को निश्चित दिनों के लिए काम पर रखा गया जिसके लिए उसे 3239 रु दिया जाना था वह कुछ दिनों के लिए अनुपस्थित रहा एवं उसे केवल 2923 रु दिया गया, उसकी अधिकतम दैनिक मजदूरी क्या थी ?	A servant was hired for fixed days for which he had to pay Rs. 3239. he was absent for some days, and only Rs 2923 was paid, what was his maximum daily wages? 	\N
1271	63	4	यदि एक संख्या 11 और 13 दोनों से भाज्य हो तद्नुसार यह अनिवार्य रूप से भाज्य होगी?	If a number is divisible by both 11 and 13, then it must be necessarily.	\N
1272	63	2	वह सबसे बड़ी संख्या जो (n³-n) के रूप वाली प्रत्येक संख्या को पूर्णतः विभाजित करेगी जहां n एक प्राकृृतिक संख्या है?	The largest number that exactly divides each number of the form n³-n, where n is a natural number is.	\N
1273	63	4	किसी संख्या को 13 से भाग देने पर 1 शेष बचता है। यदि भागफल को 5 से भाग दिया जाये तो 3 शेष बचता हे। यदि संख्या को 65 से भाग दिया जाये तो शेषफल क्या बचेगा?	A number divided by 13 leaves a remainder 1 and if the quotient, thus obtained, is divided by 5, we get a remainder of 3. What will be the remainder if the number is divided by 65.	\N
1280	63	4	15 मी. 17 सेमी. लम्बे तथा 9 मी 2 सेमी. चैड़े फर्श पर बिछाने के लिये कम से कम कितने वर्गकार टाईलों की जरूरत होगी?	What is the least number of ² tiles required to pave the floor of a room 12 m 17 cm long and 9m, 2 cm broad.	null
1305	63	4	A की कार्यक्षमता, B से 40% ज्यादा है और B की कार्यक्षमता, C से 20% कम है। यदि A किसी काम को करने में C से 6 दिन कम लेता है। तो बताओं B कितने दिन में करेगा ?	A is 40% more efficient than B and B is 20% less efficient than C. If A takes 6 days less than C to complete a work, then in how many days will B complete this work.	null
778	72	1	सिल्क व्यापार के लिए कौन सा दर्रा प्रसिद्ध है ?	 	\N
780	72	2	कृष्णा नदी डेल्टा और केप केमोरिन के मध्य क्षेत्र को किस नाम से जाना जाता है ?	 	\N
781	72	2	फिरोजपुर किस नदी के किनारे बसा है ?	 	\N
521	67	3	किसी गाॅंव में वर्तमान जन्म दर 55 प्रति हजार है। जबकि मृत्युदर 34 प्रति हजार है। जनसंख्या वृद्धि के संदर्भ में कुल वृद्धि दर ज्ञात करें ?	In a village the current birth rate per thousand is 55\n\nwhereas corresponding death rate is 34 per\n\nthousand. The net growth rate in tern of a\n\npopulation increase will be?\n\n	\N
782	72	3	किस नदी का प्रवाह विपरीत है ?	 	\N
783	72	2	कौन सी परियोजना झेलम नदी पर हंै ?	 	\N
784	72	3	भारत के किस भाग में सर्वा. दैनिक तापान्तर मिलता है ?	 	\N
785	72	1	\tअमृतसर व शिमला लगभग एक ही अक्षांश पर हैं फिर भी जलवायु में भिन्नता है क्योंकि -	 	\N
748	72	4	निम्न में क्या बैक्टीरिया में नहीं पाया जाता? (1) राइबोसोम\t \t(2) हिस्टोन\t\t (3) रिक्तिका\t\t(4) लंवक  	-	\N
953	76	2	A 2 दिन एक काम करता है चला जाता है तो B शेष काम को 9 दिन में पूरा करता है। अगर A 3 दिन तक काम करता तो B शेष काम को 6 दिन में खत्म कर देता। तो बताइये A और B अलग-अलग इस काम को कितने दिन में पूरा करेंगे।	A work for 2 days, then B complete the remaining work in 9 days. If A work for 3 days, then B complete the remaining work in 6 days. In how many days will A and B do this work alone.	\N
1234	115	1	(2a+b)² - (2a-b)² का मान ज्ञात करें।	What is the value of-  (2a+b)² - (2a-b)² is-	\N
805	73	1	1000 में क्या न्यूनतम संख्या जोड़ी जाये ताकि योग 45 से पूर्णतः विभाजित हो जाये ?	The smallest number to be added to 1000, so that 45 divides the sum exactly, is.	\N
1235	115	2	80 के गुणनखंडों की संख्या होगी।	Find the number of factor of 80.	\N
1237	115	4	सबसे बड़ी तथा सबसे छोटी दो अंको की अभाज्य संख्याओं के अंतर की गणना कीजिये ?	Calculate the difference between the largest and the smallest 2 digit prime number? 	\N
1238	115	4	धनात्मक पूर्णांकों 60 और 100 के बीच कितनी अभाज्य संख्याएं हैं ?	How many prime number are available between positive integers 60 and 100? 	\N
1333	117	3	यदि 4 पुरूष और 6 लड़के एक काम को 5 दिनों में खतम करते है और 6 पुरूष और 4 लड़के उसी काम को 4 दिनों में कर सकते है, तो 8 पुरूष व 12 लड़के उसी काम को कितने दिपों में करेंगे?	If 4 men and 6 boys can do a piece of work in 5 days and 6 men and 4 boys can do the same in 4 days, then the time taken by 8 men and 12 boys to do the same type of work will be :	\N
1274	63	4	सभी परिमेय संख्याऐं ___ संख्याऐं हैं।	All rational numbers are _____ numbers.	\N
1275	63	2	यदि a और b विषम संख्याऐं हों तो बताऐं कि निम्नलिखित में सम संख्या कौन-सी है ?	If a and b are the odd numbers then find which is the even in the following ? 	\N
1281	63	2	दो संख्याओं का LCM , बड़ी संख्या का चार गुना है, जबकी HCF और छोटी संख्या अंतर 24 है , छोटी संख्या ज्ञात कीजिए ?	LCM of two numbers is four times the bigger number and difference of HCF and smaller number is 24. Find smaller number? 	null
1309	63	2	A और B की कार्यक्षमता का अनुपात 3: 5 है तथा B और C की कार्यक्षमता का अनुपात 2: 3 है। यदि A और B 4 दिन काम करते हैं तथा बचे हुए शेष काम को C 8 दिन में खत्म करता है तो B अकेले उस काम को कितने दिन में खत्म करेगा ?	The ratio of efficiency of A and B is 3 : 5 and that of B and C is 2 : 3 respectively. If A and B work for 4 days then remaining work is finished by C in 8 days. Then in how many days B alone will finish the work.	null
1334	117	3	50 से कम 3 के सभी गुणजों का योगफल ज्ञात करो।	Find the sum of all positive multiples of 3 less than 50.	\N
1335	117	4	26² + 97²  बराबर है ?	What is 26² + 97² equal to ?	\N
961	76	1	दो व्यक्तियों की आयु का अनुपात 5: 8 है और उनमें से एक की आयु दूसरे से 30 वर्ष अधिक है। उनकी आयु का योग कितने वर्ष होगा ?	The age ratio of two student is 5:8, one of them age is 40yr. more than to the other. Than find the sum of their age?	\N
1336	117	1	(A+B) किसी काम को 8 दिन में करते है। Bऔर C अलग-अलग इसी काम को 12 दिन में करते हैं। A और B मिलकर 4 दिन तक काम करते है और उसके बाद A छोड़ देता है और उसके 2 दिन बाद B छोड़ देता है। उसके बाद C बचे हुये काम को अकेला कितेने दिन में खत्म करेगा ?	(A+B) together can complete a job in 8 days. Both B and C working alone can finish the same job in 12 days. A and B commence work on the job and work for 4 days, where upon A leaves, B continues for 2 more days and then he leaves too, C now starts working and finishes the job, how many days will C require.	\N
957	76	2	सोनाली ओर मोनाली की वर्तमान आयु 5: 3 के अनुपात में है। अब से पांच वर्ष बाद उनकी आयु 10: 7 के अनुपात में हो जाएगी तो मोनाली की वर्तमान आयु क्या है ?	present age ratio of sonali and monali is 5 : 3, and after five years now their age ratio will be 10: 7, than find the present age of monali.	\N
958	76	2	A और B की आयु का अनुपात 5: X है A, C से 18 वर्ष छोटा है 9 वर्ष पश्चात C की आयु 47 वर्ष होगी यदि A और B की आयु का अंतर C की आयु के बराबर है तो X का मान क्या है ?	Ratio of the age of A and B is 5 : x. A is 18 years younger to C. After nine years C will be 47 years old . if the difference between the ages of A and B is same as the age of C, what is the value of x ?	\N
959	76	3	एक पिता ने अपने पुत्र से कहा मैं तुम्हारे जन्म के समय उतना ही बड़ा था जितना की वर्तमान में तुम हो, यदि पिता की आयु वर्तमान में 38 वर्ष है तो 5 वर्ष पूर्व पुत्र की आयु क्या थी ?	A father said to his son “I was as old as you are at the present at the time of your birth”. If the father’s age is 38 years now, what was the son’s age five years ago?	\N
803	73	3	यदि एक संख्या 11 और 13 दोनों से भाज्य हो तद्नुसार यह अनिवार्य रूप से भाज्य होगी ? 	 If a number is divisible by both 11 and 13, then it must be necessarily.	\N
812	73	2	12899 × 96 × 997 अंतिम दो अंक ज्ञात करों ?	12899 × 96 × 997 Find last two digits?	\N
967	78	1	किसी पूँजी पर 4 वर्ष के लिए 2(1/2)%  वार्षिक ब्याज की दर से साधारण ब्याज और उसी पूँजी पर उतने ही समय के लिए 3% वार्षिक ब्याज की दर से ब्याज का अंतर 60 रू. है। तब पूँजी कितनी है ?	If the difference between the simple interest on a certain sum of money for 4 years at 21/2% per anum and the simple interest on the same sum for the same period at 3% per anum is Rs. 60, then find the sum.	\N
142	58	1		 	0119dfa6110e9105690344a0024ae434
1239	115	3	दो संख्याओं का योग 437 है और उनका गुणनफल 21982 है। संख्याऐं ज्ञात करें ?	The sum of two numbers is 437 and their product is 21982. Find the numbers. 	\N
1337	117	2	A,B और C किसी काम को क्रमशः 20 दिन 25 दिन और 30 दिन समाप्त करते है। वे एक साथ काम करना शुरू करते है A ने कितने दिन बाद काम छोड़ा होगा कि पूरा काम 12 दिन में समाप्त हो जाये।	A, B and C finish a piece of work in 20 days, 25 days and 30 days respectively. They started working together. After how many days A should leave the work so that total work will be complete in 12 days.	\N
1276	63	2	0.000326 में से क्या न्यूनतम संख्या घटायी जाये ताकि प्राप्त संख्या पूर्ण वर्ग हो जाये?	What is the least number which should be subtracted from 0.000326, to have perfect SQUARE	\N
1282	63	4	दो बीजगणितिय व्यंजकों x तथा y का म.स. व ल.स. क्रमशः । तथा B है, यदि A + B = x+y हो,तो A³ + B³ का मान ज्ञात करें ?	If A and B are the HCF and LCM respectively of two algebric expressions x and y, and A+ B =x+y, then the value of A³ + B³ is 	null
1303	63	1	(A+B) किसी काम को 12 दिन में करते है। (B+C) इसी काम को 6(2/3) दिन में करते हैं। A 3 दिन काम करके चला गया, B 4 दिन काम करके चला गया तथा बचा हुआ काम C ने 7 दिन में पूरा कर दिया। तो A,B और C अलग-अलग इस काम को कितने दिन में पूरा कर सकते है।	(A+B) can do a piece of work in 12 days. (B+C) can do same work in 6(2/3 )days. A work for 3 days, B works for 4 days and C completed the remaining work in 7 days. In how many days will A,B and C do this work alone. 	null
1322	63	2	यदि a और b विषम संख्याऐं हों तो बताऐं कि निम्नलिखित में सम संख्या कौन-सी है ?	41.\tIf a and b are the odd numbers then find which is the even in the following ? 	null
1338	117	1	(A+B) किसी काम को 8 दिन में तथा (B+C) 12 दिन में करते हैं। यदि A 4 दिन और B 7 दिन काम करते हैं तथा शेष काम को C 9 दिन में करता है, तो C अकेला उस काम को कितने दिन में समाप्त करेगा ?	(A+B) working together can finish certain piece of work in 8 days and (B+C) can finish it in 12 days. If A works for 4 days and B works for 7 days, rest work is done by C in 9 days. In how many days C will finish the work working alone.	\N
960	76	2	16 वर्ष पहले मेरे दादा की आयु उस समय की मेरी आयु से 8 गुना अधिक थी। अब से 8 वर्ष बाद उनकी आयु मेरी आयु की 3 गुनी होगी। 8 वर्ष पहले मेरी आयु और मेरे दादा की आयु का अनुपात क्या था ?	16 years ago my grandfather’s age was  eight times more than my age. And after 8years from now his age become thrice than mine.find their age ratio of 8 years ago	\N
962	76	2	\tदो व्यक्तियों की वर्तमान आयु क्रमशः 38 तथा 50 वर्ष है। तद्नुसार यदि n वर्षो बाद उनकी आयु का अनुपात 3: 4 हो जाए, तो n का मान कितना होगा ?	The present ages of two persons are 38 and 50yr respectively. After  N years their age ratio become 3:4 than find the value of N.	\N
528	67	3	\tएक काॅलेज में लड़के तथा लड़कियाँ 3: 5 अनुपात में हैं। यदि 36% लड़के तथा 28% लड़कियों व्यस्क हैं, तो अवयस्क विद्यार्थियों का प्रतिशत है-	In a collage the ratio of boys and girls 3 : 5. If 36% boys and 28% girls are adult than find the% of non-adult ?	\N
963	76	3	5000 रू. 1 साल में 5700 रू. हो जाते है। तो 7000 रू. 2 साल मे कितने हो जायेगें ?	Rs. 5000 amounts to Rs. 5700 in 1 year at simple interest. What will be Rs. 7000 in 2 years.	\N
1240	115	1	एक दो अंको की संख्या और संख्या के अंकों को परस्पर बदल लेने से प्राप्त संख्या के बीच अंतर 54 है। उस संख्या के दो अंकों के बीच क्या अंतर है ?	The difference between the numbers obtained by interchanging a two digit number and the number is 54. What is the difference between the two digits of that number? 	\N
532	67	2	यदि A की आय B से 36.25% कम है।तो A तथा B कि कुल आय A कि आय से कितने % अधिक है ?	\tIf income of A is 36.25 % less than B then combined income of A and B is how much % more than A? 	\N
1339	117	3	A किसी काम को करने में B से 4 दिन अधिक लेता है। यदि वे एक साथ काम करते है तो काम 8(8/9) दिन में समाप्त कर सकते है। तो प्रत्येक अलग-अलग इस काम को कितने दिन में समाप्त करेंगे?	A takes 4 days more to finish certain piece of work than that of B. If working together they can finish the work in 8(8/9) days. Then in how many days working alone each can finish the work.	\N
927	76	3	A किसी काम को उतने समय में करता है, जितने समय में B और C मिलकर करते है। A और B मिलकर इस काम को 10 दिन में कर सकते है। जबकि C अकेला 50 दिन में कर सकता है। तो B अकेला इस काम को कितने दिन में करेगा ?	A takes as much time as B and C together to complete a work. While A and B together can do this piece of work in 10 days.C can alone do it in 50 days, In how many days will this work be completed by B alone.	\N
1277	63	1	1000 में क्या न्यूनतम संख्या जोड़ी जाये ताकि योग 45 से पूर्णतः विभाजित हो जाये ?	The smallest number to be added to 1000, so that 45 divides the sum exactly, is.	\N
1283	63	2	A किसी काम को करने में (A+B) से़ 5(1/)3 दिन ज्यादा लेता है। जबकि B इसी काम को करने में (A+B) सेे 8(1/3) दिन ज्यादा लेता है तो A और B इस काम को अलग-अलग कितने दिन में कर सकते है ?	A takes 5(1/3)  days more than (A+B) together to complete a work. B takes 8(1/3) days more than (A+B) together to complete a work. In how many days will A and B alone complete this work.	null
1306	63	3	A की कार्यक्षमता, ठ की कार्यक्षमता की 3/4 है और B की कार्यक्षमता C की कार्यक्षमता की 80% है। B और C के एक साथ काम करने में लिये गए समय से A 120 दिन अधिक समय लेता है तो तीनों मिलकर यह काम कितने दिन में समाप्त करेंगें?	Efficiency of A is 3/4 of B’s efficiency and B’s efficiency is 80% of C’s efficiency. If A takes 120 more days than that of B and C working together to finish a certain piece of work. Then in how many days working together they will finish the work.	null
143	58	1	80 के गुणनखंडों की संख्या होगी।	Find the number of factor of 80.	\N
144	58	2	व्यंजक 8315945 × 8315947 में क्या जोड़ा जाये कि पूर्ण वर्ग बन जाये।	What should be added to 8315945 × 8315947, so that number will be a perfect ².	\N
964	76	2	कोई धन 4 साल में 5/4 गुना हो जाता है, तो ब्याज की दर क्या होगी ?	A certain sum of money becomes 5/4 times of itself in 4 years. Find the rate of interest.	\N
965	76	2	कोई धन 5 साल में 5 गुना हो जाता है, तो 7 गुना होने में कितना वक्त लगेगा ?	A sum of money becomes 5 times of itself in 5 years at simple interest. In what time it will becomes 7 time of itself.	\N
966	76	3	\t2500 रू. 4 साल में साधारण ब्याज से 3350 रू. हो गये। यदि ब्याज की दर 1% अधिक होती तो यह धन कितना हो गया होता? 	A sum of Rs. 2500 amounts to Rs. 3350 in 4 years at simple interest. If the rate of interest is increased by 1% it would amount to how much ?	\N
926	76	3	A और B किसी काम को 12 दिन में करते है। जबकि B और C उस काम को 8 दिन में कर सकते है तथा C और A उस काम को 6 दिन में कर सकते है तो B कितने समय में करेगा?	A and B together can do a piece of work in 12 days. While B and C together can do a piece of work in 8 days. C and A together can do a piece of work in 6 days. In how many days will this work be completed by B alone.	\N
221	60	1		 	4c3cbdb7d03a99e21f92e840dc2dfcd6
223	60	1		 	1435b72557b9277b050c33067a5b5b56
1241	115	3	वह छोटी से छोटी 6 अकों की संख्या ज्ञात करें जो 18 का गुणज है। 	Find the smallest number of 6 digits in which 18 is a factor 	\N
1286	63	1	दो संख्याएँ 28 और 42 के ल.स. तथा म.स. का अनुपात क्या होगा ?	LCM and HCF of the numbers 28 and 42 are in the ratio.	null
819	73	2	KINDNESS : शब्द में अक्षरों के ऐसे कितने जोड़े है जिनके बीच इस शब्द में उतने ही अक्षर आते हैं जितने कि वर्णमाला में अनके बीत आते हैं ?	-	\N
224	60	3		 	feacf6db514422d5cf88cd15c08ccd42
1242	115	4	एक संख्या प्रणाली में 14528 को एक संख्या से विभाजित करने पर सुरेश को भागफल 83 और शेष 3 प्राप्त होता है। भाजक क्या है?	In a number system, by dividing 14528 by one number. Suresh gets the quotient 83 and the remainder 3. What is the divisor? 	\N
1243	115	2	दो संख्याओं का योगफल 20 और गुणनफल 91 है। उनके व्युत्क्रमों का योगफल क्या होना चाहिये ?	The sum of two numbers is 20 and the product is 91. What should be the sum of their reciprocal? 	\N
1340	117	3	A,B और C एक काम को 40 दिन में खत्म करते हैं। (A+B) द्वारा काम खत्म करने में लिया गया समय, C द्वारा काम खत्म करने में लिये गये समय से 1/3 कम है। (A+C) द्वारा काम खत्म करने में लिया गया समय, B द्वारा काम खत्म करने में लिये गये समय से 1/4 कम है तो (B+C) उस काम को कितने दिन में खत्म करेंगें ?	A,B and C working together can finish certain piece of work in 40 days. If (A+B) work together then take 1/3 less time than that of C takes alone. If (A+C) work together then they take 1/4 less time than that of B takes alone. In how many days (B+C) working together will finish the work.	\N
1341	117	3	B किसी काम को जितने समय में करता है उसके 1/4 समय में A, B का 2/5 काम करता है। C जितने समय में कोई काम करता है उसके 3/5 समय में B,C का 4/3 काम करता है। तीनों मिलकर इस काम को 60 दिन में करते हैं। तो बताओं B इस काम को कितने दिन में करेंग।?	A can finish 2/5 of work done by B in 1/4 of time taken by B. B can finish 4/3 of work done by C in 3/5 of time taken by C. working together they can finish the work in 60 days. In how many days B will finish the work, working alone.	\N
1278	63	3	एक पूर्णाक K को 3 से भाग देने पर 1 शेष बचता है। और यदि K+1 को 5 से भाग दी जाये तो 0 बचता है। K का संभावित मान निम्न में से कौन सा हैः	When an integer K is divided by 3, the remainder is 1, and when K + 1 is divided by 5, the remainder is 0. Of the following, a possible value of K is.	\N
1284	63	4	वह न्यूनतम संख्या क्या है, जिसमें 12, 15, 20 और 54 से भाग देने पर प्रत्येक स्थिति में 4 शेष बचता है?	The least number, which when divided by 12, 15, 20 or 54 leaves a remainder of 4 in each case is.	null
1304	63	3	A किसी काम को उतने समय में करता है, जितने समय में B और C मिलकर करते है। A और B मिलकर इस काम को 10 दिन में कर सकते है। जबकि C अकेला 50 दिन में कर सकता है। तो B अकेला इस काम को कितने दिन में करेगा ?	A takes as much time as B and C together to complete a work. While A and B together can do this piece of work in 10 days. In how many days will this work be completed by B alone.	null
1324	63	2		(1 + 2 + 3 + …. + 49 + 50 + 49 + 48 + …. + 3 + 2 + 1) =?	null
929	76	4	A की कार्यक्षमता, B से 40 % ज्यादा है और B की कार्यक्षमता, C से 20 % कम है। यदि A किसी काम को करने में C से 6 दिन कम लेता है। तो बताओं B कितने दिन में करेगा ?	A is 40% more efficient than B and B is 20% less efficient than C. If A takes 6 days less than C to complete a work, then in how many days will B complete this work.	\N
930	76	3	A की कार्यक्षमता, B की कार्यक्षमता की 3/4 है और B की कार्यक्षमता B की कार्यक्षमता की 80 % है। B और C के एक साथ काम करने में लिये गए समय से  A 120 दिन अधिक समय लेता है तो तीनों मिलकर यह काम कितने दिन में समाप्त करेंगें?	Efficiency of A is 3/4 of B’s efficiency and B’s efficiency is 80% of C’s efficiency. If A takes 120 more days than that of B and C working together to finish a certain piece of work. Then in how many days working together they will finish the work.	\N
225	60	2		 	0316f0078dece4b80cbf6de0561ab165
815	73	1	निर्देश : इन प्रश्नों का उत्तर देने के लिए निम्न अक्षर / अंक श्रंृखला का सहारा लीजिऐ  E K M 3 P 5 7 R T V Z 9 D I F Q X 4 6 G H J 2 8 W    1. निम्न में से कौन सा अक्षर / अंक बायीं ओर से सोलहवें अक्षर / अंक के बायी ओर सातवा अंक / अक्षर होगा ?	-	\N
1244	115	3	X और Y दो सम संख्याएं हैं, तो निम्नलिखित विकल्पों में से विषम ज्ञात कीजिए ?	X and Y are two even numbers, then find the odd one from the following options? 	\N
1245	115	1	यदि संख्या 732XY, 70 से विभाजित है, तो (X-Y) का मान क्या होगा ?	If the number 732XY is divided by 70, then what will be the value of (X-Y)? 	\N
978	78	3	एक साइकिल 1500 रू. की है। यदि 350 रू. नकद भुगतान देता है और प्रत्येक 400 रू. की 3 महीने की किस्त थी तो दर ज्ञात करें?	A cycle costs Rs. 1500. If Rs. 350 was paid as cash payment and rest amount was to be paid in 3 monthly installment of Rs. 400. Find the rate of interest.	\N
1054	79	4	दूध की कीमत में 35% की वृद्धि होने पर कोई ग्रहणी अपनी खपत में कितनी कमी करे कि उसका खर्चा केवल 8% बढ़े।	If the price of milk is increased by 35% by how much a lady must reduced her consumption so that her expenditure is increased only by 8% .	\N
1246	115	4	यदि 1701 तथा 1#6 का गुणनफल 28 पूर्णतः विभाजित है, तो # का मान ज्ञात कीजिए ।	If the product of 1701 and 1 # 6 is completely divisible by 28, then find the value of #. 	\N
145	58	2	100 से 200 के बीच संख्याओं 9 ओर 6 दोनों से भाज्य पूर्णाकों की कुल संख्या.	The total number of integers between 100 and 200, which are divisible by both 9 and 6, is.	\N
1342	117	1	A और B साथ में अलग अलग दिन काम करते हैं और काम को 19 दिन में खत्म करते हैं यदि काम । शुरु करता है, लेकिन काम 19(5/6) दिन में खत्म होता अगर काम B शुरु करता । तो ज्ञात करें की A और B मिलकर काम को कितने दिन में खत्म करेंगे।	A and B working together on alternate days can finish a piece of work in 19 days. If A starts the work, while they take 19(5/6) days if B starts the work. In how many days would A and B together finish the work ?	\N
1343	117	1	A और B साथ में अलग अलग दिन काम करते हैं और काम को 17 दिन में खत्म करते हैं यदि काम A शुरु करता है, लेकिन काम 17(2/3) दिन में खत्म होता अगर काम B शुरु करता । जब काम A,B,C साथ में करते तो काम 5 दिन में ख्यत्म हो जाता है। तो ज्ञात करें की B,C मिलकर काम को कितने दिन में खत्म करेंगे। यदि दोनो ंअलग अलग दिन काम करते हैं तथा काम की शुरुआत B करता है।	A and B working together on alternate days can finish a piece of work in 17 days. If A starts the work, while they take 17(2/3) days if B starts the work. When A,B,C work together they do the same work in just 5 days. In how many days would B and C  finish the work  if they work on alternate days and B starts the work?	\N
1279	63	2	\tयदि * का तात्पर्य पहली संख्याा में दूसरी संख्या का 6 गुना जोड़ना’ हो तो (1*2)*3 का मान	If * means adding 6 times the second number to the first number then (1*2) * 3 equals.	\N
1285	63	1	सबसे बड़ी ऋणात्मक संख्या है ।	The largest negative number is-	null
1302	63	3	A किसी काम के 13/56  भाग को 111 दिन में करता है, जबकि B, 43/56 भाग को 111 दिन में करता है। तो दोनोें मिलकर उस काम को कितने दिन में पूरा करेगें ?	A can do 13/56  part of a work in 111 days and B can do 43/56  part of a work in 111 days. In how many days will A and B complete the total work.	null
1321	63	2	A और B किसी काम को एक दिन के अन्तराल में करते हुए 34/3 दिन में समाप्त कर सकते हैं यदि B काम की शुरुआत करता हो तो। A उस काम को अकेला 48 दिन में कर सकता है तो बताइए B अकेला 4 गुना काम कितने दिनो में करेगा ?	40.\tA and B can do a work in 𝟑𝟒/𝟑 days working alternatively with B working first. A can complete work alone in 48 days in how many days B does 4 times of the work? 	null
941	76	1	(A+B) किसी काम को 8 दिन में तथा (B+C) 12 दिन में करते हैं। यदि A 4 दिन और B 7 दिन काम करते हैं तथा शेष काम को C 9 दिन में करता है, तो C अकेला उस काम को कितने दिन में समाप्त करेगा ?	(A+B) working together can finish certain piece of work in 8 days and (B+C) can finish it in 12 days. If A works for 4 days and B works for 7 days, rest work is done by C in 9 days. In how many days C will finish the work working alone.	\N
393	64	2	A,B तथा C किसी काम को 6 दिनों में करते है। A की कार्यक्षमता B की दो गुना है और C की तीन गुना है, तो C अकेले काम को कितने दिनों में समाप्त करेगा ?	If A,B and C can complete a piece of work in 6 days. If A can work twice faster than B and thrice faster than C , then the number of days C alone can complete the work is	\N
981	78	2	यदि मूलधन 1400 रू. पर साधारण ब्याज, मूलधन 1000 रू. पर 5 वर्ष के साधारण ब्याज की अपेक्षा में 60 रू. अधिक है, तो प्रति वर्ष ब्याज दर क्या होगी ?	If the simple interest on Rs. 1400 be more than the interest on Rs. 1000 by Rs. 60 in 5 years, find the rate percent per annum.	\N
541	67	2	वह न्यूनतम संख्या क्या है जिसमें 12 तथा 16 से भाग देन े पर क्रमशः 5\n\nतथा 9 शेष बचता है?	The smallest number, which when divided by 12 and 16\n\nleaves remainder 5 and 9 respectively, is.\n\n	\N
1247	115	3	एक विद्यार्थी ने जितने प्रश्न सही किए उससे तीन गुना गलत किए। यदि उसने कुल 76 प्रश्न हल किए, तो उसने कितने प्रश्न सही सही हल किए?	One student gave three times wrong answers compared to right answers. If he solved a total of 76 questions, then how many questions he gave right answer? 	\N
1248	115	2	0.002 × 0.5  = ?	0.002 × 0.5  = ?	\N
1344	117	2	(A + B) किसी काम को 6 दिन में तथा (A + B + C) 5 दिन में करते हैं। (A + C), (B + C) से 2.5 दिन कम लेते हैं। तो B कितने दिन में काम पूरा करेगा ?	(A+B) can do a work in 6 days. (A+B+C) can do the same work in 5 days. A and C take 2.5 days less than B and C. Then find the number of days taken by B  to complete the work.	\N
1308	63	3	A किसी काम को 25 दिन में, B 40 दिन में और C 60 दिन में करता है। तीनों ने 5 दिन तक काम किया, इसके बाद A ने काम छोड़ दिया। B ने काम खत्म होने से 10 दिन पहले छोड़ दिया तो काम कितने दिन में पूरा हुआ।	A ,B and C can do a work in 25, 40 and 60 days respectively. All three start the work together and work for 5 days then A left and B left 10 days before the completion of work, how much time shall be taken to do whole work.	null
146	58	2	किसी दो अंकीय संख्या और अंक पलटने पर बनी नयी संख्या का अंतर सदैव विभाज्य है-	The difference of a number consisting of two digits from the number formed by interchanging the digits is always divisible by.	\N
931	76	3	A और B किसी काम को 4 दिन में कर सकते हैं। यदि A अपनी कार्यक्षमता 30% घटा ले और B अपनी कार्यक्षमता 10% बढ़ा ले, तो काम 5 दिन में समाप्त होगा। A अपनी असली क्षमता के साथ और A अपनी क्षमता के साथ और B अपनी क्षमता का 1(1/2) गुना काम करता है यदि वे दोनों एक साथ काम करें तो काम कितने दिन में समाप्त होगा ?	A and B can finish a certain piece of work in 4 days. If A reduces his efficiency by 30% and B increases by 10%, then work will be finished in 5 days. If A works with his original efficiency and B work with 1(1/2) times of his efficiency, then in how many days working together work will be finished.	\N
147	58	2	225 से विभाज्य 1000 और 5000 के बीच कितनी संख्याएं है?	How many number between 1000 and 5000 are exactly divisible by 225 .	\N
932	76	2	A और B की कार्यक्षमता का अनुपात 3: 5 है तथा B और C की कार्यक्षमता का अनुपात 2: 3 है। यदि A और B 4 दिन काम करते हैं तथा बचे हुए शेष काम को C 8 दिन में खत्म करता है तो B अकेले उस काम को कितने दिन में खत्म करेगा ?	The ratio of efficiency of A and B is 3 : 5 and that of B and C is 2 : 3 respectively. If A and B work for 4 days then remaining work is finished by C in 8 days. Then in how many days B alone will finish the work.	\N
287	61	3	भारत में प्रकाशित होने वाला पहला साप्ताहिक पत्र -------- था। \n\n 	The first weekly newspaper published in India was ____.	\N
1249	115	3	12899 × 96 × 997 अंतिम दो अंक ज्ञात करों ?	12899 × 96 × 997 find last two digit ?	\N
149	58	1		What is the value of-  (2a+b)² - (2a-b)² is-	\N
1250	115	2	5 अंकों की सबसे छोटी संख्या जिसका एक गुणनखण्ड 123 हो?	The least number of five digits which has 123 as a factor is.	\N
1251	115	2	संख्याओं 2,4,6,8.......98,100 की आपस में गुणा की जाती है। गुणनफल के अन्त में शून्यों की संख्या होगीः	The numbers 2,4,6,8…….,98,100 are multiplied together. The number of zeros at the end of the product must be.	\N
1345	117	4	A किसी काम को करने में (A+B+C) से 6 घंटे ज्यादा लेता है। जबकि B इसी काम को करनेे में (A+B+C) से 1 घंटे ज्यादा लेता है। C उसी काम को करने में (A+B+C) से दोे गुना समय लेता है। तो (A+B) इस काम को कितने दिन मेें करेंगे ?	A takes 6 hours more than (A+B+C) together to complete a work. B takes 1 hours more than (A+B+C) together to complete a work. C takes twice as (A+B+C) together to complete a work. In how many days will A and B together complete this work.	\N
933	76	1	B किसी काम को करने में (A + C) से 2 गुना समय लेता है। जबकि C उसी काम को करने में (A + B) से 3 गुना समय लेता है। यदि तीनों मिलकर इस काम को 36 दिन में खत्म कर लेते है। तो बताओं B कितने दिन में करेगा ?	B takes two times as long as (A+C) together to complete a work. C takes three times as much as (A+B) together to complete a work. If all the three, working together can complete the work in 36 days.Then find the number of days A,B and C alone will take to complete this work. then in how many days will B complete this work.	\N
934	76	2	B किसी काम को कितने समय में करता है उसके 3/4 समय में, A आधा काम करता है। यदि दोनों मिलकर इस काम को 18 दिन में खत्म कर सकते है। तो B कितने दिन में करेगा?	A does half as much as work as B in 3/4 of the time. If together they take 18 days to complete a work, how much time shall B take to do it alone.	\N
935	76	3	A किसी काम को 25 दिन में, B 40 दिन में और C 60 दिन में करता है। तीनों ने 5 दिन तक काम किया, इसके बाद A ने काम छोड़ दिया। B ने काम खत्म होने से 10 दिन पहले छोड़ दिया तो काम कितने दिन में पूरा हुआ।	A ,B and C can do a work in 25, 40 and 60 days respectively. All three start the work together and work for 5 days then A left and B left 10 days before the completion of work, how much time shall be taken to do whole work.	\N
800	73	4	किसी संख्या को 13 से भाग देने पर 1 शेष बचता है। यदि भाग फल को 5 से भाग दिया जाये तो 3 शेष बचता हैे। यदि संख्या को 65 से भाग दिया जाये तो शेष फल क्या बचेगा?	A number divided by 13 leaves a remainder 1 and if the quotient, thus obtained, is divided by 5, we get a remainder of 3. What will be the remainder if the number is divided by 65.	\N
1268	115	4	यदि दो संख्याओं 1728 तथा K का लघुत्तम समापवत्र्य 5184 है, तो K के कितने मान संभव हैं ?	If the least common multiple of two numbers, 1728 and K is 5184, then how many values of K are possible? 	\N
936	76	1	(A+B) किसी काम को 8 दिन में करते है। Bऔर C अलग-अलग इसी काम को 12 दिन में करते हैं। A और B मिलकर 4 दिन तक काम करते है और उसके बाद A छोड़ देता है और उसके 2 दिन बाद B छोड़ देता है। उसके बाद C बचे हुये काम को अकेला कितेने दिन में खत्म करेगा ?	(A+B) together can complete a job in 8 days. Both B and C working alone can finish the same job in 12 days. A and B commence work on the job and work for 4 days, where upon A leaves, B continues for 2 more days and then he leaves too, C now starts working and finishes the job, how many days will C require.	\N
400	64	1	यदि 5 व्यक्ति मिलकर 5 घंटे में 5 चटाइयां बना सकते हैं, तो 10 व्यक्ति 10 घंटे में कितनी चटाइयां बनाएंगे ?	5 mat-weavers can weave 5 mats in 5 days. At the same rate how many mats would be woven by 10 mat-weavers in 10 days ?	\N
1252	115	4	9999999.........102 times को पूर्णतः  विभाजित करेगी	9999999…..102 times is exactly divisible by 	\N
550	67	2	एक व्यापारी ने 200 अंडे खरीदे, उनमें से 38 टूट गए। शेष अंडे उसने 4.80 रू प्रति दर्जन की दर से बेच दिए और इस प्रकार उसे 8 प्रतिशत का अभिलाभ हुआ। कुल निवेश कितना था ?	A person bought 200 eggs, 38 eggs are break. The remaining eggs he sell at Rs. 4.80/dozen & gain 8% profit. Find the total cost price?	\N
1346	117	3	Aकिसी काम को 12 दिन में और B उसी काम को 20 दिन में करता है। A ने 3 दिन काम किया और चला गया तथा B ने 6 दिन काम किया और चला गया तथा C ने शेष काम खत्म किया। यदि पूरे काम के 1200 रु मिले हो तो तीनों को अलग-अलग कितना हिस्सा मिला होगा ?	Aकिसी काम को 12 दिन में और B उसी काम को 20 दिन में करता है। A ने 3 दिन काम किया और चला गया तथा B ने 6 दिन काम किया और चला गया तथा C ने शेष काम खत्म किया। यदि पूरे काम के 1200 रु मिले हो तो तीनों को अलग-अलग कितना हिस्सा मिला होगा ?	\N
1288	63	1	दो संख्याओं का योगफल 128 है तथा उनके म.स. तथा ल.स. क्रमशः 8 तथा 504 हैं। उन संख्याओं के व्युत्क्रमों का योगफल होगा ?	Sum of two numbers is 128 and their HCF and LCM are 8 and 504 respectively. The sum of the reciprocal of those numbers will be 	null
1300	63	2	A किसी काम को 20 दिन में तथा B 25 दिन में करता है। दोनों मिलकर काम प्रारम्भ करते हैं और A 8 दिन के बाद छोड़ देता है। पूरा काम कितने दिन में खत्म हुआ ?	A can do a piece of work in 20 days and B can do same work in 25 days. Both A and B start the work and after 8 days A left. In how many days will the total work be completed.	null
1320	63	3	A,B द्वारा किए गए 20% अधिक समय में B द्वारा किया गया 80% काम समाप्त कर सकता है। वे दोनों एक साथ काम करके 40 दिन में खत्म कर सकते हैं। तो वे दोनों अकेले अलग-अलग कितने दिन में काम खत्म करेंगे ?	A can finish 80% of work done by B in 20% more time taken by B. working together they can finish the work in 40 days. In how many days they will finish the work working alone.	null
517	67	4	एक आदमी अपनी आय का 5 प्रतिशत परिवहन पर खर्च करता है। बची हुई आय का 20 प्रतिशत खाने पर और 40 प्रतिशत घूमने पर खर्च करता है। और बाकी बची में से 20 प्रतिशत खेलो पर खर्च करता है। इन सबके बाद उसके पास 3040 रू॰ बचते है। उसकी आय ज्ञात करो।	A person spends 5 % of his income on Transport out of the remaining  he spends 20% on food and 40% on travel, and the remaining 20% spends on sports. After that he saves 3040 Rs. Than find his income?	\N
518	67	2	एक परीक्षा में A को B की अपेक्षा 33(1/3) प्रतिशत अधिक अंक मिले। उसमें B को C की अपेक्षा 20 प्रतिशत कम अंक मिले और C को D की अपेक्षा 20 प्रतिशत अधिक अंक मिले। तद्नुसार, यदि A को 500 में से 384 अंक मिले हों, तो D को कितने अंक मिले हैं ?	In an examination A get 33(1/3)  % more than A. and B get 20% less than C. and C get 20% more than D, If A get 384 out of 500. Than find how much marks getting by D ?	\N
1183	114	3	कोई धन 2 वर्ष में 8% वार्षिक चक्रवृद्धि ब्याज की दर पर 2916 रू. हो जाता है। उसी धन पर 3 वर्ष के लिए 9% वार्षिक दर पर साधारण ब्याज क्या होगा?	A sum becomes Rs. 2916 in 2 years at 8% per annum compound interest. The simple interest at 9% per annum for 3 years on the same amount will be.	\N
1258	115	4	तीन अलग-अलग संख्याओं का ल.स. 120 है, तो इनमें से कौन उनका म.स. नहीं हो सकता?	The LCM of three different number is 120. Which of the following cannot be their HCF.	\N
407	64	3	अक्षरों का कौन सा समूह रिक्त स्थानों पर क्रमवार रखने से दी गयी अक्षर श्रृंखला को पूरा करेगा?\n\n_bcc_ac_aabb_ab_cc	Fill the correct option-\n\n_bcc_ac_aabb_ab_cc\n\n	\N
1267	115	4	दो बीजगणितिय व्यंजकों x तथा y का म.स. व ल.स. क्रमशः । तथा B है, यदि A + B = x+y हो,तो A³ + B³ का मान ज्ञात करें ?	If A and B are the HCF and LCM respectively of two algebric expressions x and y, and A+ B =x+y, then the value of A³ + B³ is 	\N
1347	117	4	A और B ने किसी काम को 300 रु में करने का ठेका लिया। A अकेला उस काम को 8 दिन में तथा B अकेला 12 दिन में करता है। C की सहायता से वे उस काम को 4 दिन में करते हैं , तो तीनों का अलग- अलग हिस्सा कितना है ?	A and B promised to complete a work for Rs.300 A can do this work in 8 days and B can do tjis work in 12 days. With the help of C they completed the work in 4 days. Find out their individual share.	\N
1289	63	4	सभी परिमेय संख्याऐं ___ संख्याऐं हैं।	All rational numbers are _____ numbers.	null
1301	63	3	(A+B) किसी काम को 5 दिन में करते है। यदि A अपनी कार्यक्षमता दुगनी कर लेता है और B अपनी कार्यक्षमता 1/3 कर लेता है, तो काम 3 दिन में पूरा हो जाता है। A इस काम को कितने दिन में पूरा कर पायेगा ?	(A+B) can do a piece of work in 5 days. If A works with twice of his efficiency and B works with 1/3 of his efficiency, then work will be completed in 3 days. In how many days will A do this work alone.	null
1323	63	2	शशांक एक काम की शुरूआत करता है और 12 दिन बाद छोड़ देता है तथा शेष काम को नीतीश 15 दिन में करता है। यदि शशांक 2 दिन पहले काम छोड़ देता है तो शेष काम को नीतीश 18 दिन में करता है। यदि शशांक अपनी कार्यक्षमता 20% कम कर दे तथा नीतीश अपनी कार्यक्षमता 50% बढ़ा दे। तो वे दोनों एकसाथ मिलकर काम को कितने दिन में पूरा कर देंगें ?	Shashank started a work and left after 12 days, rest work done by Nitish in 15 days. Had shashank left work, 2 days before, the rest work could have been doen by Nitish in 18 days. If Shashank reduces his efficiency by 20% and Nitish increase his efficiency by 50% . then in how many day woking together they will finish the work.	null
520	67	2	पहले वर्ष के दौरान एक शहर की जनसंख्या में 10 प्रतिशत से कमी आती है, दूसरे वर्ष के दौरान उसमें 25 प्रतिशत से कमी आती है और तीसरे वर्ष में दोबारा 40 प्रतिशत से कमी आती है। यदि शहर की वर्तमान जनसंख्या 16200 है तो 3 वर्ष पूर्व शहर की जनसंख्या क्या थी?	10 % Reduce in the number of population during first year. And 25 % decreased during the second year. And again 40 % decreament during the third year. If the present population is 16200, than find the population of city 3 yr. ago ?	\N
522	67	1	X की आय Y की आय का 75% है। और X का खर्च Y के खर्च का 80% है। यदि X की आय Y के खर्च का 90% है तो X और Y के बचत का अनुपात ज्ञात करो ?	X income is 75% Y income and X expenditure\n\nis 80% Y expenditure. If X income is 90% of Y\n\nexpenditure, then find the ratio of X savings to Y\n\nsavings?\n\n	\N
807	73	2	भाजक, भाग फल का 25 गुना और शेषफल का 5 गुना है। यदि भाग फल 16 हो तो भाज्य क्या होगा?	A divisor is 25 times the quotient and 5 times the remainder. The quotient is 16, the dividend is.	\N
809	73	1	निम्न व्यंजक का इकाई अंक होगा। \n\n1! + 2! + 3! + 4! + ………+100!	Find the unit \n\n1! + 2! + 3! + 4! + ………+100!	\N
412	64	3		 	396e2b5611dd89cb1c3ee818914434d1
413	64	3		 	2b5063a0e58760925800f409591af1f2
414	64	3	68% of 720 + 41% of 390  = ?	68% of 720 + 41% of 390  = ?	\N
999	78	2	यदि A का 20 प्रतिशत = B का 50 प्रतिशत है,तो A का कितना % B है?	If  20 % of A is equal to the 50 % of B than B is what % A.	\N
1184	114	4	कोई धन चक्रवृद्धि ब्याज की एक निश्चित दर पर 4 वर्ष में 7000 रू. और 8 वर्ष में 10000 रू. हो जाता है। मूलधन कितना है?	An amount of money appreciates to Rs. 7000 after 4 years and to Rs. 10000 after 8 years at a certain compound interest compounded annually. The initial amount for money was.	\N
1259	115	4	वह छोटी से छोटी वर्ग संख्या ज्ञात करें जो 56,60,84 और 96 द्वारा पूरी तरह से विभाज्य है ?	Find the least perfect SQUARE  number which is completely divisible by 56, 60, 84 and 96? 	\N
1348	117	3	A,B और C किसी काम को क्रमशः 10 , 20 और 25 दिन में करते हैं तीनों को काम करने के 1000 रु मिलते हैं ये काम को बारी - बारी से करते है और A काम की शुरुआत करता है, तो तीनों का अलग- अलग हिस्सा कितना है ?	A, B and C can do a work in 10 days, 20 days, and 25 days respectively. They do this work alternatively starting with A. If they receive Rs. 1000 as total wages. Find out their individual share.	\N
1290	63	4	4 घंटियाँ क्रमशः 30 मिनट, 1 घंटा, 1(1/2) घंटा तथा 1 घंटा 45 मिनट के अंतराल पर बजती है। सभी घंटियाँ एक साथ 12 बजे दोपहर में बजी हो, तो वे पुनः एक साथ कब बजेंगी?	4 bells ring at intervals of 30 minutes, 1 hour, 1(1/2) hour and 1 hour 45 minutes respectively. All the bells ring simultaneously at 12 noon. They will again ring simultaneously at.	null
1311	63	3	राहुल की कार्यक्षमता राम से दुगुनी है। यदि दोनों मिलकर किसी कार्य को 12 दिन में करते हैं, तो राहुल अकेला उस कार्य को कितने दिन में करेगा ?	Rahul is twice efficient as Ram. If both of them can complete the work in 12 days. Then find the number of days Rahul would take to complete the work above.	null
523	67	1	किसी घर में गेहूं का खर्च चावल के खर्च से 28.56% कम है, तथा चावल का खर्च दाल के खर्च से 12.5% कम है। यदि गेहूं, चावल और दाल पर खर्च को क्रमशः 9.5% , 17.5% , 12.5% बढ़ाया जाता है।यदि कुल खर्च में 540रु की बढ़ोतरी होती है, तो ज्ञात कीजिए कि परिवार की आय कितनी होगी यदि उनकी बचत रु500 है ?	Expenditure on wheat of a family is 28.56% less\n\nthan rice, Expenditure on rice 12.5% less than\n\npulse. If expenditure on wheat, rice and pulse are\n\nincreased by 9.5% ,17.5% and 12.5% respectively\n\nand total expenditure is increased by 540Rs. Than\n\nfind total income of family if other than this\n\nexpenditure family saves Rs.500.\n\n	\N
524	67	3	अगर इनकम टैक्स 24% बढ़ जाए तो शुद्ध इनकम 6% कम हो जाती हैं। इनकम टैक्स की दर ज्ञात करो।	If income tax is increased by 24 % than the net income decreased by 6 % than find rate of Income tax ?	\N
525	67	1	ताजे फलों में 70 प्रतिशत पानी है और सूखे फलों में 60 प्रतिशत पानी है। 32 किलो ताजे फलो से कितने किलों सूखे फल बनाए जा सकते है।	Fresh fruit contain 70 % water and dray fruit contain 60 % water than find How much dray fruit can be obtain by 32 kg fresh fruit ?	\N
526	67	2	20 प्रतिशत बोरिक अम्ल वाले 40 लीटर के घोल में 10 लीटर पानी मिलाया जाता है। अब इस घोल मेें बोरिक अम्ल की अनुमति मात्रा का % क्या है?	10 ltr water are mixed in 40 ltr. mixture which contain 20 % acetic acid. Than find the % of acetic acid in the mixture ?	\N
527	67	3	एक कंपनी अपने विक्रेता को कुल बिक्री पर 9% कमीशन देती है। यदि वह विक्रेता को निर्धारित 4000 रू. देती है और 10000 रू. से ज्यादा की बिक्री पर 3% कमीशन देती है तो विक्रेता को 700 रू. ज्यादा मिलते है ज्ञात करों कि उसने कुल कितनी बिक्री की?	A company allows 9% commission on total sales. If the salesman is appointed on a fixed salary of Rs. 4000 and 3% commission on the sales more than Rs. 10000, then the salesman gets Rs. 700 more. Find the total sales made by the salesman.	\N
529	67	5	किसी दो अंकों की संख्या का इकाई का अंक 100% बढ़ा दिया जाता है और दहाई अंक को 50% बढ़ा दिया जाता है तो नई संख्या पिछली संख्या से 19 अधिक बनती है। पिछली संख्या ज्ञात करें ?	The digit at unit’s place of a two digit number is\n\nincreased by 100% and the ten’s digit of the same\n\nnumber is increased by 50% the new number thus\n\nfound is 19 more than original number. What is the\n\noriginal number?\n\n	\N
1263	115	5	98×17373×153×96×127 अंतिम दो अंक ज्ञात करों ?	98×17373×153×96×127 find last two digit?	\N
1349	117	2	A ने 5 दिन काम किया और चला गया तथा बचा हुआ काम B ने 13 दिन में खत्म कर दिया। यदि A 3 दिन काम करके जाता तो बचा हुआ काम B 20 दिन में खत्म करता। यदि दोनों को पूरे काम के 1800 रु मिलते हैं। दोनों ने काम करने का ठेका लिया। तो दोनों आपस में कितने रुपये बाॅंटेंगे ?	A did a work for 5 days and then left and rest of the work was completed by B in 13 days. If A had worked for 3 days then rest of the work would have been completed by B in 20 days. If they received Rs.1800 as total wages. Find out their individual share.	\N
1291	63	2	दो संख्याओं के ल.स. तथा म.स. का गुणनफल 24300 है। उन संख्याओं में 4ः3 का अनुपात है। उन संख्याओं के ल.स. तथा म.स. का योग क्या है ? 	The product of LCM and HCF of two numbers is 24300. Those numbers are in ratio of 4: 3. What is the sum of LCM and HCF of two numbers?	null
1313	63	3	A किसी के काम के 4/5 भाग को 20 दिन में करता है तथा फिर वह B को बुलाकर उसके शेष काम को 3 दिनों में पूरा करता है। B को उस काम को अकेले करने में कितना समय लगेगा ?	A does 4/5 part of the work in 20 days and rest of the work is done by A and B in 3 days. In what time can B do the whole work.	null
530	67	2	किसी परीक्षा में सम्म्लित लड़के तथा लड़कियों की संख्या 16: 9 के अनुपात में है। उस परीक्षा में पास लड़के तथा लड़कियों की संख्या का अनुपात 4: 3 है। यदि 75% लड़कियां परीक्षा में पास हुई हो तो ज्ञात करें कि कितने% विद्यार्थी उस परीक्षा में पास हुए ?	In an exam the ratio of boys and girls students is\n\n16:9 .In exam the ratio of passed male and female\n\nstudents is 4:3. If 75% of girls are passed then find\n\nhow much % of the boys students passed in exam?\n\n	\N
937	76	3	A किसी के काम के 4/5 भाग को 20 दिन में करता है तथा फिर वह B को बुलाकर उसके शेष काम को 3 दिनों में पूरा करता है। B को उस काम को अकेले करने में कितना समय लगेगा ?	A does 4/5 part of the work in 20 days and rest of the work is done by A and B in 3 days. In what time can B do the whole work.	\N
1056	79	2	यदि कोइ छात्र किसी संख्या को 11/16 के बजाय 7/12 से गुणा करता है, तो प्राप्त उत््रर में % त्रुटि कितनी होगी ?	If a student multiplied a number by 7/12 instead of 11/16 find the % error in the calculation ?	\N
544	67	2	225 से विभाज्य 1000 आ ैर 5000 क े बीच कितनी संख्याए ं है?\n\n	How many number between 1000 and 5000 are exactly\n\ndivisible by 225	\N
1172	113	4	3757 रू. को A औैर B में इस प्रकार बाँटना है कि 7 वर्षों के अंत में A का भाग तथा 9 वर्षों के अंत में B का भाग बराबर हो जाए। यदि 10% प्रति वर्ष चक्रवृद्धि ब्याज की दर है, तो B का भाग ज्ञात करें।	Rs. 3737 is to be divided between A and B such that A’s share at the end of 7 years may be equal to B’s share at the end of 9 years. If percent be 10% per annum compound interest, B’s share is.	\N
1040	78	2	\tएक व्यक्ति के पास कुछ राशि है।वह उस राशि का 25% एक वस्तु खरीदने में खर्च करता है तथा शेष  राशि  का 10% कपड़ों पर खर्च करता है। फिर वह 531.25 रू. दान कर देता है।अब यदि उसक े पास 8000 रू. बचे है, तो उसके द्वारा कपड़ों पर खर्च किए गए रू. कितन ेहै ?	A man had a certain amount with him. He spent 25% of that to buy an article and 10% of the remaining on clothes. Then he donated Rs. 531.25. if he is left with Rs. 8000 the amount he spent on the clothes is.	\N
1266	115	2	दो संख्याओं का LCM , बड़ी संख्या का चार गुना है, जबकी HCF और छोटी संख्या अंतर 24 है , छोटी संख्या ज्ञात कीजिए ?	LCM of two numbers is four times the bigger number and difference of HCF and smaller number is 24. Find smaller number? 	\N
533	67	4	यदि किसी शंकु की उंॅचाई 6.25% घट गयी तथा त्रिज्या घटकर 16 सेमी हो जाती है यदि शंकु का आयतन 40% घट गया तो नए शंकु की त्रिज्या, पुराने शंकु की त्रिज्या से कितना कम है?	\tHeight of a right circular Cone is decreased by 6.25% and its radius is reduced to 16 cm. The volume of cone is decreased by 40%. Radius of new cone is how much lesser than previous cone? 	\N
1350	117	4	दो लोगों ने 1400 रु में नौकरी करने के लिए रखा गया। उनमें से एक अकेला इसे 7 दिनों में कर सकता है, और दूसरा अकेले 8 दिनों में कर सकता है। एक लड़के की सहायता से उन्होंने 3 दिनों में एक साथ काम पूरा किया। लड़के को कितना पैसा मिलेगा ?	Two men undertook to do a job for Rs.1400. one of them can do it alone in 7 days, and the other in 8 days. With the assistance of a boy the together completed the work in 3 days. How much money will the boy get ?	\N
1292	63	4	यदि दो संख्याओं 1728 तथा K का लघुत्तम समापवत्र्य 5184 है, तो K के कितने मान संभव हैं ?	If the least common multiple of two numbers, 1728 and K is 5184, then how many values of K are possible? 	null
1312	63	2	B किसी काम को कितने समय में करता है उसके 3/4 समय में, A आधा काम करता है। यदि दोनों मिलकर इस काम को 18 दिन में खत्म कर सकते है। तो B कितने दिन में करेगा?	A does half as much as work as B in 3/4 of the time. If together they take 18 days to complete a work, how much time shall B take to do it alone.	null
531	67	3	एक शहर की 35% आबादी बाहर से आकार बसने वालों की है। 20% आबादी ग्रामीण लोगों की है। जिसमें 48ः महिलायें हैं। जबकी ग्रामीण और शहरी पलायन वालों की आबादी क्रमशः 30% और 40% हैं। अगर शहर की जनसंख्या 728400 है, तो महिलाओं की संख्या ज्ञात करों ?	In a city 35% of the population is composed of\n\nmigrants 20% of whom are form rular area. Of the\n\nlocal population 48% is female whereas the figure for\n\nrural and urban migrants is 30% and 40% respectively.If the total population of the city is 728400, what is its female population?\n\n	\N
1044	78	3	किसी भिन्न के अंश में 20% की वृद्धि तथा हर में 5% की कमी कर दे तो वह 5/2 हो जाती है। मूल भिन्न क्या है ?	If the numerator of a fraction be increased by 20% and its denominator is decreased by 5%, the fraction becomes 5/2 . Find the original fraction.	\N
1045	79	2	यदि एक भिन्न के अंश में 15% की वृद्धि और हर में 8% की कमी की जाए, तो उस का मान 15/16 हो जाता है। मूल भिन्न क्या है ?	If the numerator of a fraction be increased by 15% and its denominator be diminished by 8%, the value of the fraction becomes 15/16 . Find the original fraction.	\N
1046	79	3	एक व्यक्ति अपनी आय का 87.5% खर्च करता है। उसकी आय 59% बढ़ जाती है और उसका खर्च 67% बढ़ जाता है। उसकी बचत में बढ़त या गिरावट की प्रतिशतता ज्ञातकरें ?	A person spends 87.5% of his income. His income increases by 59% and expenditure increases by 67%.  Find his percentage increase or decrease in savings.	\N
1047	79	3	किसी त्रिभुज की ऊँचाई को 22% बढ़ा दिया और आधार में 6% की कमी कर दी तो क्षेत्रफल पर क्या फर्क पड़ेगा?	In a tri∠, its altitude is increased by 22% and its base is decreased by 6%. Find the net effect on its area.	\N
1048	79	2	एक घनाभ की लम्बाई 12% बढ़ा दी जाती है और चैड़ाई 25% बढ़ा दी जाती है। ऊँचाई में कितने प्रतिशत की कमी करे कि आयतन केवल 4% बढ़े।	The length of cuboid is increased by 12% and its breadth is increased by 25%. By how much percent its height is decreased so that the volume of cuboid increased only by 4%.	\N
1173	113	2	20480 रू. पर 6.25% वार्षिक दर से 2 वर्ष 73 दिन का चक्रवृद्धि ब्याज ज्ञात करें।	The compound interest on Rs. 20480 at 6.25% per annum for 2 years 73 days, is.	\N
534	67	3	एक व्यक्ति अपनी आय का 87.5% खर्च करता है। उसकी आय 59% बढ़ जाती है और उसका खर्च 67% बढ़ जाता है। उसकी बचत में बढ़त या गिरावट की प्रतिशतता ज्ञात करें ?	A person spends 87.5% of his income. His income increases by 59% and expenditure increases by 67%.  Find his percentage increase or decrease in savings.	\N
1351	117	2	A ने 5 दिन तीन व्यक्ति 7500 रु में एक काम करते हैं। पहला व्यक्ति इसे केवल 75 दिनों में कर सकता है, दूसरा व्यक्ति 40 दिनों में जबकी तीसरा व्यक्ति 60 दिनों में काम कर सकता है। उन्होंने सिर्फ 13(1/13) दिन में चै।थे व्यक्ति की मद्द् से पूरा काम किया। चै।थे व्यक्ति द्वारा प्राप्त राशि ज्ञात करें ?	Three persons undertake a piece of work for Rs.7500. Firstg person can do it in 75 days alone, second person in 40 days while third person can do it in 60 days working alone. They did the complete work with the help of fourth person in just 13(1/13) days. Find the amount received by the fourth person.	\N
1307	63	2	यदि आप 291 से 300 तक के सभी अंकों को लिखें तो बताऐं कि कितनी बार सम संख्या लिखेंगे ?	If you are written the numbers from 291 to 300 then find how many times you wrote even numbers? 	null
1352	117	2	दो व्यक्ति 4800 रु की लागत का एक काम पूरा करने के लिए सहमत हुए। पहला व्यक्ति अकेले 5 दिनों में काम पूरा कर सकता है और दूसरा व्यक्ति अकेले 8 दिनों में काम पूरा कर सकता है। एक लड़के और एक लड़की की मद्द से वे 3 दिनो में काम पूरा कर सकते हैं। अगर लड़की द्वारा किया गया काम लड़के द्वारा किया गये काम से दोगुना है। लड़की को मिलने वाली मजदूरी क्या है ?	Two persons agreed to complete a work at cost of Rs. 4800. First person, can complete the work alone 5 days and second person can complete the work alone in 8 days. With the help of a boy and a girl, they can complete the work in 3 days. If the work done by girl is twice the work done by boy. What is the amount of wage received by girl ?	\N
938	76	3	A किसी काम का 1/2 भाग 5 दिन में करता है। B उसी काम के 3/5 भाग को 9 दिन में करता है। C उसी काम के 2/3 भाग को 8 दिन में करता है। तो B अकेला उस काम को कितने दिन में करेगा?	A can do 1/2 part of a work in 5 days, B can do 3/5 part of the same work in 9 days and C can do 2/3 part of the work in 8 days. Find the time taken by B to complete the work.	\N
1174	113	3	\tकिसी शहर की वर्तमान जनसंख्या 18000 है। यदि यह 10% वार्षिक की दर से बढ़े तोे 2 वर्ष बाद जनंसख्या क्या होगी?	The present population of a city is 18000. If it increases at the rate of 10% per annum, its population after 2 years will be.	\N
1269	115	5	दो संख्याओं का  ल.स. 200 है। तो संख्या के कितने मान संभव हैं ? 	if LCM of two positive integers is 200 than find how many pairs possible?	\N
1294	63	3	A,B और C की कार्य क्षमता का अनुपात 4ः5ः3 है यदि तीनों मिलकर पूरा काम 25 दिन में करते हैं तो B और C कुल काम का 35% भाग कितने दिनों में पूरा करेंगे ?	The ratio of work capacity of A, B and C is 4: 5: 3. If all three can do work together in 25 days, then A and C will complete 35% of total work in how many days? 	null
1315	63	1	A और B मिलकर किसी काम को 12 दिन में करते हैं A अकेला उस को 20 दिन में करता है। यदि B प्रतिदिन केवल आधे दिन काम करे, तो A और B मिलकर उस काम को कितने दिन में करेंगे ?	A and B working together can complete the work in 12 days. A can complete the work in 20 days. If B does work for half day each day, then in what time can the work be completed.	null
1353	117	1	A,B और C 12 दिन, 18 दिन, 24 दिन में एक काम पूरा कर सकते हैं। सभी एक साथ काम करना शुरु करते हैं और 3 दिन काम करने के बाद, A ने काम छोड़ दिया, अगले 4 दिनों के बाद B ने भी काम छोड़ दिया शेष कार्य C द्वारा किया जाता है। पूरे काम के लिए उन्हें रु2880 मिले। C का हिस्सा ज्ञात कीजिए ?	A, B and C can complete a work in 12 days, 18 days, 24 days all of them start working together and after working 3 days A left the work, after next 4 days B also left the work, rest of the work is done by C. they got Rs. 2880 for whole of the work. Find the share of C ?	\N
535	67	3	तीन पाइप A,B तथा C किसी टंकी को 18 मिनिट में भर सकते है 6 मिनिट पश्चात पाइप C को बंद कर दिया जाता है फिर A तथा B मिलकर टंकी को 24 मिनिट में पूरा भर पाते है तो बताइये भरी हुई टंकी पाइप C द्वारा कितने समय में खाली कर दी जायेगी?	Three pipes A, B and C fill a cistern in 18 minutes. After working together for 6 minutes, C is closed and A and B fill the cistern in 24 minutes. Then find the time in which the cistern can be filled by pipe C.	\N
536	67	3	किसी हाॅस्टर में 45 दिन के लिए 120 लड़को के खाने की व्यवस्था की गई है यदि 30 नये लड़के और शामिल कर दिये जाए तो बताइए खाना कितने समय तक काम आ सकेगा?	In a hostel, there are 120 students and food stock is for 45 days. If 30 new students join the hostel, in how many complete the same work?	\N
1295	63	3	दो संख्याओं का योग 45 है। उनका अंतर योग का 1/9 है, तो उनका ल.स. ज्ञात करे?	The sum of two numbers is 45. Their difference is 1/9 of their sum. Their LCM is.	null
1316	63	1	A,B और C किसी काम को क्रमशः 10 दिन, 12 दिन और 15 दिन में कर सकते हैं A और B एक साथ काम करना शुरू करते हैं। 1 दिन बाद A काम को छोड़ देता है और C काम से जुड़ जाता है। 2 दिन बाद B काम छोड़ देता है और A जुड़ जाता है (काम करने के लिए) । चैथे दिन उनका अवकाश है और यह प्रक्रिया जब तक काम समाप्त नहीं होता तब तक चलती रहती है तो काम कितने दिन में समाप्त हो जाएगा?	A,B and C can finish a piece of work in 10 days, 12 days and 15 days respectively. A and B started working together. After working for one days A left the work while C joins. After two days B left the work while A joins. There is holiday on fouth day and then process is repeated till work in finished. In how many days work would be finished.	null
1354	117	2	(B+C) किसी काम को करने में (A+B+C) से 50% ज्यादा समय लेते हैं। यदि वे तीनों पूरा काम एक साथ करें तो 450 रु में से 120 रु B का हिस्सा होगा तो वे तीनों इस काम को कितना दिन में पूरा करेंगं यदि (A+B) , (A+B+C)से 8/3 दिन  ज्यादा लेते हैं।	(B+C) takes 50% time more than (A+B+C). If all three takes Rs.450 to complete a work then the share of B is Rs.120. in how many days will (A+B+C) complete this work if (A+B) takes 8/3 days more than (A+B+C). 	\N
538	67	2	भाजक, भागफल का 25 गुना और शेषफल का 5 गुना है। यदि भागफल\n\n16 हो ता े भाज्य क्या होगा?	A divisor is 25 times the quotient and 5 times the\n\nremainder. The quotient is 16, the dividend is.	\N
539	67	2	3 क्रमागत प्राक ृतिक संख्याओं क े वर्गो का योग 2030 है। बीच की संख्या\n\nक्या है?	The sum of the SQUARES of three consective natural\n\nnumbers is 2030. Then, what is the middle number.	\N
540	67	1	जब एक संख्या में 15, 20 या 35 से भाग दिया जाता है, तो प ्रत्य ेक बार\n\n8 शेष बचता है, तो वह न्यूनतम संख्या क्या है?	When a number is divided by 15, 20 or 35, each time the\n\nremainder is 8. Then the smallest number is.	\N
542	67	4	(1125 – 323 – 274) ÷( 875 – 654 - 155) = ?	(1125 – 323 – 274) ÷( 875 – 654 - 155) = ?	\N
543	67	3	यदि किसी वस्तु का वि.मू. उसक े लागत मूल्य का 8/5 ग ुणा है, तो लाभ\n\nज्ञात करें। 	If selling price of an article is 8/5 times of its cost price, the\n\nprofit, the profit percent on it is: 	\N
1070	79	4	यदि किसी संख्या को उस के 37(1/2) % से जोड़ने पर 3344 प्राप्त होता है। तो संख्या ज्ञात करे ?	If 37(1/2) % of a number is added with itself then result becomes 3344. Find the original number.	\N
1175	113	1	\t5000 रू. पर 3 वर्ष बाद चक्रवृद्धि ब्याज क्या होगा, यदि पहले वर्ष की दर 8% दूसरी वर्ष की दर 10% तथा तीसरे वर्ष की 12% हो?	The compound interest on Rs. 5000 for 3 years at 8% for first year, 10% for second year and 12% for third year, will be.	\N
1296	63	1	(A+B) किसी काम को 20 दिन में करते है। A अकेला 60 दिन में करता है तो B उस काम को कितने दिन में पूरा करेगा ?	(A+B) can do a piece of work in 20 days and A can do same work in 60 days. In how many days will B do this work	null
1314	63	1	(A+B) किसी काम को 8 दिन में तथा (B+C) 12 दिन में करते हैं। यदि A 4 दिन और B 7 दिन काम करते हैं तथा शेष काम को C 9 दिन में करता है, तो C अकेला उस काम को कितने दिन में समाप्त करेगा ?	(A+B) working together can finish certain piece of work in 8 days and (B+C) can finish it in 12 days. If A works for 4 days and B works for 7 days, rest work is done by C in 9 days. In how many days C will finish the work working alone.	null
1355	117	2	A,B और C अलग - अलग क्रमशः 15, 20 और 30 दिन में एक काम कर सकते हैं। वे कुछ समय के लिए एक साथ काम करते हैं जिसके बाद C काम छोड़ देता है। पूरे काम के लिए 15000रु का भुगतान किया जाता है। और ठ को ब् की तुलना में 6000रु अधिक प्राप्त हुआ। ज्ञात करें A ने कितने दिनों तक काम किया ?	A, B and C can independently do a work in 15 , 20 and 30 days respectively. They work together for some time after which C more than C. For how many days did A work ?	\N
1356	117	2	A एक काम 60 दिनों में कर सकता है , B वही काम 40 दिनों में और C 12 दिनों में कर सकता है। वे एकान्तर दिन पर एक दिन के लिए काम करते हैं, अर्थात, पहले दिन A अकेले काम करता है, दूसरे दिन B अकेले काम करता है और तीसरे दिन C अकेले करता है। उसके बाद, काम पूरा होने तक यह चक्र दोहराया जाता है। उन्हें इस काम के लिए रु270 मिलता है। यदि उनकी मजदूरी उनके द्वारा किये गये कार्य के अनुपात में विभाजित की जाती है तो ज्ञात करें की A को कितनी राशि मिलेगी।	A can do a piece of work in 60 days, B in 40 days and C in 12 days. They work for a day each in turn, that is, first day A does it alone, second day B does it alone and third day C does it alone. After that the cycle is repeated till the work is finished. They get Rs. 270 for this job, if the wages are divided in proportion to the work each had done , find the amount A will get. 	\N
545	67	2	किसी दो अंकीय संख्या और अंक पलटने पर बनी नयी संख्या का अंतर\n\nसदैव विभाज्य है 	The difference of a number consisting of two digits from\n\nthe number formed by interchanging the digits is always\n\ndivisible by.	\N
547	67	4	एक व्यक्ति ने कुछ चावल 650 रू प्रति क्ंिवटल की दर पर खरीदा। उसमें से 20 प्रतिशत चावल नष्ट हो गया। तद्नुसार, उसे अपना शेष चावल किस दर पर बेचना चाहिए, ताकि उसे पूरे चावल पर 20 प्रतिशत का लाभ मिल सके?	A person bought rice at rs. 650/ quintal. 20% of rice are unusable. At what price should he sell the remaining rice to get a profit of 20%? 	\N
1099	112	2	किसी घन के सतह के क्षेत्रफल में कितने प्रतिशत की वृद्धि होगी जब इसकी प्रत्येक भुुजा दो गुणीकर दी जाती है ?	side of ³ become twice then find % change in its area?	\N
548	67	3	एक वस्तु को उसके निर्धारित मूल्य के 2/3 पर बेचा जाता तो 10 प्रतिशत हानि होती। तद्नुसार निर्धारित मूल्य पर बेचने पर कितना लाभ % होता?	If an article is sold at 2/3of its marked price& get a loss of 10% then find the profit % when it is sold at mp?	\N
1297	116	1	A,B और C किसी काम को क्रमशः 10, 20 और 25 दिन में करते हैं। काम को खत्म करने में कितना न्यूनतम समय लगेगा, यदि एक दिन में 2 से ज्यादा व्यक्ति काम नहीं कर सकते तथा समान युग्म दो लगातार दिन में कार्य नहीं कर सकते ?	A,B and C can do a piece of work in 10, 20 and 25 days. How much minimum time should be required to complete this work if more than two persons can not work in a day and in any two consecutive days same pair can not work.	null
1319	63	4	A काम शुुरू करता है और 4 दिन बाद छोड़ देता है, उसके बाद B को बुलाया और उसने 18 दिनों में काम पूरा कर दिया। अगर A 6 दिन बाद काम छोड़ता तो B शेष काम को 12 दिन में पूरा कर देेता। तो पूरे काम को A और B अलग-अलग कितने दिन में पूरा करेंगें ?	A started a work and left after working for 4 days, then B was called and he finished the work in 18 days. If A left the work after working for 6 days then B would have finished the remaining work in 12 days. In how many days can each of them, working alone finish the whole work. 	null
1357	117	4	S,T तथा U एक कार्य को क्रमशः 40ए 48 तथा 60 दिनों में पूरा करते हैं। कार्य को पूरा करने के लए उन्हें 10800 रु मिलते हैं। उन्होंने कार्य को एक साथ प्रारंभ किया, परन्तु T कार्य पूरा होने से 2 दिन पहले तथा U कार्य पूरा होने से 5 दिन पहले कार्य को छोड़कर चले गए। S शेष कार्य को अकेले पूरा करता है। निर्धाकरत राशि में से S का भाग (रु में ) कितना है ?	S,T and U complete one task in 40, 48 and 60 days respectively. To complete the work , they get Rs.10800 they started the work together, but T left the work 2 days before the completion of the work. S has completed the rest of the work. What is the share of S (in rupees) from total money ?	\N
1090	63	2	एक परीक्षा में किसी प्रत्याशी ने 30 % अंक प्राप्त किए और वह 6 अंकों से फेल हो गया। अन्य प्रत्याशी ने 40 % अंक प्राप्त किए और पास होने वाले न्यूनतम अंको से 6 अंकों अधिक प्राप्त किए। अधिकतम अंक है।	A student got 30 % marks and fail by 6 marks. When he got 40 % marks so he get 6 marks more to pass then find the maximum marks ?	\N
549	67	1	एक व्यक्ति को 20 मीटर कपड़ा बेचने पर 4 मीटर कपड़े के बिक्री मूल्य के बराबर अभिलाभ प्राप्त होता है, तो अभिलाभ का प्रतिशत कितना है?	By selling 20 mtr cloths there is a profit is equal to the selling price of 4 mtr cloth than find actual % profit?	\N
391	64	3	A काम के 7/10 भाग को 15 दिनों में करता है उसके पश्चात् शेष काम वह B की सहायता से 4 दिनों में खत्म करता है। तो A तथा B एक साथ कितने दिनों में काम खत्म करेंगे ?	A does 7/10  part of work in 15 days. After that he completes the remaining work in 4 days with the help of B. In how many days will A and B together do the same work ?	\N
1100	112	4	दूध की कीमत में 35 % की वृद्धि होने पर कोई ग्रहणी अपनी खपत में कितनी कमी करे कि उसका खर्चा केवल 8 % बढ़े।	If the price of milk is increased by 35% by how much a lady must reduced her consumption so that her expenditure is increased only by 8% .	\N
1091	112	4	एक चुनाव में 2 उम्मीदवारों ने भाग लिया। 20 प्रतिशत वोट अवैध घोषित हो गए और जीतने वाला 70 प्रतिशत वैध मतों का प्राप्त करता है। और 9600 मतों से जीतता है कुल वैध मतों की संख्या ज्ञात करों।	In an elaction between two candidate , 20 % of the total votes declared invalid wining candidate got 70%  of the valid votes and win by 9600 votes. Than find the total number of valid votes ?	\N
1162	113	3	\t3 वर्षो के बाद 5% प्रति वर्ष की दर से कोई धनराशि जिसका ब्याज वार्षिक संयोजित होता है, 9261 रू. हो जाती है। वह धनराशि कितनी होगी?	Find the present worth of Rs. 9261 due 3 years hence at 5% per annum compounded yearly.	\N
1105	112	2	मेरी आय 20000 रू. है। मैनें उसमें से 80% खर्च कर दिये। जब मेरी आय 20% और बढ़ गई, तो मैंने 5000 रू. अधिक खर्च कर दिये उसकी बचत में बढ़त या गिरावट की प्रतिशतता ज्ञात करें ?	My income is Rs 20000. I spent 80% of my income. When my income increased by 20% then I spent Rs. 5000 more. Find the percentage change in my savings. 	\N
1298	63	3	वह न्यूनतम वर्ग क्या है जो 21,36 तथा 66 प्रत्येक से पूर्णतः विभाजित है?	The least perfect ², which is divisible by each of 21, 36 and 66 is.	null
1318	63	3	A किसी काम को करने में B से 4 दिन अधिक लेता है। यदि वे एक साथ काम करते है तो काम 8(8/9) दिन में समाप्त कर सकते है। तो प्रत्येक अलग-अलग इस काम को कितने दिन में समाप्त करेंगे?	A takes 4 days more to finish certain piece of work than that of B. If working together they can finish the work in 88/9 days. Then in how many days working alone each can finish the work.	null
1358	117	4	(A+B) किसी काम को 30 दिनों में , (B+C) 24 दिनों में तथा (C+A) 20 दिन में करते हैं। तीनों ने साथ मिलकर काम शुरु किया, लेकिन (B+C) 10 दिन बाद काम छोड़कर चले गये और बचा हुआ काम । ने खत्म किया। पूरे काम के 1200 रु मिलते हैं। तो A का हिस्सा क्या है ?	(A+B) can do a work in 30 days, (B+C) can do this work in 24 days, (C+A) can complete this work in 20 days. Three of them start the work together but (B+C) left the work after 10 days and rest of the work was completed by A. If they received Rs.1200 as total wages. Find out share of A.	\N
1359	117	1	A,B और Cने मिलकर 10 दिनों में नौकरी पूरी कर ली। हालाॅंकि C ने केवल पहले 3 दिनों के लिए काम किया जब 37 प्रतिशत नौकरी की गई थी। साथ ही, A द्वारा 5 दिनों में किया गया कार्य 4 दिनों में B द्वारा किए गए कार्य के बराबर होता है। दिए गए कार्य को पूरा करने के लिए सबसे तेज कार्यकर्ता को कितने दिन लगेंगे ?	A, B and C working together to complete a job in 10 days. However C only worked for the first three days when 37 % of the job was done. Also, the work done by A in 5 days equals the work done by B in 4 days. How many days will the fastest worker take to complete the given work alone ?	\N
551	67	4	एक व्यापारी के पास 1000 किग्रा. चीनी है। इसका कुछ भाग वह 8 प्रतिशत लाभ पर और शेष 18 प्रतिशत लाभ पर बेचता हैं। उसे कुल 14 प्रतिशत लाभ होता है। कितनी मात्रा उसने 8 प्रतिशत लाभ पर बेची?	A shopkeeper have 1000kg sugar. He sell some part of it at 8% profit and the remaining at 18% profit. He gain total 14% profit. Find the quantity of sugar which he sell at 8% profit?	\N
1095	112	3	एक चुनाव में दो उम्मीदवारों ने भाग लिया है। 23.33 % वोट अवैध घेषित किए गए थे और विजेता को कुल वैध मतों का 57% मिला और 7245 वोटों से जीत गया। मतदान सूची में मतदाताओं की कुल संख्या क्या होगी ?	In an election two candidate have participated. 23.33% votes were declared invalid and the winner got 57% of the total valid votes and won by 7245 votes. Find the total number of voters in voting list.	\N
1299	63	1	दिया गया है कि, 1 + 2 + 3 +.... + 10 = 55 तो 11 + 12 + 13 + .... + 20 = ? 	Given that, 1 + 2 + 3 + …. + 10  =55 then 11 + 12 + 13 + …. + 20  =? 	null
1317	63	3	A द्वारा किया गया काम B द्वारा किए गए काम का आधा है। C द्वारा किया गया काम A और B द्वारा मिलकर किए गए काम का आधा है। यदि C अकेला काम को 40 दिन में करें तो तीनों मिलकर काम को कितने समय में करेंगे ?	A does half as much work as B. C does half as much work as A and B together. If C alone can finish the work in 40 days, then all together will finish the work in.	null
1360	117	3	दो व्यक्तियों A और B ने एक काम शुरु किया और 10 दिनों के बाद B ने काम छोड़ दिया। B के दो दिन बाद C, A से जुड़ता है, और कुल N दिनों में पूरा हुआ। प्रत्येक व्यक्ति काम का एक समान हिस्सा पूरा करता है। इसके अलावा, यह ज्ञात है कि A और B मिलकर N दिनों में काम पूरा कर सकते हैं। C अकेले काम को पूरा कर सकता है।	Two persons A and B started a work and after 10 days B left the work. Two days after B left, C join A, and the total was completed in ‘N’ days. Each persom complete an equal share of the work. Further more] it is known that A and B together can complete the work in ‘N’ days. C alone can complete the work in.	\N
394	64	1	A,B तथा C किसी काम को क्रमशः 30, 20 तथा 10 दिनों में कर सकते हैं। B तथा C बारी-बारी से काम में A की सहायता करते हैं, तो काम कितने दिनों में समाप्त होगा ?	A,B and C can do a piece of work in 30,20 and 10 days respectively. A is assisted by B on one day and by C on the next day, alternatively. How long would the work take to finish ?	\N
552	67	2	एक स्टोर में लागत मूल्य के 25 प्रतिशत लाभ पर घड़ी बेची जाती है। विक्रय मूल्य पर लाभ का प्रतिशत कितना होगा ?	In a store a watch is sell at 25% profit of its cost price. Find the profit of its selling price?	\N
313	61	2	JIMEX 2018 सैन्याभ्यास किन देशों के मध्य आयोजित किया गया ?	JIMEX 2018 was organized between which countries? 	\N
1103	112	3	एक बेलन का आयतन 43% बढ़ जाता है जबकि इसकी उंचाई को 15(5/13) % कम किया जाता है तो बेलन के वक्रप्रष्ठ के क्षेत्रफल में % परिवर्तन ज्ञात करो ?	Volume of a cylinder is increases by 43% and when its  height is decreased by 15(5/13) % than find the % change in its C.S.A. of cylinder? 	\N
329	116	2	दो संख्याओं का म.स. तथा ल.स. क्रमशः 15 तथा 300 है। यदि एक संख्या 60 है, तो दूसरी संख्या ज्ञात करें?	The HCF of two numbers is 15 and their LCM is 300. If one of the number is 60, the other is.	\N
1361	117	1	एक बर्तन दो पाइप से अलग-अलग क्रमशः 20 तथा 30 मिनटों में भरा जा सकता है। दोनों पाइप खोल देने पर पहला पाइप कब बन्द किया जाना चाहिए कि बर्तन 15 मिनट के बाद भर जाए?	A container is fill by the two pipes in 20min and 30 min respectively. If both the pipes open togather when the second pipe should be closed so that the container fill in further 15min? 	\N
331	116	1	दो संख्याएँ 28 और 42 के ल.स. तथा म.स. का अनुपात क्या होगा ?	LCM and HCF of the numbers 28 and 42 are in the ratio.	\N
332	116	4	वह न्यूनतम संख्या क्या है, जिसमें 12, 15, 20 और 54 से भाग देने पर प्रत्येक स्थिति में 4 शेष बचता है?	The least number, which when divided by 12, 15, 20 or 54 leaves a remainder of 4 in each case is.	\N
333	116	3	वह न्यूनतम वर्ग क्या है जो 21,36 तथा 66 प्रत्येक से पूर्णतः विभाजित है?	The least perfect ², which is divisible by each of 21, 36 and 66 is.	\N
334	116	4	4 घंटियाँ क्रमशः 30 मिनट, 1 घंटा, 1(1/2) घंटा तथा 1 घंटा 45 मिनट के अंतराल पर बजती है। सभी घंटियाँ एक साथ 12 बजे दोपहर में बजी हो, तो वे पुनः एक साथ कब बजेंगी?	4 bells ring at intervals of 30 minutes, 1 hour, 1(1/2) hour and 1 hour 45 minutes respectively. All the bells ring simultaneously at 12 noon. They will again ring simultaneously at.	\N
335	116	4	15 मी. 17 सेमी. लम्बे तथा 9 मी 2 सेमी. चैड़े फर्श पर बिछाने के लिये कम से कम कितने वर्गकार टाईलों की जरूरत होगी?	What is the least number of ² tiles required to pave the floor of a room 12 m 17 cm long and 9m, 2 cm broad.	\N
337	116	2	चाय के थोक विक्रेता के पास तीन प्रकार की चाय हैं जिनका वजन अलग-अलग 408 किगा्. 468 किग्रा. एवं 516 किग्रा है। समान आकार के थैलों की न्यूनतम संख्या क्या होगी जिनमें प्रत्येक प्रकार की चाय को बगैर मिलाये रखा जा सके ?	Wholesaler of tea has three types of tea that weighs 408 kg ,468 kg and 516 kg separately. What will be the minimum number of bags of the same size in which all kinds of tea can be kept unmixed? 	\N
338	116	2	दो संख्याओं के ल.स. तथा म.स. का गुणनफल 24300 है। उन संख्याओं में 4ः3 का अनुपात है। उन संख्याओं के ल.स. तथा म.स. का योग क्या है ? 	The product of LCM and HCF of two numbers is 24300. Those numbers are in ratio of 4: 3. What is the sum of LCM and HCF of two numbers?	\N
339	116	1	दो संख्याओं का योगफल 128 है तथा उनके म.स. तथा ल.स. क्रमशः 8 तथा 504 हैं। उन संख्याओं के व्युत्क्रमों का योगफल होगा ?	Sum of two numbers is 128 and their HCF and LCM are 8 and 504 respectively. The sum of the reciprocal of those numbers will be 	\N
340	116	2	दो संख्याओं का LCM , बड़ी संख्या का चार गुना है, जबकी HCF और छोटी संख्या अंतर 24 है , छोटी संख्या ज्ञात कीजिए ?	LCM of two numbers is four times the bigger number and difference of HCF and smaller number is 24. Find smaller number? 	\N
341	116	4	दो बीजगणितिय व्यंजकों x तथा y का म.स. व ल.स. क्रमशः । तथा B है, यदि A + B = x+y हो,तो A³ + B³ का मान ज्ञात करें ?	If A and B are the HCF and LCM respectively of two algebric expressions x and y, and A+ B =x+y, then the value of A³ + B³ is 	\N
342	116	4	यदि दो संख्याओं 1728 तथा K का लघुत्तम समापवत्र्य 5184 है, तो K के कितने मान संभव हैं ?	If the least common multiple of two numbers, 1728 and K is 5184, then how many values of K are possible? 	\N
343	116	3	A,B और C की कार्य क्षमता का अनुपात 4ः5ः3 है यदि तीनों मिलकर पूरा काम 25 दिन में करते हैं तो B और C कुल काम का 35% भाग कितने दिनों में पूरा करेंगे ?	The ratio of work capacity of A, B and C is 4: 5: 3. If all three can do work together in 25 days, then A and C will complete 35% of total work in how many days? 	\N
336	116	3	(A+B) किसी काम को 18 दिन में कर सकते है। A ने 4(1/2) दिन काम किया और चला गया तथा B ने 12(1/2) दिन काम किया और आधा काम पूरा हुआ। तो B उस काम को कितने दिन में पूरा करेगा ?	(A+B) can do a piece of work in 18 days. A works 4(1/2) days and B works for 12(1/2 )days, then half of the work has been completed. In how many days will B do this work alone.	\N
369	116	2	यदि आप 291 से 300 तक के सभी अंकों को लिखें तो बताऐं कि कितनी बार सम संख्या लिखेंगे ?	If you are written the numbers from 291 to 300 then find how many times you wrote even numbers? 	\N
314	61	3	विश्व प्रतिस्पर्धा सूचकांक 2018 में भारत को कौनसी रैंक मिली ?	What is the rank of India in World Competition Index 2018? 	\N
344	116	2	A किसी काम का 25% काम करता है तथा शेष काम B करता है काम पूरा होने में 20 दिन लगते हैं यदि B 25% काम करे तथा शेष काम A करे तो काम समाप्त होने में 30 दिन लगते हैं। ज्ञात करें कि A इस काम को कितने समय में करेंगा।	A do 25% of the work and B do rest of the work then the time taken by both the workers is 20 days. If B did 25% of the work and A did the rest then the time taken by both the workers is 30 days. Find the time taken by A alone ?	\N
1178	113	3	यदि कोई धन 2 वर्ष में स्वयं का 1.44 गुना हो जाये तो चक्रवृद्धि ब्याज की वार्षिक दर कितनी होगी?	If a sum of money compounded annually becomes 1.44 times of itself in 2 years, then the rate of interest per annum is. 	\N
347	116	3	A किसी काम के 13/56  भाग को 111 दिन में करता है, जबकि B, 43/56 भाग को 111 दिन में करता है। तो दोनोें मिलकर उस काम को कितने दिन में पूरा करेगें ?	A can do 13/56  part of a work in 111 days and B can do 43/56  part of a work in 111 days. In how many days will A and B complete the total work.	\N
348	116	1	(A+B) किसी काम को 12 दिन में करते है। (B+C) इसी काम को 6(2/3) दिन में करते हैं। A 3 दिन काम करके चला गया, B 4 दिन काम करके चला गया तथा बचा हुआ काम C ने 7 दिन में पूरा कर दिया। तो A,B और C अलग-अलग इस काम को कितने दिन में पूरा कर सकते है।	(A+B) can do a piece of work in 12 days. (B+C) can do same work in 6(2/3 )days. A work for 3 days, B works for 4 days and C completed the remaining work in 7 days. In how many days will A,B and C do this work alone. 	\N
351	116	4	A की कार्यक्षमता, B से 40% ज्यादा है और B की कार्यक्षमता, C से 20% कम है। यदि A किसी काम को करने में C से 6 दिन कम लेता है। तो बताओं B कितने दिन में करेगा ?	A is 40% more efficient than B and B is 20% less efficient than C. If A takes 6 days less than C to complete a work, then in how many days will B complete this work.	\N
352	116	3	A की कार्यक्षमता, ठ की कार्यक्षमता की 3/4 है और B की कार्यक्षमता C की कार्यक्षमता की 80% है। B और C के एक साथ काम करने में लिये गए समय से A 120 दिन अधिक समय लेता है तो तीनों मिलकर यह काम कितने दिन में समाप्त करेंगें?	Efficiency of A is 3/4 of B’s efficiency and B’s efficiency is 80% of C’s efficiency. If A takes 120 more days than that of B and C working together to finish a certain piece of work. Then in how many days working together they will finish the work.	\N
353	116	2	A और B की कार्यक्षमता का अनुपात 3: 5 है तथा B और C की कार्यक्षमता का अनुपात 2: 3 है। यदि A और B 4 दिन काम करते हैं तथा बचे हुए शेष काम को C 8 दिन में खत्म करता है तो B अकेले उस काम को कितने दिन में खत्म करेगा ?	The ratio of efficiency of A and B is 3 : 5 and that of B and C is 2 : 3 respectively. If A and B work for 4 days then remaining work is finished by C in 8 days. Then in how many days B alone will finish the work.	\N
354	116	1	B किसी काम को करने में (A+C)  से 2 गुना समय लेता है। जबकि C उसी काम को करने में (A+B) से 3 गुना समय लेता है। यदि तीनों मिलकर इस काम को 36 दिन में खत्म कर लेते है। तो तीनों अलग-अलग कितने दिन में करेंगे ?	B takes two times as long as (A+C) together to complete a work. C takes three times as much as (A+B) together to complete a work. If all the three, working together can complete the work in 36 days. Then find the number of daysB alone will take to complete this work.	\N
355	116	2	B किसी काम को कितने समय में करता है उसके 3/4 समय में, A आधा काम करता है। यदि दोनों मिलकर इस काम को 18 दिन में खत्म कर सकते है। तो B कितने दिन में करेगा?	A does half as much as work as B in 3/4 of the time. If together they take 18 days to complete a work, how much time shall B take to do it alone.	\N
356	116	3	A किसी काम को 25 दिन में, B 40 दिन में और C 60 दिन में करता है। तीनों ने 5 दिन तक काम किया, इसके बाद A ने काम छोड़ दिया। B ने काम खत्म होने से 10 दिन पहले छोड़ दिया तो काम कितने दिन में पूरा हुआ।	A ,B and C can do a work in 25, 40 and 60 days respectively. All three start the work together and work for 5 days then A left and B left 10 days before the completion of work, how much time shall be taken to do whole work.	\N
357	116	3	A किसी के काम के 4/5 भाग को 20 दिन में करता है तथा फिर वह B को बुलाकर उसके शेष काम को 3 दिनों में पूरा करता है। B को उस काम को अकेले करने में कितना समय लगेगा ?	A does 4/5 part of the work in 20 days and rest of the work is done by A and B in 3 days. In what time can B do the whole work.	\N
358	116	3	राहुल की कार्यक्षमता राम से दुगुनी है। यदि दोनों मिलकर किसी कार्य को 12 दिन में करते हैं, तो राहुल अकेला उस कार्य को कितने दिन में करेगा ?	Rahul is twice efficient as Ram. If both of them can complete the work in 12 days. Then find the number of days Rahul would take to complete the work above.	\N
111	57	4	एक संख्या के 3/5 के 60% का 40%, 504 है। उस संख्या के 2/5 का 25% कितना है?	40% of 60% of 3/5 of a number is 504 then find 25% of 2/5 of that number ?	\N
1362	117	3	एक पाइप किसी टैंक को भरने में दूसरे पाइप की अपेक्षा तीन गुना तेजी से भरता है। यदि दोनों पाइप एक साथ किसी टैंक को 36 मिनट में भरते है, तो धीमी गति से भरने वाला पाइप टैंक को अकेला कितने समय में भरेगा।	One pipe can fill a tank three times as fast as another pipe. If together the two pipes can fill the tank in 36 minutes, the slower pipe alone will be able to fill the tank in ?	\N
359	116	1	A और B मिलकर किसी काम को 12 दिन में करते हैं A अकेला उस को 20 दिन में करता है। यदि B प्रतिदिन केवल आधे दिन काम करे, तो A और B मिलकर उस काम को कितने दिन में करेंगे ?	A and B working together can complete the work in 12 days. A can complete the work in 20 days. If B does work for half day each day, then in what time can the work be completed.	\N
360	116	1	A,B और C किसी काम को क्रमशः 10 दिन, 12 दिन और 15 दिन में कर सकते हैं A और B एक साथ काम करना शुरू करते हैं। 1 दिन बाद A काम को छोड़ देता है और C काम से जुड़ जाता है। 2 दिन बाद B काम छोड़ देता है और A जुड़ जाता है (काम करने के लिए) । चैथे दिन उनका अवकाश है और यह प्रक्रिया जब तक काम समाप्त नहीं होता तब तक चलती रहती है तो काम कितने दिन में समाप्त हो जाएगा?	A,B and C can finish a piece of work in 10 days, 12 days and 15 days respectively. A and B started working together. After working for one days A left the work while C joins. After two days B left the work while A joins. There is holiday on fouth day and then process is repeated till work in finished. In how many days work would be finished.	\N
361	116	1	(A+B) किसी काम को 8 दिन में तथा (B+C) 12 दिन में करते हैं। यदि A 4 दिन और B 7 दिन काम करते हैं तथा शेष काम को C 9 दिन में करता है, तो C अकेला उस काम को कितने दिन में समाप्त करेगा ?	(A+B) working together can finish certain piece of work in 8 days and (B+C) can finish it in 12 days. If A works for 4 days and B works for 7 days, rest work is done by C in 9 days. In how many days C will finish the work working alone.	\N
362	116	3	A किसी काम को करने में B से 4 दिन अधिक लेता है। यदि वे एक साथ काम करते है तो काम 8(8/9) दिन में समाप्त कर सकते है। तो प्रत्येक अलग-अलग इस काम को कितने दिन में समाप्त करेंगे?	A takes 4 days more to finish certain piece of work than that of B. If working together they can finish the work in 88/9 days. Then in how many days working alone each can finish the work.	\N
363	116	4	A काम शुुरू करता है और 4 दिन बाद छोड़ देता है, उसके बाद B को बुलाया और उसने 18 दिनों में काम पूरा कर दिया। अगर A 6 दिन बाद काम छोड़ता तो B शेष काम को 12 दिन में पूरा कर देेता। तो पूरे काम को A और B अलग-अलग कितने दिन में पूरा करेंगें ?	A started a work and left after working for 4 days, then B was called and he finished the work in 18 days. If A left the work after working for 6 days then B would have finished the remaining work in 12 days. In how many days can each of them, working alone finish the whole work. 	\N
364	116	3	A द्वारा किया गया काम B द्वारा किए गए काम का आधा है। C द्वारा किया गया काम A और B द्वारा मिलकर किए गए काम का आधा है। यदि C अकेला काम को 40 दिन में करें तो तीनों मिलकर काम को कितने समय में करेंगे ?	A does half as much work as B. C does half as much work as A and B together. If C alone can finish the work in 40 days, then all together will finish the work in.	\N
365	116	3	A,B द्वारा किए गए 20% अधिक समय में B द्वारा किया गया 80% काम समाप्त कर सकता है। वे दोनों एक साथ काम करके 40 दिन में खत्म कर सकते हैं। तो वे दोनों अकेले अलग-अलग कितने दिन में काम खत्म करेंगे ?	A can finish 80% of work done by B in 20% more time taken by B. working together they can finish the work in 40 days. In how many days they will finish the work working alone.	\N
366	116	2	शशांक एक काम की शुरूआत करता है और 12 दिन बाद छोड़ देता है तथा शेष काम को नीतीश 15 दिन में करता है। यदि शशांक 2 दिन पहले काम छोड़ देता है तो शेष काम को नीतीश 18 दिन में करता है। यदि शशांक अपनी कार्यक्षमता 20% कम कर दे तथा नीतीश अपनी कार्यक्षमता 50% बढ़ा दे। तो वे दोनों एकसाथ मिलकर काम को कितने दिन में पूरा कर देंगें ?	Shashank started a work and left after 12 days, rest work done by Nitish in 15 days. Had shashank left work, 2 days before, the rest work could have been doen by Nitish in 18 days. If Shashank reduces his efficiency by 20% and Nitish increase his efficiency by 50% . then in how many day woking together they will finish the work.	\N
1363	117	3	बराबर क्षमता के 21 पम्प किसी टेंक को 4 दिन में भरते हैं, टेंक को 3 दिन में भरने के लिए कितने अतिरिक्त पम्पोें की जरूरत होगी?	21 pipes of equal efficiency can fill the tank in 4 days. How many more pipes should be connected in it so that the tank will be filled in 3 day?	\N
112	57	3	12 और 8 का प्रथम समानुपाती होगा।	Find the first proportional of 12 and 8?	\N
368	116	2	यदि a और b विषम संख्याऐं हों तो बताऐं कि निम्नलिखित में सम संख्या कौन-सी है ?	41.\tIf a and b are the odd numbers then find which is the even in the following ? 	\N
1364	117	2	निम्न में से कौनसा क्रम सही है।	Which of the order is correct below:	\N
1180	63	1	कोई धन चक्रवृद्धि ब्याज की एक निश्चित दर पर 6 वर्षों में स्वयं का दुुगुना हो जाता है। कितने वर्ष में यह 16 गुना हो जायेगा?	A sum of money placed at compound interest doubles itself in 6 years. In how many years will it amount to 16 times itself.	\N
330	116	1	A एक कार्य को 10 दिन, B 12 दिन तथा C 15 दिन में पूरा कर सकता हैं। उस तीनों ने मिलकर कार्य आरम्भ किया, किन्तु A को कार्याम्भ के 2 दिन पश्चात् तथा B को कार्य समापन से 3 दिन पहले कार्य छोड़करी जाना पड़ा। कार्य कितने दिन में पूरा हुआ?	A can complete a work in 10 days, B in 12 days and C in 15 days. All of them began the work together; but A had to leave the work after 2 days of the start and B, 3 days before the completion of the work. How long did the work last?	\N
345	116	1	A और C किसी काम को 12 दिन में पूरा करते हैं। A और B उसी काम को 20 दिन में पूरा करते हैं। यदि A 24 दिन काम करे तथा B 6 दिन काम करें तो शेष काम को C 2 दिन में समाप्त कर देता है। तो उस काम को तीनों मिलकर कितने दिन में समाप्त करेंगे ?	A and C working together can finish certain piece of work in 12 days. A and B can finish same piece of work in 20 days. If A work for 24 days and B for 6 days then rest work done by C in 2 days. Then find in how many days A, B and C can finish same piece of work, working together.	\N
346	116	3	मोहन और सोहन एक काम करते हैं। मोहन कंप्यूटर पर 32 पेज टाईप करने में 6 घंटे लेता है, जबकि सोहन 40 पेज टाईप करने में 5 घंटे लेता है। ज्ञात करें कि दोनों अलग-अलग कंप्यूटर पर 110 पेज कितने समय में टाईप कर लेंगें?	Mohan and Sohan are working on a assignment. Mohan takes 6 hours to type 32 pages on a computer while Sohan takes 5 hours to type 40 pages. How much time will they take, working together on two different computers to type an assignment for 110 pages.	\N
1365	117	4	47, 38, ?, 23, 17, 12, 8	47, 38, ?, 23, 17, 12, 8	\N
1366	117	5	25, 49, 81, ?, 169, 225	25, 49, 81, ?, 169, 225	\N
150	58	4		The value of ( √6 + √10 - √21 - √35 ) (√6 - √10 + √21 - √35)	\N
367	116	2	A और B किसी काम को एक दिन के अन्तराल में करते हुए 34/3 दिन में समाप्त कर सकते हैं यदि B काम की शुरुआत करता हो तो। A उस काम को अकेला 48 दिन में कर सकता है तो बताइए B अकेला 4 गुना काम कितने दिनो में करेगा ?	\tA and B can do a work in 𝟑𝟒/𝟑 days working alternatively with B working first. A can complete work alone in 48 days in how many days B does 4 times of the work? 	\N
1367	117	2	ABD: CDF: : MNP : ?	ABD: CDF: : MNP : ?	\N
553	67	4	यदि 10 वस्तुओं का लागत मूल्य 16 वस्तुओं के विक्रय मूल्य के बराबर हो, तो उन वस्तुओं की बिक्री पर कितने प्रतिशत लाभ या हानि होगी?	Cost price of 25 article is equal to selling price of 20 articles. Find profit/loss%.	\N
1122	112	2	यदि कोइ छात्र किसी संख्या को 11/16 के बजाय 7/12 से गुणा करता है, तो प्राप्त उत््रर में % त्रुटि कितनी होगी ?	If a student multiplied a number by 7/12 instead of 11/16 find the % error in the calculation ?	\N
1325	116	2	अक्षरों का कौन सा समूह रिक्त स्थानों पर क्रमवार रखने से दी गयी अक्षर श्रृंखला को पूरा करेगा?\n\nab_bc_bc_ab_dea_cdef	Fill the correct option-\n\nab_bc_bc_ab_dea_cdef	\N
1326	116	3	अक्षरों का कौन सा समूह रिक्त स्थानों पर क्रमवार रखने से दी गयी अक्षर श्रृंखला को पूरा करेगा?\n\n_bcc_ac_aabb_ab_cc	Fill the correct option-\n\n_bcc_ac_aabb_ab_cc\n\n	\N
1327	116	2	999(98/99) + 99  बराबर है-	99998/99 + 99 is equal to-	\N
1328	116	4	54, 71, 75 और 99 प्रत्येक संख्या में से क्या घटाया जाए कि शेषफल क्रमागत समानुपात में हो ?	What should be subtracted from each of the number 54, 71, 75 and 99, so that the remainder are in continued proportion ? 	\N
1329	116	1	यदि A 9 घण्टे प्रतिदिन काम करके 7 दिन में काम पूरा करता है और B 7 घण्टे प्रतिदिन काम करके 6 दिन में पूरा कर सकता है तो यह दो मिलकर प्रतिदिन 8 (2/5) घण्टे काम करे तो कितने दिन लगेंगें?	If A working for 9 hours in a day, he can complete a work in 7 days and B working for 7 hours in a day he can complete a 6 days if they working together for 8 (2/5)  in a day then how many days work will complete?	\N
1368	117	3	व्यंजक 4 × 8 × 12× ........ ×924 के अंत में कितने शून्य होंगे ?	How many zeroes will be there at the end of the expression N= 4 ×8× 12× ……..×924? 	\N
1369	117	3	Which one is different from the rest three?	Which one is different from the rest three?	\N
406	64	2	अक्षरों का कौन सा समूह रिक्त स्थानों पर क्रमवार रखने से दी गयी अक्षर श्रृंखला को पूरा करेगा?\n\nab_bc_bc_ab_dea_cdef	Fill the correct option-\n\nab_bc_bc_ab_dea_cdef	\N
1135	63	1	चीनी की कीमत में 12 % की वृद्धि हुई है। किसी व्यक्ति के उपयोग में कितने प्रतिशत की कमी हो सकती है ताकि खर्च में केवल 22.5 % वृद्धि हो?	The price of sugar has increased by 12%. By what percentage can a person decrease the consumption so that there is an increase in the expenditure by 22.5% only? 	\N
1370	117	4	Which one is different from the rest three?	Which one is different from the rest three?	\N
1371	117	3	इनमें से कौन सी अभाज्य संख्या नहीं है?	which is not the prime number?	\N
1372	117	2	98×17373×153×96×127 अंतिम दो अंक ज्ञात करों ?	98×17373×153×96×127 find last two digit?	\N
1153	113	2	\tकोई धन 8% की वार्षिक दर से 2 साल में 5832 रू. हो जाता है। मूलधन ज्ञात करो। 	A sum of money amounts to Rs. 5832 in 2 years at 8% per annum. Find the sum.	\N
1136	113	4	यदि चीनी के मूल्य में क्रमशः 16.66 % तथा 28.56 % की वृद्धि की जाती है, इसके बाद 62.5 % की कमी की जाती है, अब एक व्यक्ति 217 ग्राम चीनी उपयोग करता है, यदि प्रारम्भ में 124 ग्राम चीनी का उपयोग करता था, तो खर्च में परिवर्तन ज्ञात करें ?	The price of sugar is increased by 16.66% and again increased by 28.56% now it decreased by 62.5%. But a person used 217 gm sugar currently While he consumed 124 gm previously. Find % change in the expenditure of person? 	\N
1130	112	4	किसी मशीन के मूल्य में प्रतिवर्ष 5% का हास होता है। यदि इसका वर्तमान मूल्य 411540 है। तो 3 वर्ष पहले इसका मूल्य क्या था ?	The value of a machine decreases every year at the rate of 5%. If its present value is Rs.411540, what was its value before 3 years ago? 	\N
1131	112	1	एक व्यक्ति अपनी आय का 16.66 % घर के किराये पर तथा शेष भाग का 17 % कपड़ों पर तथा 23 % खाने पर तथा शेष भाग का 10 % शिक्षा पर खर्च करता है शेष राशि को बैंक में जमा करता है। कुल आय तथा कुल खर्च का अनुपात ज्ञात करें।	A person spends 16.66% of his income on house rent. 17%of the remaining on the clothes, 23% on foods and 10%of the remaining on education He deposited remaining amount in bank find the ratio of total income and total expenditure? 	\N
1132	112	2	चीनी की कीमत 57(1/7) %  बढ़ जाती है, चीनी की खपत को कितना प्रतिशत कम किया जाना चाहिए ताकि व्यय में बदलाव न हो ?	The price of sugar rises by 57(1/7) %  by how much percentage should the consumption of sugar be reduced so that the expenditure doesn’t change? 	\N
1373	117	2	10,000 निकटतम वह संख्या क्या है, जो 3,4,5,6,7 तथा 8 से पूर्णतः विभाजित हो?	The number nearest to 10000, which is exactly divisible by each of 3,4,5,6,7 and 8, is.	\N
1287	63	2	चाय के थोक विक्रेता के पास तीन प्रकार की चाय हैं जिनका वजन अलग-अलग 408 किगा्. 468 किग्रा. एवं 516 किग्रा है। समान आकार के थैलों की न्यूनतम संख्या क्या होगी जिनमें प्रत्येक प्रकार की चाय को बगैर मिलाये रखा जा सके ?	Wholesaler of tea has three types of tea that weighs 408 kg ,468 kg and 516 kg separately. What will be the minimum number of bags of the same size in which all kinds of tea can be kept unmixed? 	null
1310	63	1	B किसी काम को करने में (A+C)  से 2 गुना समय लेता है। जबकि C उसी काम को करने में (A+B) से 3 गुना समय लेता है। यदि तीनों मिलकर इस काम को 36 दिन में खत्म कर लेते है। तो तीनों अलग-अलग कितने दिन में करेंगे ?	B takes two times as long as (A+C) together to complete a work. C takes three times as much as (A+B) together to complete a work. If all the three, working together can complete the work in 36 days. Then find the number of daysB alone will take to complete this work.	null
939	76	2	A,B और C किसी काम को क्रमशः 20 दिन 25 दिन और 30 दिन समाप्त करते है। वे एक साथ काम करना शुरू करते है A ने कितने दिन बाद काम छोड़ा होगा कि पूरा काम 12 दिन में समाप्त हो जाये।	A, B and C finish a piece of work in 20 days, 25 days and 30 days respectively. They started working together. After how many days A should leave the work so that total work will be complete in 12 days.	\N
940	76	4	A, B और C किसी काम को एक साथ 32 दिन में समाप्त कर सकते हैं। वे एक साथ काम करना शुरू करते है और 20 दिन बाद A काम को छोड़ देता है तथा शेष काम को B और C 20 दिन में करते है। यदि A अकेला काम करता है तो काम कितने दिन में समाप्त होगा ?	A,B and C working together can finish a piece of work in 32 days. They started working together and worked for 20 days then A left the work. Rest work done by B and C in 20 days. In how many days A working alone will finish the work.	\N
942	76	3	A किसी काम को करने में B से 4 दिन अधिक लेता है। यदि वे एक साथ काम करते है तो काम 8(8/9) दिन में समाप्त कर सकते है। तो प्रत्येक अलग-अलग इस काम को कितने दिन में समाप्त करेंगे?	A takes 4 days more to finish certain piece of work than that of B. If working together they can finish the work in 8(8/9) days. Then in how many days working alone each can finish the work.	\N
831	73	1		 	e4022ce5eb85e75d9ad582ba9aa53c6f
699	71	3	निम्न में से कौन सा पूर्ण वर्ग है ?	Which of the following is a perfect SQUARE ?	\N
943	76	4	A काम शुुरू करता है और 4 दिन बाद छोड़ देता है, उसके बाद B को बुलाया और उसने 18 दिनों में काम पूरा कर दिया। अलग A 6 दिन बाद काम छोड़ता तो B शेष काम को 12 दिन में पूरा कर देेता। तो पूरे काम को A और B अलग-अलग कितने दिन में पूरा करेंगें ?	A started a work and left after working for 4 days, then B was called and he finished the work in 18 days. If A left the work after working for 6 days then B would have finished the remaining work in 12 days. In how many days can each of them, working alone finish the whole work.	\N
696	71	2	250! के अंत में शून्यों की संख्या होगी।	Find the no. of zeros in 250!	\N
738	71	2	\t100! के अंत में शून्यों की संख्या होगी।	Find the no. of zeros in 100!	\N
749	72	2	सबसे कम क्रोमोसोम किसमें पाए जाते हैं ?	-	\N
753	72	3	मास्तिक जिस अस्थि पर रखा होता है क्या कहलाती हैं ?	-	\N
754	72	1	मानव में कुल कितनी कशेरुकाऐं पाई जाती हैं ?	-	\N
756	72	3	शरीर की सबसे मजबूत पेशी कौन सी होती हैं ?	-	\N
757	72	2	खुला रक्त परिसंचरण किनमें पाया जाता हैं ?\n\n(A) कीर\n\n(B) मकड़ी\n\n(C) केंचुआ\n\n(D) तिलचट्टा\n\n	-	\N
759	72	3	मिश्रित अर्थ व्यवस्था की अवधारणा किसके द्वारा दी गई ?	-	\N
760	72	2	प्रिंसीपल्स आफ इकोनाॅमिक्स पुस्तक के लेखक कौन हैं ?	-	\N
761	72	4	शरीर की सबसे बड़ी शिरा कौन सी हैं ?	-	\N
762	72	3	प्लेट्लेट्स का जीवन काल कितना होता हैं ?	-	\N
810	73	1	यदि एक संख्या को एक निश्चित भाजक से भाग दिया जाये तो शेषफल 43 बचता है और एक दूसरी संख्या कोइ सी भाजक से भाग दिया जाये तो शेषफल 37 बचता है। यदि दोनों संख्याओं के योग को उसी भाजक से भाग दे तो शेषफल 13 बचता है, तब भाजक ज्ञात करें।	If a number is divided by certain divisor, then remainder is 43 and when another number is divided by the same divisior then remainder is 37, but when the sum of both the number is divided by the same divisor, then the remainder is 13. Find divisor.	\N
813	73	2	किसी सांकेतिक भाषा में A को C  के रुप में लिखा जाता है, B को D के रुप में लिखा जाता है ,C को E के रुप में लिखा जाता है , तथा आगे इसी प्रकार् Z तक लिखा जाता है। बताइए उसी कोड में CHIKMAGALUR को कैसे लिखा जाता है ?	-	\N
814	73	4	निम्न लिखित श्रंखला में प्रश्नचिन्ह (?) के स्थान पर क्या आएगा ?\n\nN 5 V, K 7  T, ?, E 14 P, B 19 N	-	\N
816	73	3	निर्देश: इन प्रश्नों का उत्तर देने के लिए निम्नअक्षर / अंक श्रंृखला का सहारा लीजिऐ-\n\nE K M 3 P 5 7 R T V Z 9 D I F Q X 4 6 G H J 2 8 W\n\n2. अगर उपरोक्त क्रम में पहले बारह अक्षर/ अंकों को विपरीत क्रम में लिखा जाये, तो निम्न में से कौन-सा आपके दाहिने सिरे से तेरहवें के बायीं ओर आठवां होगा ?\n\n	-	\N
817	73	2	निर्देश: इन प्रश्नों का उत्तर देने के लिए निम्नअक्षर / अंक श्रंृखला का सहारा लीजिऐ-\n\nE K M 3 P 5 7 R T V Z 9 D I F Q X 4 6 G H J 2 8 W\n\n3. उपरोक्त श्रंखला क्रम के संदर्भ में निम्न में से कौन सा अक्षर/ अंक बायी ओर से सातवें और दाहिनी ओर से नवें अंक अक्षर के ठीक बीच का है ?\n\n	-	\N
818	73	4	निर्देश: इन प्रश्नों का उत्तर देने के लिए निम्नअक्षर / अंक श्रंृखला का सहारा लीजिऐ-\n\nE K M 3 P 5 7 R T V Z 9 D I F Q X 4 6 G H J 2 8 W\n\n4. नीचे दिये गये पांच में से कोई चार उपरोक्त क्रम में अपनी स्थिति के कारण एक से है। वह एक कौन सा है जो इस समूह में शामिल नहीं होता है ?\n\n	-	\N
554	67	1	समान्य क्रय-मूल्य वाली 14 घड़ियों को 450 रू प्रति घड़ी की दर से बेचने पर 4 घड़ियों के क्रय-मूल्य के बराबर लाभ होता है। एक घड़ी का क्रय-मूल्य है-	By selling 14 watches of same cost price at Rs.450/watch which is equal to the profit of the cost price of 4 watches. Find the C.P of one watch?	\N
555	67	1	किसी वस्तु को 21 रूपए में बेचने से एक आदमी को क्रय-मूल्य के बराबर प्रतिशत हानि हुई। वस्तु का क्रयमूल्य था:	By selling an article for rs.21 there is %loss  is equal to the cost price than find the c.p?	\N
556	67	2	100 पुस्तकों का लागत मूल्य 60 पुस्तकों के विक्रय मूल्य के बराबर हैं लाभ अथवा हानि की प्रतिशतता कितनी होगी?	Cost price of 100 books is equal to selling price of 60 books. Find profit/loss%.	\N
450	65	3	यदि दो संख्याओं का अनुपात 2: 3 है तथा उनका ल.स. 54 है, तो संख्याओं का योग ज्ञात करें?	If the ratio of the two numbers is 2 : 3 and their LCM is 54, then the sum of the two number is.	\N
557	67	1	जब कोई वस्तु 78 रू में बेची जाती है तो उसका लाभ उसी वस्तु को 69 रू में बेचने पर होने वाले लाभ से दोगुना हैं वस्तु का लागत मूल्य क्या है?	The profit earned when an article is sold for Rs. 78 is twice the profir incurred when it is sold for Rs.69 . Find the cost price of this article?	\N
664	70	3	एक कक्षा में 80% विद्यार्थी गणित में pass हुये और 70% अंग्रेजी में pass हुये। यदि 10% विद्यार्थी दोनों विषयों में fail हुए हों और 144 विद्यार्थी दोनों विषयों में pass हुए हो,तो कुल विद्यार्थियों की संख्या कितनी है ?	In a class, 80% of students pass in maths exam and 70% of students pass in English exam. 10% of students fail in both subjects and if 144 students pass in both subejects. Find the total number of students.	\N
665	70	3	P तथा Q एक स्थान A से B जो 60 किमी. दूर स्थित है, की ओर चलना प्रारम्भ करते हैं। P की गति Q की गति से 4 किमी/घंटा कम है। B पर पहुंचने के बाद, Q पुनः A की ओर चलना प्रारंभ कर देता है तथा P से B स्थान से 12 किमी दूरी पर मिलता है। Q की गति बताए।	P and Q start simultaneously from a place A towards B, 60km apart. P’s speed is 4 km/hr less than of Q, after reaching B, Q turns back and meet P at a place 12 km away from B, P’s speed is ?	\N
666	70	2	20 किलो ताजे तरबूज में 96 प्रतिशत पानी है कुछ समय बाद इसमें 95 प्रतिशत पानी रह जाता है। तरबूज का वर्तमान बजन ज्ञात कीजिए।	20 kg fresh watermelon has 96 % water after some time water remain 95 % than find the weight of watermelon now ?	\N
739	71	1	\tयदि व्यंजक x + 2374156×2374158 एक पूर्ण वर्ग है तो x का मान क्या होगा?	If a expression x+2374156×2374158 is a perfect squre, then find the value of x.	\N
820	73	3	किसी सांकेतिक भाषा में "3154" का अर्थ , " meet me on sunday " "538" का अर्थ , " not on sunday " और "861" का अर्थ "why not meet " हो तो इस सांकेतिक भाषा में " 1" के लिए कौनसा शब्द लिखा जाएगा ?	-	\N
821	73	4	यदि किसी सांकेतिक भाषा में " SECRET " को " UIIZOF " लिखा जाता है। तो " FOREIGN " को उसी भाषा में कैसे लिखा जाएगा ?	-	\N
822	73	5	यदि किसी सांकेतिक भाषा में "DIPLOMA" को "FERHQIC" लिखा जाता है। तो "FOREIGN" को उसी भाषा में कैसे लिखा जाएगा ?	-	\N
829	73	4	दो सम बहुभुज ऐसे हैं कि उनकी भुजाओं की संख्या के बीच 2: 3 का अनुपात हे और उनके अंत: कोणों के माप का अनुपात 6: 7 है। प्रत्येक बहुभुज की भुजाओं की संख्या बताइए।	-	\N
823	73	3	निर्देश: निम्नलिखित जानकारी को ध्यानपूर्वक पढ़कर प्रश्नों का उत्तर दीजिएं।\n\nचार विद्यार्थियों के समुहों को तुलना कर विचार करने पर\n\nरीना, बीना, मीना और नीना जो एक पंक्ति में खड़ी है।रीना और बीना बाएँ से क्रमश: छठे ंऔर सातवें स्थान पर खड़ी हैं।मीना और नीना क्रमश: दाएँ से चैथें और पाँचवें स्थान पर खड़ी हैंजब बीना और मीना अपनी स्थान बदल लेती है तो बीना बाएँ से 15 वाँ स्थान पर होगे।\n\n1. वास्तव में नीना का स्थान बाएं से है	-	\N
824	73	2	निर्देश: निम्नलिखित जानकारी को ध्यानपूर्वक पढ़कर प्रश्नों का उत्तर दीजिएं।\n\nचार विद्यार्थियों के समुहों को तुलना कर विचार करने पर\n\nरीना, बीना, मीना और नीना जो एक पंक्ति में खड़ी है।रीना और बीना बाएँ से क्रमश: छठे ंऔर सातवें स्थान पर खड़ी हैं।मीना और नीना क्रमश: दाएँ से चैथें और पाँचवें स्थान पर खड़ी हैंजब बीना और मीना अपनी स्थान बदल लेती है तो बीना बाएँ से 15 वाँ स्थान पर होगे।\n\n2. रीना का स्थान दाएं से है	-	\N
825	73	4	निर्देश: निम्नलिखित जानकारी को ध्यानपूर्वक पढ़कर प्रश्नों का उत्तर दीजिएं।\n\nचार विद्यार्थियों के समुहों को तुलना कर विचार करने पर\n\nरीना, बीना, मीना और नीना जो एक पंक्ति में खड़ी है।रीना और बीना बाएँ से क्रमश: छठे ंऔर सातवें स्थान पर खड़ी हैं।मीना और नीना क्रमश: दाएँ से चैथें और पाँचवें स्थान पर खड़ी हैंजब बीना और मीना अपनी स्थान बदल लेती है तो बीना बाएँ से 15 वाँ स्थान पर होगे।\n\n3. यदि नीना और रीना अपनी जगहें आपस में बदल लें तो जगह बदलने के बाद नीना का स्थान क्या होगा ?	-	\N
474	66	1	यदि A , B से 40 प्रतिशत अधिक है और B , C से 20 प्रतिशत कम है, तो A : C क्या होगा ?	If A exceeds B by 40 % B is less than C by 20 % then A : C is :	\N
826	73	3	निर्देश: निम्नलिखित जानकारी को ध्यानपूर्वक पढ़कर प्रश्नों का उत्तर दीजिएं।\n\nचार विद्यार्थियों के समुहों को तुलना कर विचार करने पर\n\nरीना, बीना, मीना और नीना जो एक पंक्ति में खड़ी है।रीना और बीना बाएँ से क्रमश: छठे ंऔर सातवें स्थान पर खड़ी हैं।मीना और नीना क्रमश: दाएँ से चैथें और पाँचवें स्थान पर खड़ी हैंजब बीना और मीना अपनी स्थान बदल लेती है तो बीना बाएँ से 15 वाँ स्थान पर होगे।\n\n4. बीना और मीना के बीच स्थान बदलने के बाद मीना की स्थान दाएँ से क्या है	-	\N
827	73	1	निर्देश: निम्नलिखित जानकारी को ध्यानपूर्वक पढ़कर प्रश्नों का उत्तर दीजिएं।\n\nचार विद्यार्थियों के समुहों को तुलना कर विचार करने पर\n\nरीना, बीना, मीना और नीना जो एक पंक्ति में खड़ी है।रीना और बीना बाएँ से क्रमश: छठे ंऔर सातवें स्थान पर खड़ी हैं।मीना और नीना क्रमश: दाएँ से चैथें और पाँचवें स्थान पर खड़ी हैंजब बीना और मीना अपनी स्थान बदल लेती है तो बीना बाएँ से 15 वाँ स्थान पर होगे।\n\n5. लड़कियों की एक पंक्ति में कमला बाई ओर से दसवे स्थान पर है और विमला दाई ओर से बारहवें स्थान पर। यदि वे दोनों अपनी जगह आपस में बदल लें, तो कमला की बाई ओर से स्थान सोलहवाँ हो जाएगा, तब विमला का दाई ओर से स्थान कितना सोलहवाँ हो जाएगा ?	-	\N
828	73	3	एक सम बहुभुज के सभी आंतरिक कोणों का योग, उसके सभी बाह्य कोणों के योग का तीन गुना है। तदनुसार, उस बहुभुज की भुजाएँ कितनी हैं?	-	\N
790	73	2	भारत का प्रथम ODF राज्य कौन सा है ?	 	\N
797	73	2	यदि व्यंजक x + 374156 × 374158 एक पूर्ण वर्ग है तो x का मान क्या होगा?	If a expression x+374156×374158 is a perfect sqr, then find the value of x.	\N
804	73	2	100 से 200 के बीच संख्याओं 9 ओर 6 दोनों से भाज्य पूर्णाकों की कुल संख्या.	The total number of integers between 100 and 200, which are divisible by both 9 and 6, is.	\N
808	73	1	1/15+1/35+1/63+1/99+1/143 का मान ?	The value of 1/15+1/35+1/63+1/99+1/143 is 	\N
802	73	4	(एक है)	 	\N
449	65	3	दो संख्याओं का ल.स. 1820 तथा म.स. 26 है। यदि एक संख्या 130 है, तो दूसरी संख्या ज्ञात करें।	The LCM of two numbers is 1820 and their HCF is 26. If one number is 130 then the other number is.	\N
944	76	3	A द्वारा किया गया काम B द्वारा किए गए काम का आधा है। C द्वारा किया गया काम A और B द्वारा मिलकर किए गए काम का आधा है। यदि C अकेला काम को 40 दिन में करें तो तीनों मिलकर काम को कितने समय में करेंगे ?	A does half as much work as B. C does half as much work as A and B together. If C alone can finish the work in 40 days, then all together will finish the work in.	\N
755	72	4	हमारा सिर कौन सी कशेरुका पर घूमता हैं ?	-	\N
945	76	3	A,B और C एक काम को 40 दिन में खत्म करते हैं। (A+B) द्वारा काम खत्म करने में लिया गया समय, C द्वारा काम खत्म करने में लिये गये समय से 1/3 कम है। (A+C) द्वारा काम खत्म करने में लिया गया समय, B द्वारा काम खत्म करने में लिये गये समय से 1/4 कम है तो (B+C) उस काम को कितने दिन में खत्म करेंगें ?	A,B and C working together can finish certain piece of work in 40 days. If (A+B) work together then take 1/3 less time than that of C takes alone. If (A+C) work together then they take1/4 less time than that of B takes alone. In how many days (B+C) working together will finish the work.	\N
806	73	4	 7,77,77,777 ÷ 77  का मान 	7,77,77,777÷ 77 equals	\N
946	76	3	B किसी काम को जितने समय में करता है उसके 1/4 समय में A, B का 2/5 काम करता है। C जितने समय में कोई काम करता है उसके 3/5 समय में B,C का 4/3 काम करता है। तीनों मिलकर इस काम को 60 दिन में करते हैं। तो बताओं B इस काम को कितने दिन में करेंग।?	A can finish 2/5 of work done by B in 1/4 of time taken by B. B can finish 4/3 of work done by C in 3/5 of time taken by C. working together they can finish the work in 60 days. In how many days B will finish the work, working alone.	\N
947	76	1	A और B साथ में अलग अलग दिन काम करते हैं और काम को 19 दिन में खत्म करते हैं यदि काम । शुरु करता है, लेकिन काम 19(5/6) दिन में खत्म होता अगर काम B शुरु करता । तो ज्ञात करें की A और B मिलकर काम को कितने दिन में खत्म करेंगे।	A and B working together on alternate days can finish a piece of work in 19 days. If A starts the work, while they take 19(5/6) days if B starts the work. In how many days would A and B together finish the work ?	\N
948	76	1	A और B साथ में अलग अलग दिन काम करते हैं और काम को 17 दिन में खत्म करते हैं यदि काम A शुरु करता है, लेकिन काम 17(2/3) दिन में खत्म होता अगर काम B शुरु करता । जब काम A,B,C साथ में करते तो काम 5 दिन में ख्यत्म हो जाता है। तो ज्ञात करें की B,C मिलकर काम को कितने दिन में खत्म करेंगे। यदि दोनो ंअलग अलग दिन काम करते हैं तथा काम की शुरुआत B करता है।	A and B working together on alternate days can finish a piece of work in 17 days. If A starts the work, while they take 17(2/3) days if B starts the work. When A,B,C work together they do the same work in just 5 days. In how many days would B and C  finish the work  if they work on alternate days and B starts the work?	\N
949	76	2	A किसी काम का 25% काम करता है तथा शेष काम B करता है काम पूरा होने में 20 दिन लगते हैं यदि B 25% काम करे तथा शेष काम A करे तो काम समाप्त होने में 30 दिन लगते हैं। ज्ञात करें कि A तथा B इस काम को अलग अलग कितने समय में करेंगे।	A do 25% of the work and B do rest of the work then the time taken by both the workers is 20 days. If B did 25% of the work and A did the rest then the time taken by both the workers is 30 days. Find the time taken by A and B alone ?	\N
950	76	3	A काम के 7/10 भाग को 15 दिनों में करता है उसके पश्चात् शेष काम वह B की सहायता से 4 दिनों में खत्म करता है। तो A तथा B एक साथ कितने दिनों में काम खत्म करेंगे ?	A does 7/10 part of work in 15 days. After that he completes the remaining work in 4 days with the help of B. In how many days will A and B together do the same work ?	\N
1157	113	1	\tयदि साधारण ब्याज और चक्रवृद्धि ब्याज के 2 साल और 3 साल के अंतर का अनुुपात 4/13 है, तो दर ज्ञात कीजिए।	If the ratio of difference of S.I and C.I for two years and 3 years is 4/13. Find the rate of interest.	\N
473	66	3	यदि (A+B) का 12 % = (A-B) का 24 % हो, तो B का कितने % A के बराबर है ?	12 % of (A+B)  = 24 % (A-B) than Find what % of B is equal to the A. 	\N
207	60	2	उस छोटी से छोटी संख्या के अंकों का योग क्या है, जिसे 16,24,30 तथा 36 से विभाजित करने पर क्रमशः 8,16,22 और 28 शेषफल बचता है और जो 7 से पूर्णतः विभाजित है ?	\tFind the sum of digit of a smallest number which when divided by 16,24,30 and 36 leaves remainder 8,16, 22 and 28 respectively but exactly divisible by 7? 	\N
840	74	4	दिये गये चित्र में QA  तथा  PB  भुजा AB पर लंब है, यदि  AO=9cm ,BO=6cm ,BP=8cm, तो AQ का मान कितना होगा ?	 	284cf210b47fc1b556342a4bb6bb9f88
833	74	1	चित्र में POS एक सीधी रेखा है, तो x का मान होगा।	In a figure, POS is a straight line. Find x?	1094d36e601d09f1a9ecb3fd35afe547
834	74	4	नीचे दिये गये चित्र में, यदि AB || CD , ∠X = ?	 	ba5280fbc16e373e6960d7a41b61224e
1374	117	3	86.5 × 12.1 × 7.2 = ? + 3.2 	86.5 × 12.1 × 7.2 = ? + 3.2 	\N
1375	117	2	0.000326 में से क्या न्यूनतम संख्या घटायी जाये ताकि प्राप्त संख्या पूर्ण वर्ग हो जाये?	What is the least number which should be subtracted from 0.000326, to have perfect SQUARE	\N
1376	117	2	\tयदि * का तात्पर्य पहली संख्याा में दूसरी संख्या का 6 गुना जोड़ना’ हो तो (1*2)*3 का मान	If * means adding 6 times the second number to the first number then (1*2) * 3 equals.	\N
1377	117	3	(A+B) किसी काम को 5 दिन में करते है। यदि A अपनी कार्यक्षमता दुगनी कर लेता है और B अपनी कार्यक्षमता 1/3 कर लेता है, तो काम 3 दिन में पूरा हो जाता है। A इस काम को कितने दिन में पूरा कर पायेगा ?	(A+B) can do a piece of work in 5 days. If A works with twice of his efficiency and B works with 1/3 of his efficiency, then work will be completed in 3 days. In how many days will A do this work alone.	\N
1378	117	1	\tपानी की एक टंकी में 2/5भाग पानी भरा हुआ है। A नल उस टंकी को 10 मिनट में भर सकता है, जबकि B नल उसकों 6 मिनट में खाली कर सकता है। यदि दोनों नल खोल दिए जाए, तो टंकी कितने समय मं पूर्णतः खाली या भरी जा सकती है?	If 2/5  part of the tank in already fill by water. And pipe A can fill the tank is 10 min. while pipe B can empty it in 6 min. If Both the pipe. Open together in what time the tank will be filled or empty ?	\N
1379	117	2	A किसी काम को करने में (A + B) से़ 5(1/3) दिन ज्यादा लेता है। जबकि B इसी काम को करने में (A + B) सेे 8(1/3) दिन ज्यादा लेता है तो B इस काम को कितने दिन में कर सकता है ?	A takes 5(1/3) days more than (A+B) together to complete a work. B takes 8(1/3) days more than (A+B) together to complete a work. In how many days will B alone complete this work.	\N
589	68	4	म.स.प. ज्ञात करो ?\n\n23 × 32×  5 × 74× 22× 35× 52× 73× 23× 53× 72 	Find the HCF of 23 × 32×  5 × 74× 22× 35× 52× 73× 23× 53× 72  ?	\N
417	64	3	बराबर क्षमता के 21 पम्प किसी टेंक को 4 दिन में भरते हैं, टेंक को 3 दिन में भरने के लिए कितने अतिरिक्त पम्पोें की जरूरत होगी?	21 pipes of equal efficiency can fill the tank in 4 days. How many more pipes should be connected in it so that the tank will be filled in 3 day?	\N
561	68	3	एक कपड़े के व्यापारी ने अपने आधे कपड़े 40 प्रतिशत लाभ पर बेचे और शेष के आधे 40 प्रतिशत हानि पर और शेष बचे कपड़े लागत मूल्य पर बेच दिए। सम्पूर्ण सौदे में उसे कुल कितना लाभ या हानि हुई?	A shopkeeper sold half of the clothes at 40% profit and half of the remaining at 40% loss and remaining clothes sold at C.P. than find his total percentage profit or loss?	\N
563	68	2	एक आदमी किसी वस्तु को 25% लाभ पर बेचता है। अगर उसने इसे 900 रू॰ कम में खरीदा होता और 900 रू॰ कम में बेचा होता तो उसे 5% का अतिरिक्त लाभ होता। वस्तु का क्रय मू॰ ज्ञात करो।	An article was sold at 25% profit. Had it purchased at Rs 900 less and sold at Rs 900 less there would have been profit of 5% more. Find  initial C.P. of article	\N
564	68	1	एक बेईमान दुकानदार अपनी वस्तुओं को 10% लाभ पर बेचने की बात करता है परन्तु वह 20% कम वजन तोलता है। लाभ% ज्ञात करों।	A dishonest dealer commit to sells his goods at 10% profit but uses 20% less weight than find his profit %.	\N
416	64	2	किसी टैंक में 8 नल लगाए गए है कुछ भरने वाले है और कुछ निकासी वाले है। प्रत्येक भरने वाला नल टैंक को 8 घंटे में भर सकता है और प्रत्येक निकासी वाला नल टैंक को 6 घंटे में खाली कर सकता है। अगर टैंक भरा होने के बाद सारे नलों को खोल दे तो टंकी 6 घंटे में खाली हो जाती है तो भरने वाले नलो की संख्या ज्ञात करो।	A tank is connected with 8 pipes some of them are inlet pipes and rest are outlet pipes. Each of the inlet pipe can fill the tank in 8 hrs. individually while each outlet pipe can empty the tank in 6 hrs individually if all the pipes are kept open when the tank is full, it will take 6 hrs for the tank to empty. How many of these are inlet pipes ?	\N
565	68	1	एक बेईमान दुकानदार अपनी वस्तुओं को x% हानि पर बेचने का बादा करता है परन्तु वह 20% कम वजन तोलता है और 20% का लाभ कमाता है। x का मान ज्ञात करो ?	A dishonest dealer commit to sells his goods at x% loss but uses 20% less weight, he gain 20% profit than find x?	\N
667	70	2	अगर इनकम टैक्स 17% बढ़ जाए तो शुद्ध इनकम 3% कम हो जाती हैं। इनकम टैक्स की दर ज्ञात करो।	If income tax is increased by 17 % than the net income decreased by 3 % than find rate of Income tax ?	\N
673	70	2	A तथा B एक ही समय एक ही स्थान से किसी गन्तव्य के लिए रवाना हुए। A की चाल के 4/5 से चलते हुए B गन्तव्य पर A के 1 घंटे 45 मिनट बाद पहुँचा। B गन्तव्य पर पहुँचने में कितना समय लिया ?	A and B started at the same time from the same place for a certain destination. B walking at 4/5 of A’s speed reached the destination 1 hour 45 minutes after A. B reached the destination in.	\N
446	65	1	किसी धनात्मक संख्या का इक्कीस गुणा ,उसके वर्ग से 100 कम है। उस धनात्मक संख्या का मान होगा ?	Twenty one times of a positive number is less than its ² by 100. The value of the positive number is -	\N
421	65	4	20 लड़को की 15 दिनों की मजदूरी रू 9000 हैं। यदि एक पुरूष की मजदूरी एक लड़के की मजदूरी का 1.5 गुणा हो, तो कितने पुरूष 30 दिनों में रू 13500 अर्जित करेंगे?	Wages of 20 boys for 15 days is Rs 9000. If the daily wage of a man is one and half times that of a boys, how many men must work for 30 days to earn Rs 13500?	\N
566	68	1	एक दुकानदार 5 वस्तुओं की खरीद पर 3 वस्तुएँ फ्री देता है वह 20% बट्टा और देता है और फिर भी 25% लाभ कमाता है क्र॰मू॰ और अंकित मू॰ का अनुपात ज्ञात करो।	A shopkeeper gives discount of 20% and gives 3 article free on purchasing 5 articles. If he earns profit of 25% then find ratio of C.P and M.P.	\N
567	68	1	एक दुकानदार 12 वस्तुओं की खरीद पर 4 वस्तुएँ फ्री देता है और 20% अतिरिक्त बट्टा देता है और फिर भी 20% लाभ कमाता है। क्र॰मू॰ और अंकित मू॰ का अनुपात ज्ञात करो।	A shopkeeper gives discount of 20% and gives 4 article free on purchasing 12 article. If he earns profit of 20% then find ratio of C.P. to M.P.	\N
568	68	1	दो खिलौने प्रति 504 रू में बेचे जाते हैं। एक खिलौने पर विक्रेता को 12% का अभिलाभ होता है और दूसरे पर 4% की हानि होती है। दोनों खिलौने के बेचने पर कितने प्रतिशत लाभ या हानि होगी ?	Two articles were sold for Rs 504 each. First was sold at 12% profit and second at 4% loss. Find over all profit or loss.	\N
569	68	3	किसी व्यक्ति ने एक घोड़ा 15 प्रतिशत के लाभ से बेचा। यदि उसने इसे 25 प्रतिशत कम में खरीदा होता तथा 60 रू॰ कम में बेचा होता, तो उसे 32 प्रतिशत का लाभ होता। घोड़े का क्रय मूल्य था?	A horse was sold at 15% profit. Had it been purchased at 25% less and sold at Rs 60 less there would have been profit of 32%. Find C.P. of horse.	\N
592	68	4	एक मद 7130 रु में बेचा जाता है जिससे 15 प्रतिशत लाभ होता है। इस मद का लागत मूल्य (रु में) क्या है ? 	An item is sold for Rs 7130 making a 15% profit. What is the cost price (in Rs) of this item? 	\N
570	68	1	एक दुकानदार ने अपना माल सूची मूल्य से आधे मूल्य पर बेचा ओर इस प्रकार उसे 20 प्रतिशत की हानि हुई। उसने यदि सूची मूल्य पर बेचा होता तो अभिलाभ का प्रतिशत कितना होता ??	A shopkeeper sell his goods at half of its marked price and he incurred a loss of 20%. Had he been sold his article at marked price than find his profit %	\N
571	68	3	एक फल विक्रेता एक रूपये में दो के हिसाब से नींबू खरीदता है तथा तीन रूपये में 5 के हिसाब से उन्हें बेचता है। उसका लाभ प्रतिशत है-	A person bought lemon at rate of 2 for Rs.1 and sold them at the rate of 5 for Rs 3.Find the profit %	\N
572	68	2	1 रू॰ में 4 वस्तुएं बेच कर एक आदमी को 4 प्रतिशत हानि होती है। यदि उसने एक रूपए में तीन वस्तुएं बेची होती तो उसे लाभ होता:	After selling 4 articles for Rs 1 a person incurred loss of 4%  if he had sold 3 article for Rs 1 his profit would be ?	\N
573	68	4	एक दूग्ध विक्रेता ने लागत मूल्य पर दूध बेचकर 25 प्रतिशत का लाभ कमाने के लिए दूध में पानी मिला दिया। पानी और दूध का क्रमशः अनुपात कितना है ?	In what ratio milk and water to be mixed so that by selling the mixture at cost price and gain 25%.	\N
574	68	3	सौरभ ने 30 किग्रा चावल 10 रू प्रति किगा्र की दर पर खरीदे और 35 किग्रा 11 रू प्रति किग्रा की दर पर। उसने उन दोनों को मिला दिया। तब उसे मिश्रण को 30 प्रतिशत लाभ प्राप्त करने के लिए कितने रूपए प्रति किग्रा. की दर पर बेचना चाहिए ?	Saurabh purchased 30kg rice at the rate of Rs.10/kg & 35kg at Rs.11/kg. He mixed both the rice then find in what price should he sell the rice per kg to get a profit of 30%?	\N
477	66	3	व्यंजक xy²  में, दोनों चरों x तथा y का मान 20 प्रतिशत कम हो जाता है, तो इसके कारण व्यंजक का मान कितना प्रतिशत कम हो जायेगा ?	In the expression xy² , the values of both variables x and y are decreased by 20%. By this, the value of the expression is decreased by :	\N
575	68	1	एक व्यक्ति ने दो बकरियाँ 1008 रू॰ में खरीदीं। इनमें से एक को उसने 20 प्रतिशत की हानि पर तथा दूसरी को 44 प्रतिशत के लाभ पर बेच दिया। यदि दोनों बकरियाँ एक ही मूल्य पर बेची गई हों, तो जो बकरी हानि पर बेची गई उसका क्रय मूल्य था-	A man bought 2 goats in Rs.1008. He sell one goat at 20% loss & second goat at 44% profit. If both goat are sell at same price then find the cost price of the goat who sell on loss?	\N
1158	113	1	MOHAN ने 15000 रू. चक्रवृद्धि ब्याज पर 5ः प्रति वर्ष की दर पर 2 वर्ष के लिए लगाए। 2 वर्ष के अंत में, उसे क्या मिश्रधन मिलेगा?	Mohan invested an amount of Rs. 15000 at compound interest rate 5% p.a. for a period of 2 years. What amount will receive at the end of 2 years.	\N
742	72	2	वृक्षों की आयु ज्ञात करने का विज्ञान क्या कहलाता है ?	-	\N
758	72	2	सबसे छोटे आकार की W.B.C कौन सी हैं ?	-	\N
747	72	2	क्रोमोसोम की खोज किसके द्वारा की गई?	-	\N
576	68	3	एक दुकानदार प्रति दिन 25 लीटर दूध 12 रू॰ प्रति लीटर की दर से खरीदता हें उसमें वह 5 लीटर पानी मिलाकर 10.40 रू॰ प्रति लीटर की दर से बेच देता है। तद्नुसार उसके लाभ का प्रतिशत कितना है?	A milkman bought 25ltr milk per day at Rs.12/ltr. He add 5ltr water on it & sell at Rs.10.40/ltr. Find his profit%?	\N
577	68	1	एक कलम का विक्रय मूल्य 56 रू. है। यदि उसका क्रय मूल्य तथा: लाभ का संख्यात्मक मान समान हो तो क्रय मूल्य क्या है?	S.P. of a pen is Rs 56. If value of its C.P. and profit % is equal then find its C.P.	\N
578	68	1	किसी वस्तु के क्रयमूल्य और अंकित मूल्य का अनुपात 2: 3 है और % लाभ तथा % बट्टे का अनुपात 3: 2 है। % बट्टा क्या है?	The ratio of cost price and the marked price of an article is 2 : 3 and ratio of percentage profit and percentage discount is 3 : 2. What is the discount percentage .	\N
579	68	3	एक फल विक्रेता को एक निश्चित मूल्य पर आम बेचने पर 25 प्रतिशत का लाभ होता है। यदि वह प्रत्येक आम पर 1 रूपय अधिक वसूले तो उसे 50 प्रतिशत का लाभ होगा। प्रारंभ में, आम की कीमत कितनी भी ?	By selling mangoes a fruit seller get 25% profit on it. If he takes Rs.1 more on per mango then he will get 50% profit.Find the C.P of the mangoes?	\N
580	68	4	सात विद्यार्थीयों का वजन क्रमशः 54kg, 78kg, 43kg, 82kg, 67kg, 42kg, और 75kg है तो सभी विद्यार्थीयों का औसत क्या है ? 	The body weight of seven students of a class is  recorded as 54 kg, 78kg, 43kg, 82kg, 67kg, 42kg, and 75kg. what is the average body weight of all the seven students ?	\N
593	68	2	एक दुकानदार किसी वस्तु को विक्रयमूल्य पर 6(2/3) प्रतिशत लाभ पर बेचता है। वास्तविक लाभ प्रतिशत ज्ञात कीजिए? 	A shopkeeper sells his goods at 6(2/3) % profit on selling price. Find actual profit %? 	\N
581	68	1	एक वस्तु को किसी निश्चित मूल्य पर बेचा जाता है। यदि उसे पूर्व विक्री मूल्य से आधे पर बेचा जाए तो 25 1ध्2ः की हानि होती है। वस्तु को पूर्व बिक्री मूल्य पर बेचने के बाद लाभ प्रतिशत क्या होगा ?	A product is sold at a certain price. If the S.P become half then the previous than there is a loss of 25 1/2%. Find the percentage profit if article sold at initial SP.	\N
582	68	3	एक बेईमान विक्रेता अपना सामान लागत मूल्य पर बेचने का दावा करता है लेकिन एक किलोग्राम वजन के बदले में 875 ग्राम के वजन (बाट) का इस्तेमाल करता है। उसका लाभ प्रतिशत  कितना होगा?	A shopkeeper sells his goods at C.P. but uses 875 gm weight instead of 1kg. find his profit %	\N
583	68	1	तीन वस्तुओं A,B और C की विक्रय मूल का अनुपात 8: 9: 5 है और उनके लाभ का अनुपात 8: 7: 14 है अगर । को 14.8% लाभ होता है। और Bकी लागत मूल्य 400 रू. है तोे कुल % लाभ कितना होगा?	The ratio of selling price of 3 articles A,B,C is 8 : 9 : 5 and ratio of their profits is 8 : 7 : 14. If profit % of A is 14.28% and CP of B is Rs 400. Find overall%	\N
54	56	2	2 और 3 के बीच अपरिमेय संख्या होगी -	The irrational number between 2 and 3 is -	\N
55	56	3	दो संख्याएं जब 17 से विभाजित की जाती हैं, तो क्रमशः 13 और 11 शेष बचता है। यदि उन संख्याओं के योग को 17 से विभाजित किया जाये , तो शेष क्या बचेगा?	Two numbers, when divided by 17, leave remainders 13 and 11 respectively. If the sum of those two numbers is divided by 17, the remainder will be.	\N
56	56	1		The value of 1/15+1/35+1/63+1/99+1/143 is 	\N
57	56	1	60 के गुनखण्डों की संख्या होगी।	Find the number of factor of 60.	\N
58	56	1	यदि 133!, 7ⁿ से पूर्णतः विभाजित है तो n का अधिकतम मान होगा?	If 133! is divisible by 7ⁿ then find the maximum value of n.	\N
59	56	2	 	 	63f8b1c4b5856abea4634d707b585dbd
584	68	3	एक कम्पनी अपने द्वारा उत्पादित वस्तुओं की सूची मूल्य पर 20% छूट देती है तथा 25% लाभ कमाती है। बाद मेें कम्पनी उत्पादन लागत को 10% बढ़ा देती है तथा नया सूची मूल्य जारी करती है जो पूर्व सूची मूल्य से 25% अधिक है यदि कम्पनी अभी भी पहले जितना ही दूट देती तो अब बढ़े हुये उत्पादन लागत पर उसका % क्या है?	A company offers 20% discount and earns profit of 25%. Further it increases production cost by 10% and issues new price list which is 25% more than the previous one. If company offers same discount as earlier then what will be its profit % at increased production cost.	\N
752	72	4	कुछ पुरुषों में गर्दन में उभरा हुआ भाग दिखता है, उसे क्या कहते हैं ?	-	\N
437	65	4	यदि A का 20 प्रतिशत = B का 30 प्रतिशत = C का 1/6  है, तो A:B:C = ?	If 20 % of A =30% of B =  1/6   of C, then A : B : C is:	\N
439	65	3	40.83 × 1.02  × 1.2 = ?	40.83 × 1.02  × 1.2 = ?	\N
478	66	1	एक गाँव की वर्तमान जनसंख्या 67600 है और यह 4 प्रतिशत की दर से प्रतिवर्ष बढ़ रही है। तो दो वर्ष पहले गाँव की जनसंख्या क्या थी ?	Present population of a village is 67600, it has been increasing annually at the rate of 4% what was the population  of the village two years ago ?	\N
585	68	1	12 वस्तुओं का कृय मूल्य 9 वस्तुओं के विकृय मूल्य के समान है, तथा 8 वस्तुओं का लाभ 10 वस्तुओं के छूट के समान है। तो छूट प्रतिशत ज्ञात करो ?	C.P. of 12 articles is equal to S.P. of 9 articles , profit on 8 articles is equal to discount on 10 articles. Find discount percentage ?	\N
586	68	2	किसी वस्तु का अंकित मूल्य 160 रु है। एक दुकानदार उस पर 25 की छूट देता है उसके बाद भी वह 12 दर्जन वस्तु पर 1 दर्जन वस्तु मुफत भी देता है। तो बताइए की उसे अपनी वस्तु का विक्रय मूल्य कम से कम कितना रखना होगा कि उसे कोई हानि न हो ?	M.P. of an article is 160Rs. the dealer first gave discount of 25%, apart from this on selling every 12 dozen of article he gives 1 dozen of article free of cost, what should be minimum S.P. per article,so that dealer doesn’t suffer any loss ?	\N
587	68	2	एक दुकानदार एक मोबाइल पर क्रयमूल्य से 23 प्रतिशत अधिक लेता है। यदि एक ग्राहक एक मोबाइल पर 7011 रु देता है तो उसका क्रय मूल्य कितना है ?	The owner of a cell phone charges his customer 23 % more than the cost price. If a customer paid Rs.7011 for a cell phone, then what was the cost price of the cell phone?	\N
590	68	1	यदि n और p दोनों विषम संख्याऐं हैं। निम्न में से कौन सम संख्या होगी ?	If n and p are both odd numbers, which of the following is an even number ?	\N
591	68	3	1785 रु में 27.5 प्रतिशत के लाभ पर बेची गयी किसी वस्तु का क्रय मूल्य ज्ञात कीजिए।	Find the cost price of article which is sold at Rs 1785 at a profit of 27.5%. 	\N
103	57	1		0.15, 0.3, ?, 1.2, 2.4	\N
104	57	3		127, 131, 139, ?, 151, 157, 163, 167	\N
105	57	1		120, 440, 960, 1680, ?	\N
106	57	3		0, 6, 24, 60, ?, 210	\N
594	68	3	एक वस्तु को 18450 रु में बेचने पर एक व्यक्ति को 50 प्रतिशत की हानि होती है। 50 प्रतिशत का लाभ प्राप्त करने के लिए उसे उस वस्तु को किस कीमत (रु में) पर बेचना चाहिए ? 	While selling an article for Rs. 18450, a person suffered a loss of 50%. At what price he should have sold the article (in Rs.) to earn a profit of 50%? 	\N
595	68	4	एक वस्तु को बेचने पर उसके क्रय मूल्य का 170 प्रतिशत लाभ होता है। यदि क्रय मूल्य में 20 प्रतिशत की वृद्धि होती है लेकिन विक्रय मूल्य समान रहता है, तो नया लाभ प्रतिशत कितना है ? 	For an article the profit is 170% of the cost price.If the cost price increases by 20% but the selling price remains same, then what is the new profit per cent? 	\N
596	68	1	एक व्यापारी एक वस्तु को 20 प्रतिशत के लाभ पर बेचता है। यदि वह उस वस्तु को 60 प्रतिशत कम दाम पर खरीदता है तथा 90 रु कम पर बेचता है, तो उसे 50 प्रतिशत लाभ होता है। क्रय मूल्य का मान (रु में) कितना है ?	A trader sold an article at profit of 20%. Had he bought that article at 60% less price and sold it at Rs. 90 less, he would have gained 50%. What is the value (in Rs.) of cost price? 	\N
466	63	2	यदि किसी संख्या को उस के 14(2/7) % से जोड़ने पर 5648 प्राप्त होता है। तो संख्या ज्ञात करे ?	If 14(2/7) % of a number is added with itself then result becomes 5648. Find the original number.	\N
597	68	2	यदि एक वस्तु को X रु में बेचते है तो हानि प्रतिशत L% है। यदि इस वस्तु को Y रु में बेचा जाए तो प्रतिशत लाभ P% है। वस्तु का क्रय मूल्य ज्ञात करो।	When an article is sold for Rs. X, loss percentage is equal to L%. However, when the same article is sold for Rs.Y, profit percentage is equal to P% .what is the CP of that article ? 	\N
465	65	3	यदि किसी संख्या में 35 जोड़ा जाऐ, तो वह संख्या अपने आप का 183(1/3)% हो जाती है। संख्या ज्ञात करों ?	If 35 is added in a number then result becomes 183(1/3)% of  number. Find the number .	\N
467	66	3	यदि किसी संख्याा को उस के 5(5/9) % से जोड़ने पर 874 प्राप्त होता है। तो संख्या ज्ञात करे ?	If 5(5/9) % of a number is added with itself then result becomes 874. Find the original number.	\N
468	66	1	यदि किसी संख्या में 45 जोड़ा जाऐ, तो वह संख्या अपने आप का 183(1/3) % हो जाती है। संख्या ज्ञात करों ?	If 45 is added in a number then result becomes 183(1/3) % of  number. Find the number .	\N
470	66	2	यदि P का P प्रतिशत, 64 है, तो P किसके बराबर है?	If  P%  of  P  is  64 than P is equal to ?	\N
476	66	4	160 के 15 प्रतिशत में कितना जोड़ा जाए कि योग 240 के 25 प्रतिशत के बराबर हो ?	What is to be added to 15% of 160 so that the sum may be equal to 25% of 240 ?	\N
598	68	2	वाहनों में से प्रत्येक को 1897 रु में बेचा गया। यदि एक वाहन को 42.84 प्रतिशत लाभ और दूसरे को 6.25 प्रतिशत हानि में बेचा गया तो कुल लाभ/ हानि प्रतिशत ज्ञात कीजिये ?	Two vehicles are sold for Rs.1897 each. One is sold at a profit of 42.84% and another at a loss of 6.25%. What is the net profit/loss %? 	\N
599	68	4	एक दुकानदार ने प्रत्येक रु 9471 के दो वस्तु बेचे। एक पर उसे 23 प्रतिशत लाभ और दूसरे पर उसे 23 प्रतिशत की हानि हुई। कुल प्रतिशत लाभ या हानि ज्ञात करें ?	A shopkeeper sold two articles for Rs.9471 each. On one, he gained 23% and on the other, he lost 23%. What is the overall percentage gain or loss? 	\N
600	68	3	एक घर तथा एक दुकान, प्रत्येक को 2 लाख में बेचा गया। मकान पर 10 प्रतिशत की हानि हुई तथा दुकान पर 10 प्रतिशत का लाभ हुआ, तो पूरे सौदे का परिणाम क्या रहा ?	A house and a shop were sold for Rs.2 lacs each ,in this transaction ,the house sale resulted into 10% loss whereas the shop sale into 10% profit. The entire transaction resulted in? 	\N
601	68	3	श्रीमान A ने पिछले वर्ष दो पेंटिेग खरीदी। इस वर्ष उन्होंने प्रत्येक को 20000रु में बेच दिया एक पेंटिेग पर उन्हें 25 प्रतिशत का लाभ तथा दूसरे पेंटिेग पर उन्हें 25 प्रतिशत की हानि हुई। तो कुल लाभ/हानि क्या होगा ?	Last year Mr. A bought two paintings. This year he sold them for Rs.20,000 each. on one, he made a 25% profit and on the other he had a 25% loss.then his net profit/loss %? 	\N
602	68	1	एक व्यक्ति दो वस्तुओं में से प्रत्येक को 2695 रु में बेचा। उसने पहले वस्तु को 18.75 प्रतिशत लाभ पर बेचा। ज्ञात कीजिये उसे दूसरे वस्तु को कितने प्रतिशत हानि पर बेचना पड़ेगा यदि कुल लेनदेन में न तो कोई लाभ और न ही हानि हो ?	A man sells two articles for Rs.2695 each. He sells first article at 18.75% profit .at what loss % he would have sell second article. If there is neither profit nor loss in whole transaction? 	\N
743	72	3	PPLU क्या है -	-	\N
107	57	4		4, 3, 2.5, 2.25, ?	\N
108	57	1		√361 × √289=? 	\N
109	57	2		18√(?)+568=2500 × 2/5	\N
993	78	1	\tकितने समय में 8100 रू. पर 3% वार्षिक की दर से आय वही होगी, जितनी 225 रू. पर 4 वर्ष में 3% वार्षिक की दर से होती है।	In what time will Rs. 8100 produce the same income at 3% as Rs. 225 in 4 years at 3%.	\N
513	67	1	एक पाइप किसी टैंक को भरने में दूसरे पाइप की अपेक्षा तीन गुना तेजी से भरता है। यदि दोनों पाइप एक साथ किसी टैंक को 20 मिनट में भरते है, तो धीमी गति से भरने वाला पाइप टैंक को अकेला कितने समय में भरेगा।	One pipe can fill a tank three times as fast as another pipe. If together the two pipes can fill the tank in 20 minutes, the slower pipe alone will be able to fill the tank in ?	\N
514	67	2	कक्षा A तथा B में कुल छात्रों की संख्या 110 है। तथा कक्षा A में कक्षा B से 10 छात्र अधिक है। यदि कक्षा B के छात्रों के औसत अंक कक्षा A के छात्रों के औसत अंक से 20% अधिक हैं। तो कक्षा A के औसत अंक ज्ञात कीजिए? (यदि कक्षा A तथा B के छात्रों का कुल अंक 72 है तो )	Total number of students in class A and B is 110. No. of students in class A is 10 more than B. If average score of class B is 20 % more than A than find average of class A ?(overall score is 72 of class A and B )	\N
515	67	5	सबसे छोटा सम पूर्णांक ?	Smallest even integer is ?	\N
512	63	3	एक संख्या पहले 40 प्रतिशत कम की जाती है। फिर इस कम की हुई संख्या में 40 प्रतिशत वृद्धि की जाती है। परिणामी संख्या मूल संख्या से 20 कम है, तो मूल संख्या है-	If a number is first decreased by 40 % and than it is increased by 40% and the number is reduced by 20 than find the actual number is ?	\N
60	56	2	यदि व्यंजक x+2374156×5374158 एक पूर्ण वर्ग है तो x का मान क्या होगा?	If a expression x+2374156×5374158 is a perfect Square , then find the value of x.	\N
61	56	2	एक आदमी ने एक नौकरको इस शर्त  पर नियुक्त किया कि वह उसे 3000 रू. देगा और एक साल बाद वर्दी देगा।उसने 9 महीने काम किया और 2200 रू. और एक वर्दी मिली तो उसकी वर्दी की कीमत क्या है?	A man engaged a servent on the condition that the he would pay him Rs 3000 and one uniform after one year of sevice. He served only for 9 months and got Rs 2200 and a uniform. What is the price of uniform.	\N
62	56	3	63520 में से क्या न्यूनतम संख्या घटायी जाये ताकि प्राप्त संख्या पूर्ण वर्ग बन जाये ?	The least number that must be subtracted from 63520 to make the result a perfect Square  is.	\N
511	66	4	26² + 97²  बराबर है ?	What is 26² + 97² equal to ?	\N
516	67	3	दो संख्याओं का अंतर बड़ी संख्या का 60 प्रतिशत है। यदि छोटी संख्या 40 है, तो बड़ी संख्या ज्ञात करें?	Difference of the two number is 60 % of the bigger number than If the smaller number is 40 than find the bigger number is ?	\N
605	69	2	एक व्यक्ति रु 1900 में 860 वस्तुऐं खरीदता है। कुछ कारणों की वजह से कुल वस्तुओं का 2/11 भाग नष्ट हो जाता है और 66.66 प्रतिशत भाग 18.18 प्रतिशत लाभ पर बेचता है तो बचे हुए भाग को कितने प्रतिशत लाभ या हानि पर बेचे ताकि कुल सौदे में न तो लाभ और न ही हानि हो।	A person buys 860 articles at Rs. 1900 due to some reason 2/11 part of total articles be destroyed , he sold 66.66% of all articles at 18.18% profit. At what profit or loss % he should sell remaining articles, so that finally he will got neither profit nor loss? 	\N
606	69	4	रुपय में एक वस्तु को बेचने पर प्राप्त लाभ उस वस्तु को 370 रु में बेचने पर प्राप्त हानि के बराबर है। यदि विक्रय मूल्य 910 रु है, तो लाभ प्रतिशत क्या है ?	Profit obtained on selling an article for Rs. 540 is equal to the loss incured on selling the article for Rs. 370. If selling price is Rs. 910, then what is the profit per cent? 	\N
869	74	2	\tदूध तथा पानी को किस अनुपात में मिलाया जाये जिससे प्राप्त मिश्रण क्रय मू॰ पर बेचने से 5% प्रतिशत का लाभ हो ?	In what ratio milk and water to be mixed so that by selling the mixture at cost price and gain a profit of 5%	\N
63	56	2	भाजक, भाग-फल का 25 गुना और शेषफल का 5 गुना है। यदि भागफल 16 हो तो भाज्य क्या होगा?	A divisor is 25 times the quotient and 5 times the remainder. The quotient is 16, the dividend is.	\N
64	56	2	एक छात्र से किसी संख्या को 3/2 से गुणा करने के लिए कहा गया। उस छात्र ने 3/2 से विभाजित कर दिया। अतः उसका उत्तर सही उत्तर से 10 कम आया। तद्नुसार वह संख्या क्या थी?	A student was asked to multiply a number by 3/2 but he divided that number by 3/2. His result was  less than the correct answer. The number was.	\N
65	56	2	 	 	73669cb2a0319ab9bd6c53b803e2be54
66	56	4		 	9a23f40d248e0f2f9affd55e2954bcb5
67	56	1		 	e1ddac711947d8503a83a39bd2fffef3
68	56	4		 	70a28cc97b665a884acb7dc6cd0f4e9a
69	56	1	दो संख्याओं का अंतर 3 है और उनके वर्गो का अंतर 39 है। बड़ी संख्याा क्या है?	If the difference of two numbers is 3 and the difference of their Squares is 39, then the larger number is.	\N
70	56	4	दो संख्याओं का योग और गुणनफल क्रमशः 11 और 18 है। उनके व्युत्क्रमों का योग कितना है?	The sum and product of two numbers are 11 and 18 respectively. The sum of their reciprocals is.	\N
71	56	1	एक कक्षा में कुल छात्रों के 3/5 लड़कियाँ और शेष लड़के हैं। यदि लड़कियों के 2/9 भाग और लड़के 1/4 भाग अनुपस्थित हो, तोे कुल छात्रों का कितना भाग उपस्थित हैं?	In a class 3/5 of the students are girls and rest are boys. If 2/9 of the girls and 1/4 of the boys are absent. What part of the total number of students are present.	\N
72	56	2		2, 5, 9, 19, 37, ?	\N
73	56	3		110, 132, 156, ?, 210	\N
74	56	1		12, 21, 23, 32, 34, ?	\N
75	56	4	18, 24, 30 का चतुर्थनुपाती क्या होगा ?	What is the fourth proportional of 18, 24, 30	\N
519	67	4	यदि A का वेतन B से 28(4/7) प्रतिशत कम है, तो B का वेतन A से कितना प्रतिशत अधिक है ?	If  Income of A is 28(4/7) % less than Income of B. than find income of B is what % more than Income of A ?	\N
841	74	4	45 लीटर के एक मिश्रण में दूध और पानी का अनुपात 4: 5 है। हमने 5 लीटर दूध और 10 लीटर पानी मिला दिया, तो अब दूध और पानी का अनुपात क्या होगा ?	The ratio of milk and water in a mixture of 45 lt is 4 : 5. We added 5 lt milk and 10 lt water to the mixture, then find the ratio of milk and water.	\N
835	74	3	दिये गये चित्र में PQ || ST , तो ∠QRS   का मान ज्ञात करें।	 	863c37570415473e4f581c7229a44ef3
842	74	1	25 लीटर के एक मिश्रण में अम्ल और पानी का अनुपात 4: 1 है। उस मिश्रण में 3 लीटर अतिरिक्त पानी मिला दिया जाता है। तद्नुसार अम्ल और पानी का नये मिश्रण में अनुपात कितना हो जाएगा?	The ratio of acid and water in a mixture of 25 ltr is 4 : 1. If 3ltr. Water is added into it, than find the ratio of  acid and water in  new mixture. 	\N
76	56	3		 	8e7f1d622d85fadf7e03dc42119c38e8
77	56	4		 	a13a7d46c4d8ceac69944451b1e26e12
78	56	2		 	12e72368d177957720b4b4d7960cc1ba
79	56	4		 	57672e4544458577f65ac56ff92db3dd
80	56	4		 	7fb5384a0785466b1c13d3f4a6087c5a
81	56	2	इनमें से सबसे बड़ी संख्या ज्ञात कीजिए ?	Which of the following is the largest of all?	\N
137	58	3		 	153e73a623bc8ee8bee52297915aafa4
138	58	1		 	d03b0b9a6695ba41dadef82c1e7621de
139	58	1		 	411219a54e742670bd21de5fdc555833
140	58	3		 	d65610633dd887c487ce0f5d2bfafff3
82	56	2	100 और 200 के बीच सभी संख्यायें ज्ञात करो जो 9 तथा 6 से पूर्णतः विभाजित हो ।	The total number of integers between 100 and 200, which are divisible by both 9 and 6, is	\N
83	56	2		 	bc47a4ad57a4a3d8f0052e26e8f5d70b
148	58	1		What is the value of-  (1+2+3+4+.…+20 )/ 7	\N
177	58	4		1, 1, 2, 3, 5, ?, 13, 21	\N
87	57	4	यदि  x² - 5y²=1232 , x और y के कितने युग्म संभव होंगे।	If x² - 5y²=1232 , how many pairs are possible for (x,y).	\N
89	57	1	1000 में क्या न्यूनतम संख्या जोड़ी जाये ताकि योग 45 से पूर्णतः विभाजित हो जाये ?	The smallest number to be added to 1000, so that 45 divides the sum exactly, is.	\N
91	57	2		When simplified the product        (1-1/3)(1-1/4)(1-1/5)..........(1-1/n)becomes.	\N
92	57	1	100! के अंत में शून्यों की संख्या होगी।	Find the no. of zeros in 100!	\N
93	57	2	यदि एक दो अंकों की संख्या को दोहराकर एक चार अंकों की संख्या बनाई जाती है (जैसे 2525), यह संख्या हमेशा किससे विभाजित होगी ?	If a four digit number is formed by repeating a two digit number two times (e.g. 2525), then that number will be divisible by.	\N
95	57	3	यदि 123!, 12ⁿ से पूर्णतः विभाजित है तो द का अधिकतम मान होगा?	If 123! is divisible by 12ⁿ then find the maximum value of n. 	\N
96	57	1	व्यंजक में शून्यों की संख्या होगी।\n\n1 × 3 × 5 × 7……….× 99	Find the no. of zeros in expression.\n\n1 × 3 × 5 × 7……….× 99 \n\n	\N
97	57	2	जब (77777........194 times) 37 से भाग किया जाये तो शेषफल होगा।	find the remainder when (77777……..194 times) is divided by 37.	\N
98	57	2	किसी दो अंकीय संख्या और अंक पलटने पर बनी नयी संख्या का अंतर सदैव विभाज्य है-	The difference of a number consisting of two digits from the number formed by interchanging the digits is always divisible by.	\N
99	57	4	51 से 100 तक की सभी प्राकृतिक संख्याओं का योग क्या है?	The sum of all the natural numbers from 51 to 100 is.	\N
100	57	4	दो संख्याओं का योग और गुणनफल क्रमशः 11 और 18 है। उनके व्युत्क्रमों का योग कितना है?	The sum and product of two numbers are 11 and 18 respectively. The sum of their reciprocals is.	\N
101	57	1	एक व्यक्ति पांच दिन में कुल 100 अंगूर खाता है।प्रत्येक दिन वह पिछले दिन की अपेक्षा 6 अंगूर अधिक खाता है।ज्ञात कीजिए उसने प्रथम दिन कितने अंगूर खायें?	A man ate 100 grapes in 5 days. Each day, he ate 6 more grapes than those he ate on the earlier day. How many grapes did he eat on the first day.	\N
102	57	4	50 के गुनखण्डों की संख्या होगी।	Find the number of factor of 50.	\N
113	57	4	यदि दो संख्याओं को अलग-अलग 33 से भाग दिया जाये तो क्रमशः 21 और 28 शेष बचते हैं। यदि उन संख्याओं के योग को 33 से भाग दिया जाये तो शेष क्या बचेगा?	When two numbers are separately divided by 33, the remainders are 21 and 28 respectively. If the sum of the two numbers is divided by 33, the remainder will be.\n\n	\N
744	72	3	बैक्टीरिया की कोशिका भित्ती बनी होती है -	-	\N
1159	113	2	राशि 16000 रू. दो वर्ष के लिए चक्रवृद्धि ब्याज पर लगाती है और उसे 17640 रू. मिश्रधन मिलता है। ब्याज की दर क्या होगी ?	Rashi invested Rs. 16000 for two years at compound interest and received an amount of Rs. 17640 on maturity. What is the rate of interest.	\N
114	57	2	किसी संख्या को 56 से भाग देने पर 29 शेष बचता है।उसी संख्या को 8 से भाग देने पर क्या शेष बचेगा?	When a number is divided by 56, the remainder obtained is 29. What will be the remainder when the number is divided by 8.	\N
115	57	2	12899 × 96 × 997 अंतिम दो अंक ज्ञात करों ?	Find last two digit of 12899 × 96 × 997	\N
116	57	3	11² + 12² +..... + 21² = ?	 	\N
117	57	2		 	21fbc1c66ec59e8dfd7b7cac6accb6e4
118	57	4		 	ba84546dcbc9934e50da9c79411fcc7d
119	57	1		 	ab637b6b37df2c346344b972a62a8771
120	57	2		 	6b6adc4867ee43f163a7cdb2753023f3
121	57	4		 	ba41923301a7f82312b5813ac20bc31a
122	57	2		 	cbec282886484cc1acd2db5f466c9250
123	57	1		 	84528abfdfbb76c03cdec6594f10e202
124	57	4		 	382ae5c315612f605b48c2b4fb6b98b0
125	57	2		 	340a89f7002541d077dd9b2e603b0cb9
126	57	2		 	28fa12fbaf7c8a77082b7cb6d9bcc6aa
127	57	4		729 ×864  = ? + 6800 	\N
128	57	4		88% of 370 + 24% of 210 - ? = 118	\N
94	57	2	यदि संख्या 5835x489, 9 से पूर्णतः विभाजित है तो x का मान होगा?	If a number 5835x489 is divisible by 9, then find the value of x.	\N
129	57	4	√400+ √4+ √0.04=∛0.008 + x का मान कितना होगा?	√400+ √4+ √0.04=∛0.008 + x Find the value of x	\N
131	58	2		 	fd082fbe0d799bef8d951f5ffe0edd21
132	58	3		 	88c9c01f6014bbac518aa244dc30e6e0
133	58	1		 	9cc96b02a546ff5ab1ab5c8ace736d2c
134	58	2		 	5d3ee022a955fac2b5f30f2e1baa6f0d
135	58	3		 	3d8cf8a40ff5289948c2cf6202289032
136	58	4		 	5d4cfa69afb919a25e616d65d4b2e83e
151	58	4	सबसे बड़ी तथा सबसे छोटी दो अंको की अभाज्य संख्याओं के अंतर की गणना कीजिये ?	Calculate the difference between the largest and the smallest 2 digit prime number? 	\N
152	58	4	70 तथा 100 के बीच अभाज्य संख्याओं का योग पता करें ?	Find the sum of the prime numbers between 70 and 100.	\N
153	58	4	धनात्मक पूर्णांकों 60 और 100 के बीच कितनी अभाज्य संख्याएं हैं ?	How many prime number are available between positive integers 60 and 100? 	\N
154	58	3	1 से 100 तक की गिनती में अंक 2 दहाई स्थान पर कितनी बार आता है ?	How many times does the number 2 take place in tenth place from 1 to 100? 	\N
155	58	3	दो संख्याओं का योग 437 है और उनका गुणनफल 21982 है। संख्याऐं ज्ञात करें ?	The sum of two numbers is 437 and their product is 21982. Find the numbers. 	\N
156	58	4	दो धनात्मक पूर्णांक संख्याओं का जोड़ 30 है और उनका अंतर 6 है। उनका गुणन पता करें ? 	The sum of two positive integers is 30 and their difference is 6. Find out their multiplication? 	\N
157	58	1	दो संख्याओं का अनुपात 2: 3 है तथा उनका योगफल 210 है, छोटी संख्या ज्ञात करें।	The ratio of two numbers is 2: 3 and their sum is 210, find the smallest number. 	\N
158	58	2	यदि दो अंको का योग 15 है और अंतर 3 है, तो वह अंक होंगे 	If the sum of two digits is 15 and the difference is 3, then those digits will be 	\N
159	58	1	एक दो अंको की संख्या और संख्या के अंकों को परस्पर बदल लेने से प्राप्त संख्या के बीच अंतर 54 है। उस संख्या के दो अंकों के बीच क्या अंतर है ?	The difference between the numbers obtained by interchanging a two digit number and the number is 54. What is the difference between the two digits of that number? 	\N
160	58	3	वह छोटी से छोटी 6 अेकों की संख्या ज्ञात करें जो 18 का गुणज है। 	Find the smallest number of 6 digits in which 18 is a factor 	\N
161	58	4	एक संख्या प्रणाली में 14528 को एक संख्या से विभाजित करने पर सुरेश को भागफल 83 और शेष 3 प्राप्त होता है। भाजक क्या है?	In a number system, by dividing 14528 by one number. Suresh gets the quotient 83 and the remainder 3. What is the divisor? 	\N
162	58	2	सीता 72 से कम सभी विषम प्राकृतिक संख्याओं का योग करना शुरु करती है। उसे परिणाम प्राप्त होता है ?	Sita starts adding to all odd natural numbers less than 72. What will be the result? 	\N
163	58	3	1 से 10 तक की संख्याओं के वर्गों के योगफल की गणना कीजिये?	Calculate the sum of the ²s of numbers from 1 to 10? 	\N
1208	114	4	\tविक्रय मूल्य पर 16.66 प्रतिशत की हानि उसके क्रय मूल्य की कितने प्रतिशत हानि है?	16.66% loss on selling price is what % loss on cost price.	\N
164	58	2	यदि ढाई किलो सब्जी की कीमत 120रु है, तो एक किलोग्राम के तीन चैथाई का मूल्य कितना होगा ?	If the price of 2.5 kg of vegetable is Rs 120, then how much will it cost three-quarters of a kilogram? 	\N
798	73	1	व्यंजक 1+2+3+..+50+49+...3+2+1	Find the sum of 1+2+3+⋯+50+49+⋯+3+2+1	\N
799	73	1	80 के गुणनखंडों की संख्या होगी।	Find the number of factor of 80.	\N
791	73	4	यदि एक तीन अंकों की संख्या को दोहराकर एक छः अंकों की संख्या बनाई जाती है ( जैसे 656656,214214) यह संख्या हमेशा किस से विभाजित होगी?	If a six digit number is formed by repeating a three digit number (e.g. 656656, 214214), then that number will be divisible by.	\N
843	74	1	\tएक बर्तन में दो दवाई A और B का अनुपात 4: 1 है। मिश्रण में से 10 लीटर बाहर निकाल लेते है और उसको 10 लीटर दवाई B के साथ बदल देते है जिससे । और ठ का अनुपात 2: 3 हो जाता है, तोे दवाई A की प्रारंभिक मात्रा ज्ञात करें।	In a vessel two medicine A and B are in the ratio 4 ; 1. 10lt of mixture is taken out and replaced with 10 lt of medicine B and the ratio of A and B thus becomes 2 : 3 Find the initial quantity of medicine A.	\N
844	74	4	एक बर्तन में दूध और पानी का अनुपात 3: 2 है। हमने 25 लीटर मिश्रण निकाला और 15 लीटर पानी डाल दिया तो अब अनुपात 3: 7 हो गया। तोे प्रारंभ में दूध की मात्रा कितनी थी?	The ratio of milk and water in a mixture is 3 : 2, We withdraw 25 lt mix.and added 15 lt water to the mixture, then ratio becomes 3 : 7. Find initial quantity of milk.	\N
845	74	2	सम्पूर्ण पृथ्वी पर भूमि और पानी का अनुपात 1: 2 है। उतरी गोलार्द्ध में ये अनुपात 3: 4 है तो दक्षिणी गोलार्द्ध में कितना होगा?	On the whole surface of earth the ratio of land and water is 1 : 2. The land and water in northern hemisphere is ratio 3 : 4. Then what is the ratio of land and water in southern hemisphere	\N
846	74	1	एक बर्तन में दूध और पानी का अनुपात 5: 3 है। मिश्रण का कितना भाग निकाल के उतना ही पानी डाल दिया जाये जिससे अनुपात 1: 1 हो जाता है। कितना भाग निकाला गया था?	The ratio of milk and water in a mixture is 5 : 3. How much fraction of the mixture must be drawn off and substituted by water so that the ratio of milk and water in the mixture becomes 1 : 1.	\N
847	74	4	एक मिश्रण में 80 प्रतिशत अम्ल है और शेष जल। अम्ल तथा जल का अनुपात 4: 3 करने के लिए मिश्रण का कितना भाग निकाला जाए और जल की उतनी ही मात्रा मिला दी जाए?	80% acid and remaing water  in a mixture , how much part of the mixture must be drawn off and replace by the water so that the ratio of acid and water become 4:3	\N
848	74	3	50 ली॰ दूध में से, 5 ली॰ दूध निकालकर 5 ली॰ पानी मिलाया गया। यही काम 3 बार किया गया। अंत में बर्तन में कितना दूध बना है।	A vessel contains 50 lt of milk, 5ltr. Milk is replaced by 5ltr water and this process is performed 3times, than find the remaining quantity of milk.	\N
165	58	3	दो लगातार सम संख्याओं का गुणनफल 528 है, छोटी संख्या ज्ञात करें।	The product of two consecutive even numbers is 528, find the smallest number. 	\N
166	58	2	दो क्रमागत विषम संख्याओं का गुणनफल 399 है, उनमें से छोटी संख्या ज्ञात करें।	The product of two consecutive odd numbers is 399. Find out the small number of them. 	\N
167	58	2	यदि एक संख्या के 2/3 का 1/4, 100 है, तो वह संख्या क्या है ?	If ¼ of 2/3 of a number is 100, then what is the number? 	\N
168	58	2	दो संख्याओं का योगफल 20 और गुणनफल 91 है। उनके व्युत्क्रमों का योगफल क्या होना चाहिये ?	The sum of two numbers is 20 and the product is 91. What should be the sum of their reciprocal? 	\N
169	58	2	दो अंकों की एक संख्या के अंको का योग 11 है। यदि अंक के स्थान आपस में बदल दिये जाते हैं, तो संख्या 63 कम हो जाती है। संख्या ज्ञात कीजिए।	The sum of the digits of a two digit number is 11. If the digits are interchanged together, then the number decreases by 63. Find out the number. 	\N
745	72	4	कोशिका के अंदर अंतः कोशिकीय परिवहन में कौन सहायता करता है ?	-	\N
746	72	4	पाद्ष कोशिका को स्फीति कौन प्रदान करता है -	-	\N
792	73	1	यदि संख्या 635x489, 9 से पूर्णतः विभाजित है तो x का मान होगा?	If a number 67235x489 is divisible by 9, then find the value of x.	\N
849	74	3	एक बर्तन में 400 लीटर दूध है। पहले हमने 20 लीटर दूध निकाला और उतना ही पानी डाल दिया, फिर 40 लीटर मिश्रण निकाला और उतना ही पानी डाल दिया, फिर 60 लीटर मिश्रण निकाला और उतना ही पानी डाल दिया। तो अब दूध और पानी का अनुपात क्या होगा?	A vessel contains 400 lt of milk. 20 lt of milk taken out from it and replaced by water. Then again from mixture 40 lt are taken out and replaced by water. Then again from mixture 60 lt are taken out and replaced by water. Find the ratio of milk and water in the resultant mixture.	\N
850	74	3	एक बर्तन में 500 लीटर दूध है। हमने 50 लीटर दूध निकाला और उतना ही पानी डाल दिया। अब 100 लीटर मिश्रण निकाला और उतना ही पानी डाल दिया। अब 125 लीटर मिश्रण निकाला ओर उतना ही पानी डाल दिया तो अब दूध और पानी का अनुपात क्या होगा?	A vessel contains 500 lt of milk. 50 lt of milk taken out from it and replaced by water. Then again from mixture 100 lt are taken out and replaced by water. Then again from mixture 125 lt are taken out and replaced by water. Find the ratio of milk and water in the resultant mixture.	\N
851	74	2	एक टैंक शुद्ध दूध से पूरा भरा हुआ है। आधा दूध उसमें से बेच दिया और टैंक को पानी से भर दिया। दुबारा आधा दूध (मिश्रण) को बेच दिया और टैंक को पानी से भर दिया ओर अब उसे तीसरी बार भी आधे दूध को बेच दिया और टैंक को पानी से भर दिया तो अंत में दूध की प्रतिशतता क्या होगाी?	A tank was full of pure milk. Half of milk was sold and then the tank was refilled with water. Again half of milk (mixture) was sold and the tank was refilled with water and now for the third time half of milk was sold and tank was refilled with wate. In the last what will be the percentage of milk.	\N
852	74	2	एक बर्तन में 60 लीटर शुद्ध दूध है। हमने x लीटर दूध निकाल कर उतना ही पानी डाल दिया और इस प्रक्रिया को दो बार और दोहराया तो अब उसमें दूध और पानी का अनुपात 64: 61 है, तो प्रारंभ में दूध की मात्रा कितनी थी ?	60 ltr milk contain in a container If x ltr and replaced it by water If this process repeated two more time then the ratio of m : w in vessels is 64 : 61. Than find How much quantity replaced ?	\N
853	74	3	एक बर्तन में कुछ शुद्ध दूध है। हमने 12 लीटर दूध निकाल कर उतना ही पानी डाल दिया और ये प्रक्रिया तीन बार और दोहराई गई। तो अब उसमें दूध ओर पानी का अनुपात 16: 65 है, तो प्रारंभ में दूध की मात्रा कितनी थी?	A vessel contains some lt of pure milk. 12 lt of milk is replaced by water. This process is repeated three more. Then the ratio of milk and water in the resultant mixture becomes 16 : 65. Find the initial quantity of milk.	\N
854	74	2	\tएक बर्तन में O2 और N2 का मिश्रण है। जिसमें O2की मात्रा कुल मिश्रण का 16% है। हमने मिश्रण की कुछ मात्रा निकालकर उतनी ही N2 मिला दी, यह प्रक्रिया कुल दो बार की। अब उसमें बची हुई O2 की मात्रा, मिश्रण की कुल मात्रा का 9% है। यदि कुल मिश्रण 8 लीटर हो, तो बताइये कि कितनी मात्रा निकाली गई थी?	A vessel contains a mixture of O2 and N2. The quantity of O2 is 16% of total mixture. Some quantity of mixture taken out from it and replaced by N2.This process is repeated once more. Now the quantity of O_2 is 9 % of total mixture. If total quantity of mixture which is taken out.	\N
537	67	4	5808 में किस न्यूनतम स ंख्या से गुणा किया जाये ताकि गुणनफल पूर्ण \n\nवर्ग बन जाये?	By which smallest number should 5808 be multiplied so\n\nthat it becomes a perfect SQUARE	\N
769	72	1	इंडिया पाइंट कहाॅं स्थ्ति है -	-	\N
558	63	2	एक व्यक्ति दो मशीनों में से प्रत्येक को 396 रू॰ में बेचता हैं। एक पर उसे 10 प्रतिशत लाभ और दूसरे पर 10 प्रतिशत हानि होती है। पूरे सौदे में उसका लाभ या हानि है-	A man sell two machines at Rs.396/machine. He got 10% profit on first machine & 10% loss on second machine. Find his profit / loss%?	\N
793	73	2	यदि संख्या 6784329x145, 11 से पूर्णतः विभाजित है तो x का मान होगा?F	If a number 6784329x145 is divisible by 11, then find the value of x.	\N
794	73	1	100! के अंत में शून्यों की संख्या होगी।	Find the no. of zeros in 100!	\N
855	74	1	एक मिश्रधातु में जिंग, काॅपर और टिन का अनुपात क्रमशः 2: 3: 1 है। दूसरी मिश्रधातु में काॅपर, टिन और सीसे का अनुपात 5: 4: 3 है। यदि समान भार वाली इन मिश्रधातुओं को एक साथ पिघलाया जाता है तो एक नई मिश्रधातु बनती है। नए मिश्रधातु में सीसे का प्रति किलों बताएँ।	An alloy contains zinc, copper and tin in the ratio 2 : 3 : 1 and another contains copper, tin and lead in ratio 5 : 4 : 3. If equal weights of both alloys are melted together to form a third alloy, then the weight of lead per kg in the new alloy will be.	\N
856	74	1	\tतीन गिलास जिनके आकार 2 लीटर, 5 लीटर और 9 लीटर है। वे दूध और पानी के मिश्रण से भरे हुये है। जिनमें दूध का प्रतिशत 90%,80% और 70% है। तीनों बर्तनों के मिश्रण को एक नये बर्तन में डाल दिया जाता है। मिश्रण में दूध और पानी का क्या अनुपात होगा ?	Three glasses of capacity 2 lt, 5 lt and 9 lt contain mixture of milk and water with milk concentrations 90%, 80% and 70%  respectively. The contents of three glasses are emptied into a large vessel. Find the ratio of milk and water and water in the resultant mixture.	\N
1059	79	3	संख्या में 20 जोड़ने पर वह संख्या मूल संख्या की 116% हो जाती है तो मूल संख्या ज्ञात कीजिए ?	When a number is increased by 20.It becomes 116% of itself what is the number? 	\N
857	74	4	\tएक बर्तन जिसकी क्षमता 2 लीटर है। जिसमें 25% अल्कोहल है और दूसरा बर्तन जिसकी क्षमता 6 लीटर है में 40% अल्कोहल है। कुल 8 लीटर द्रव को एक 10 लीटर क्षमता वाले बर्तन में डाल दिया जाता है और बर्तन के शेष भाग को पानी से भर दिया जाता है। तो नये मिश्रण में अल्कोहल की सान्द्रता क्या होगी?	A vessel of capacity 2 lt has 25% alcohol and another vessel of capacity 6 lt has 40% alcohol. The total liquid of 8 lt is poured in a vessel of capacity 10 lt and the rest of the vessel is filled with water. What is the concentration of alcohol in new mixture.	\N
858	74	1	\t20 लीटर के एक मिश्रण में स्प्रिट और पानी है, जिसमें 25% स्प्रिट है। एक अन्य 30 लीटर के मिश्रण में स्प्रिट और पानी 3: 7 के अनुपात में है। अगर दोनों को एक नये बर्तन में पलट दिया जाये, तो उस मिश्रण में स्प्रिट की मात्रा क्या होगी?	There is a 20 lt mixture of water and spirit. It consists of 25% spirit. Another mixture of 30 lt consists water and pirit in the ratio 3 : 7. If both are poured into single vessel. Find the final ratio of spirit in the new mixture.	\N
288	61	2	केंद्र सरकार निम्नलिखित में से कौन सा शुल्क लेती है और एकत्र करती है ?	fuel is regarded as an energy resource which is-	\N
559	68	2	एक व्यक्ति दो कुर्सियाँ 120 रू प्रति कुर्सी की दर पर बेचता है। तद्नुसार एक कुर्सी पर 25 प्रतिशत लाभ कमाता है, और दूसरी पर 25 प्रतिशत हानि उठाता है। इस प्रकार उस व्यक्ति की कुल हानि कितने रूपए की है ?	A man sell two chairs at Rs.120/chair. He got 25% profit on first chair & 25% loss on second chair. Find his total loss in rs. ?	\N
560	68	3	एक व्यापारी दो बैल, प्रत्येक 8,400 रू॰ पर बेचता है और उन पर न लाभ कमाता है, न हानि सहता हैं तद्नुसार, यदि उसने उनमें से एक को 20 प्रतिशत लाभ पर बेचा है, तो दूसरे को कितनी हानि पर बेचा होगा?	A traders sells two bull rs. 8400 each and he gain no profit no loss if he sold one at 20% profit than find the percentage loss at which he sold the second one.	\N
562	68	1	एक दुकानदार किसी वस्तु को विक्रय मू॰ पर 8(1/3) % लाभ पर बेचता है। वास्तविक लाभ% ज्ञात करों	A person calculates 8(1/3)% profit at S.P. find his profit at C.P.	\N
811	73	3	(1235×1237×1239)/12 = ?	(1235×1237×1239)/12 = ?	\N
859	74	1	एक मिश्र धातु जिसमें जिंक और काॅपर का अनुपात 1: 2 है। एक दूसरी मिश्र धातु समान तत्व की जिसका अनुपात 2: 3 है। दोनों मिश्र धातु को किस अनुपात में मिलाया जाए कि नयी बनी मिश्र धातु 5: 8 के अनुपात में हो?	In an alloy, zinc and copper are in the ratio 1:2. In the second alloy the same elements are in the ratio 2 : 3. In what ratio should these two alloys be mixed to form a new alloy in which the two elements are in ratio 5 : 8.	\N
860	74	4	सोने की दो अंगूठी 18 ग्राम व 12 ग्राम की है। जिनमें सोने की शुद्धता 20 कैरेट व 15 कैरेट है। दोनों को पिघलाकर एक अंगूठी बनाई जाती है तो उसमें सोने की शुद्धता क्या होगी?	There are two rings of Gold weighing 18 gm and 12 gm. In both rings purity of Gold is 20 carat and 15 carat respectively. Both are melted to make a new ring then find the purity of Gold in that ring.	\N
861	74	4	एक मिश्र धातु जिसमें जिंक और काॅपर का अनुपात 2: 5 है। एक दूसरी मिश्र धातु समान तत्व की जिसका अनुपात 7: 3 है। दोनों मिश्र धातु को किस अनुपात में मिलाया जाए कि नयी बनी मिश्र धातु 2: 3 के अनुपात में हो?	In an alloy, zinc and copper are in the ratio 2 : 5. In the second alloy the same elements are in the ratio 7 : 3. In what ratio should these two alloys be mixed to form a new alloy in which the two elements are in ratio 2 : 3.	\N
862	74	4	दो प्रकार के चावलों का मूल्य 31 रू.किग्रा और 22 रू.किग्रा है। इन दोनों चावलों को किस अनुपात में मिलायें कि मिश्रण की कीमत 26रू.किग्रा हो जाये।	Two types of rice of rate Rs. 31kg and Rs. 22kg.Find the ratio of two types of rice to obtain a mixture of rate 26rs./kg	\N
863	74	2	\tसौरभ 25kmph की चाल से 30 मिनट चलता है। 40kmph की चाल से 20 मिनट और चलता है। औसत चाल ज्ञात करो।	sourabh travels for 30min at the speed of 25kmph and than travel for 20min at the speed of 40kmph, than find his average speed	\N
864	74	2	एक दुकानदार 15 किलो धान 29 रूपये प्रति किग्रा. और 25 किलो धान 20 रूपये प्रति किग्रा के भाव से खरीदता है। वह दोनों प्रकार के धानों के मिश्रण को 26 रूपये प्रति किग्रा. के भााव से बेचता है। पूरी प्रक्रिया मे उसका लाभ बताओं।	A shopkeeper buy 15 kg wheat at the rate of 29rs/kg and 25 kg wheat at 20rs/kg , and selling the mixture at 27rs/kg than find his percentage profit in whole process	\N
276	61	2	निम्नलिखित में से किसे महात्मा गांधी का राजनीतिक गुरु माना जाता है ?	\tWhich among of the following is considered as a political guru of Mahatma Gandhi?	\N
865	74	4	एक चिड़ियाघर में कुछ कबूतर और खरगोश है। यदि इनके सिरों को गिना जाये तो कुल 80 है और पैर गिने जाये तो 224 हैं। कितने कबूतर व खरगोश है?	There are pigeons and rabbits in a zoo. If heads are counted then there are 80 total and if legs are couted then there are 224 total. Find the number of pigeon and rabbits.	\N
866	74	2	एक छात्र को प्रत्येक ठीक उतर के लिए +2 अंक मिलते है व प्रत्येक गलत उतर के लिए  - 0.5 अंक मिलते है। परीक्षा में कुल 250 प्रश्न है। अगर छात्र को परीक्षा में 305 अंक मिले हो तो उसने कितने प्रश्नों के गलत उतर दिए।	A student got +2 marks for the correct answer and -0.5 marks got for every wrong answer , if the total questions in the examination was 250 and a student got 305 marks than how many questions he answered wrong.	\N
867	74	1	एक आदमी ने बोतल में से बीयर चुराई जिसमें 50% एल्कोहल है और चुराने के बाद उसने बोतल में दूसरी बीयर मिला दी जिसमें 20%  एल्कोहल है। बोतल में एल्कोहल अब 25% है। ज्ञात करो बोतल का कितना भाग उसने चुराया था ?	A man steal a beer  which contain 50% alchol , and replaced by another beer which contain 20% alchol , so that the strength of alchol remain 25% than find the part of the beer did he steal.	\N
868	74	3	\tएक विस्की की बोतल में 30% अल्कोहल है। हमने उसमें से कुछ हिस्सा निकलकर उसकों 19% अल्कोहल वाली विस्की से बदल दिया। अब उस मिश्रण में 26% अल्कोहल है। तो विस्की का कितना हिस्सा निकाला था?	A bottle of whisky contains 40% alcohol. Some part of this bottle is replaced by another bottle of whisky which contains 19% alcohol. Now this mixture contains 26% alcohol. Which part of bottle has been replaced.	\N
675	70	4	350 रूपये में 100 संतरे खरीदे गये तथा 48 रूपये/दर्जन की दर से बेचे गये, तो प्रतिशत लाभ या हानि ज्ञात करें।	100 oranges bought for rs. 350 and sell at 48 rs./dozen, than find the % profit or loss	\N
711	71	2	एक व्यक्ति 60 किमीप्रतिघंटा की दर पर घुड़ सवारी करता है लेकिन प्रत्येक 50किमी पूरा होने पर घोड़ा बदलने के लिए 3 मिनट रूकता है। 300 किमी की दूरी तय करने मे उसे कितना समय लगेगा ?	A man rides at the rate of 60 km/hr. but stops for 3 mins.to change horses at the end of every 50 km. the time that he will take to cover a distance of 300 km is	\N
870	74	4	\tएक बेईमान दूधिया 10 रू. लीटर से कुछ दूध खरीद कर लाता है और उसमें 5 लीटर पानी मिला देता है। और उसे 12 रू. लीटर से बेचता है तो उसे 30% का लाभ होता है। तो उसने कितना दूध खरीदा था?	A dishonest milkman buy some milk at Rs. 10 lt and mixed 5 lt water to his milk and then sold it Rs. 12 lt and gains 30% profit. Find the quantity of milk that he bought.	\N
871	74	2	\tदूध तथा पानी को किस अनुपात में मिलाया जाये जिससे प्राप्त मिश्रण क्रय मू॰ पर बेचने से 16(2/3)% प्रतिशत का लाभ हो ?	In what ratio milk and water to be mixed so that by selling the mixture at cost price and gain a profit of 16(2/3)%	\N
872	74	1	\tएक बेईमान दूधिया 121 लीटर दूध खरीद कर लाता है। जिसकी कीमत 10 रू. लीटर है। उसमें कितना पानी मिलायें और उसे 11 रू. लीटर में बेचे जिससे कि उसे 20% का लाभ हो?	A dishonest milkman buy 121 lt milk at Rs. 10 lt and mixed some water to his milk and then sold it Rs. 11 lt and gains 20% profit. Find the quantity of water that he mixed.	\N
873	74	1	\tएक कर्मचारी के खर्च और बचत का अनुपात 3: 1 है। अगर उसकी आय 16% बढ़ जाये और उसका खर्च 20% बढ़ जाये तो उसकी बढ़ी हुई या घटी हुई बचत ज्ञात करें?	The expenditure and saving of an employee are in the ratio 3 : 1. His income increases by 16% but at the same time his expenditure also increases by 20%. Find increases or decrease in his savings.	\N
874	74	1	\tएक मिश्रधातु में 80% काॅपर और शेष टिन है। एक दूसरी मिश्रधातु में 85% काॅपर और 12% टिन है। इन दोनों मिश्रधातुओं का अनुपात क्या होना चाहिए कि नये मिश्रण में 15% टिन हो तथा यह भी पता करें कि नये मिश्रण में काॅपर कितने प्रतिशत है?	In an alloy 80% is copper and remaining is tin. In another alloy, copper is 85% and tin is 12%. In what ratio should the two alloys be mixed so that the new mixture must have 15% tin. Also find percentage of copper in new mixture.	\N
875	74	2	\tदो अलग-अलग बर्तनों में दो विभिन्न सान्द्रण के मिश्रण है। A में 6 लीटर और B में 3 लीटर है। हमने दोनों बर्तनों से समान मात्रा निकाली और एक दूसरे में डाल दी। अब इनकी सान्द्रण मात्रा बराबर हो गई। तो कितने लीटर मात्रा निकाली गई थी।	Two vessels A and B contains acid of different concentration. The capacity of A and B are 6 lt and 3 lt respectively. We take out same quantity from both vessels and put into one another, Now the concentration in both vessel are same. Find the taken out quantity	\N
277	61	3	भारत के संविधान में मूल रुप से कितने अनुच्छेद थे ?	\tHow many articles were there originally in Constitution of India?	\N
876	74	4	सोना,पानी सेे 19 गुना भारी है और ताँबा पानी से 9 गुना भारी हैइसको किस अनुपात में मिलाया जाये कि मिश्रण पानी से 15 गुना भारी हो ?	Gold is 19 times heavier than water. Copper is 9 times heavier than water. In which ratio gold and copper should be mixed so that mixture is 15 times heavier than water.	\N
838	74	3	दिये गये चित्र में x का मान ज्ञात करें।	 	960e25b97e6633a5b74f864c05e89674
697	71	2	यदि एक दो अंकों की संख्या को दोहराकर एक चार अंकों की संख्या बनाई जाती है (जैसे 2525), यह संख्या हमेशा किससे विभाजित होगी?	If a four digit number is formed by repeating a two digit number two times (e.g. 2525), then that number will be divisible by.	\N
603	68	3	एक व्यापारी 30 रु प्रति कि.ग्रा की दर से ज्वार खरीदता है। उस अनाज का 20 प्रतिशत व्यर्थ हो जाता है। वह शेष अनाज को इस तरह से बेचने की योजना बनाता है ताकि वह 40 प्रतिशत समय लाभ कमा सके। उसे किस कीमत पर रु प्रति कि.ग्रा अनाज को बेचना चाहिये ?	A trader buys jowar at Rs 30 per kg. 20% of grain gets wasted. He plans to sell the remaining grain so that he makes 40% Overall profit. At what \n\nprice (in Rs per kg) should he sell the grain?\n\n	\N
623	69	2	\tएक पुस्तक उस के मुद्रित मूल्य पर 10% छूट देकर बेची गई और वही पुस्तक मुद्रित मूल्य पर 20% छूट के साथ खरीदी गई थी। तदनुसार, यदि इस पूरे सौदे में लाभ, 10 का रहा हो, तो उस पुस्तक का मुद्रित मूल्य कितना था?	A person bought a book at 20% discount and sold it at 10% discount. In whole transaction he got profit of 10 then find M.P. of book.	\N
604	69	4	एक व्यक्ति रु 58993 में 5781 वस्तुऐं खरीदता है और कुल वस्तुओं का 6/11 भाग 20 प्रतिशत हानि पर बेचता है। बचे हुए भाग को कितने प्रतिशत लाभ पर बेचा जाए ताकि कुल सौदे में न तो लाभ और न ही हानि हो।	A person buys 5781 articles at Rs.58993. if he sells 6/11 part of total articles at 20% loss. At what profit % he has to sell remaining articles so that he will get neither profit nor loss in whole business? 	\N
983	78	1	\t500 रू. पर 6% प्रति वर्ष की दर से 3 मई से 15 जुलाई तक उसी वर्ष में साधारण ब्याज कितना होगा?	Find the simple interest on Rs. 500 at 6% per annum from may 3rd to july 15th in the same year.	\N
1160	113	2	\t1000 रू. पर 40% प्रति वर्ष की दर से त्रैमासिक संयोजित होने पर, 1 वर्ष में चक्रवृृद्धि ब्याज कितना होगा?	Find the compound interest on Rs. 1000 at 40% per annum compounded quarterly for 1 year.	\N
830	73	2		 	aae52b7af500ddeb20885f50f86360db
698	71	4	व्यंजक 8315945 × 8315947 में क्या जोड़ा जाये कि पूर्ण वर्ग बन जाये।	What should be added to 8315945 × 8315947, so that number will be a perfect SQUARE?	\N
327	61	2	व्यंजक 2 × 4 × 16× ........ ×924 के अंत में कितने शून्य होंगे ?	\tHow many zeroes will be there at the end of the expression N= 2 ×4× 6× ……..×924? 	\N
622	69	3	एक टीवी को 20% लाभ पर बेचा जाता है। यदि विक्रय मूल्य पर 20% का लाभ हुआ होता तो लाभ (क्रय मूल्य का 3% + 83 रू.) होता, वस्तु का क्रय मूल्य ज्ञात करें?	A person sells T.V. at 20% profit. If he gets profit equal to 20% S.P. then he would gain (3%of C.P.+83 Rs) more. Find C.P. of T.V.	\N
371	116	3	A काम के 7/10 भाग को 15 दिनों में करता है उसके पश्चात् शेष काम वह B की सहायता से 4 दिनों में खत्म करता है। तो A तथा B एक साथ कितने दिनों में काम खत्म करेंगे ?	A does 7/10  part of work in 15 days. After that he completes the remaining work in 4 days with the help of B. In how many days will A and B together do the same work ?	\N
1042	78	1	संतोष अपनी आय को 8: 5 के अनुपात में क्रमशः खर्च करता है तथा बचाता है। खर्च की जाने वाली राशि का 20% वह भोजन पर तथा 40% भाग वह वस्त्र पर खर्च करता है। बचत की जाने वाली राशि का 60% वह बैंक में जमा कर देता है। उसके द्वारा वस्त्र पर खर्च की गयी राशि, बैंक में जमा की गयी राशि का कितना % है?	Santosh spends and saves his income in the ratio 8 : 5. He spends 20% of his expenditure on food and 40% of his expenditure on clothes. He deposits 60% of his savings in bank. Money spends by him on clothes is what percent of money deposited in bank.	\N
1043	78	3	एक व्यक्ति के वेतन में से 10% कर चुकाने के लिये, शेष का 20% शिक्षा पर तथा शेष का 25% भोजन पर खर्च किया जाता है। इन सभी खर्चों के बाद उसके पास 2700 रू. बचते है। तो उस व्यक्ति का वेतन बताइये।	A person after paying 10% tax, spend 20% of the remaining on education, 25% of the remaining on food. After all this expenditure he is left with Rs. 2700. Find his income.	\N
1161	113	3	किसी धनराशि पर यदि 5% प्रति वर्ष की दर से 3 वर्ष के लिए साधारण ब्याज और चक्रवृद्धि ब्याज का अंतर 61 रू. है, तो वह धनराशि कितनी होगी? 	If the difference between the compound interest and simple interest on a certain sum of money for 3 years at 5% per annum is Rs 61, find the sum.	\N
979	78	3	4 वर्ष की अवधि में देय 5% वार्षिक साधारण ब्याज की दर पर 12900 रूपयें के ऋण के भुगतान के लिए वार्षिक किस्त क्या होगी	Find the annual installment that will discharge a debt of Rs. 12900 due in 4 years at 5% per annum simple interest.	\N
1163	113	2	\t800 रू. 20% प्रति वर्ष की दर से, ब्याज के अर्धिवार्षिक और त्रैमासिक संयोजित होने की स्थितियों में 1 वर्ष के चक्रवृद्धि ब्याजों का अंतर होगा?	The difference of compounds interest on Rs. 800 for 1 year at 20% per annum when compounded half yearly and quarterly is.	\N
372	116	1	सबसे बड़ी ऋणात्मक संख्या है ।	The largest negative number is-	\N
170	58	2	दो अंकों की एक संख्या और उसके दोनों अंको के स्थान आपस में बदलने के बाद प्राप्त संख्या का योग 132 हैं। यदि अंकों का अंतर 4 हो, तो संख्या ज्ञात कीजिए।	The sum of the number obtained after interchanging a two digit number and the number is 132. If the difference of digits is 4, then find the number. 	\N
676	70	1	राम कुछ संतरे 1 रू॰ में 2 की दर से खरीदती है और उतने ही संतरे 1 रू॰ में 3 की दर से खरीदती है। तो 20% का लाभ कमाने के लिए उसे एक दर्जन संतरे बेचना चाहिए ?	Ram bought some orange at rate of 2 for Rs 1 and bought same number of orange at the rate of 3 for Rs 1. At what rate she should sold 1 dozen oranges to gain 20% profit.	\N
649	63	2	30 किमी. की दूरी तय करने में अभय को, समीर से 1 घंटे ज्यादा लगते है। यदि अभय अपनी दुगुनी चाल से चलता है तो समीर से 1 घंटा कम समय लगता है। अभय और समीर की चाल kmph में ज्ञात कीजिए।	In covering distance of 30 km, Abhay takes 1 hours more than Sameer. If Abhay doubled his speed, then he would have take 1 hour less than Sameer. Find the speed of Abhay and Sameer (in km/hr).	\N
1041	78	3	एक अफसर के आय में से 10% घर के किराये का काट लिया जाता है। बची हुई राशि का 15% बच्चों की पढ़ाई पर खर्च करता है और बाकी राशि का 10% वस्त्र पर खर्च किया जाता है। अब उसके पास 1377 रू. बचे हैं। उसकी आय ज्ञात करें।	From the salary of an officer, 10% is deducted as house rent, 15% of the rest he spends on children’s education and 10% of the balance, he spends on clothes. After this expenditure he is left with Rs. 1,377. His salary is.	\N
968	78	1	\tयदि 1586 रू. को तीन भागों में इस प्रकार बाँटा जाए कि 5% प्रति वर्ष की दर से क्रमशः 2,3 और 4 वर्ष के बाद बराबर मिश्रधन मिले, तो तीनों भागों की क्या-क्या धनराशियाँ होगी ?	A sum of Rs. 1586 is divided among three such parts that amount obtained on these parts of money after 2,3 and 4 years, respectively at the rate of 5% per annum remains equal. Find such three parts of the sum.	\N
650	70	3	 रेलगाड़ी एक-समान चाल से चलते हुए 250 मीटर तथा 150 मीटर लम्बाई वाले पुलों को क्रमशः 14 सेकण्ड तथा 18 सेकण्ड में पार करती है। रेलगाड़ी की चाल है:	A train travelling with uniform speed crosses two bridges of lengths 250 m and 150 m in 14 seconds and 10 seconds respectively. The speed of the train is.	\N
651	70	3	\tA और B के बीच की दूरी 750 किमी है। जब वे दोनों एक दूसरे की ओर चलते हैं, तो 10 घंटे में मिलते हैं। यदि A,B के चलने के 3 घंटे 45 मिनट बाद चलना शुरू करे तो दोनों 8 घंटे में मिलेंगे। दोनों की चाल क्या है?	Distance between A and B is 750 km. when they move towards each other they meet in 10 hors. If A starts moving after 3 hours 45 minutes than B then they meet in 8 hours. Find out their speeds.	\N
969	78	1	कुछ साल में मूलधन और मिश्रधन का अनुपात 4: 5 है। तीन साल बाद यह अनुपात 5: 7 हो जाता है। तो ब्याज की दर क्या होगी ?	The ratio of Principal and Amount is 4 : 5 in a certain time. It will become 5 : 7 after 3 years. Find the rate of interest.The ratio of Principal and Amount is 4 : 5 in a certain time. It will become 5 : 7 after 3 years. Find the rate of interest.	\N
970	78	4	कोई धन 2 साल में 756 रू. हो जाता है। 3.5 साल में 873 रू. हो जाता है। तो मूलधन तथा ब्याज की दर क्या होगी ?	A sum of money Amounts to Rs. 756 in 2 years and Rs. 873 in 3.5 years. Find the principal and rate of interest.	\N
971	78	1	\t10 साल बाद साधारण ब्याज को मूलधन में जोड़ दिया जाता है। 1000 रू. 5% की दर से कितने साल में 2000 रू. हो जायेंगे ?	If S.I. is added to the sum after 10 years, then in how much time Rs. 1000 will become Rs. 2000 at 5% per annum.	\N
972	78	2	5 साल बाद साधारण ब्याज को मूलधन में जोड़ दिया जाता है। यदि ब्याज की दर 10% हो तो 1500 रू. कितने साल में 2500 रू. हो जायेगें ?	If simple interest is added to the sum after 5 years.Then how much time it will take Rs. 1500 to amount to Rs. 2500 at 10% per annum.	\N
973	78	2	\tकोई धन 3 साल में 9440 रू. हो जाता है। यदि ब्याज की दर में 25% की दर से वृद्धि कर दी जाये तो उतने ही साल में 9800 रू. हो जायेंगे। तो मूलधन और ब्याज की दर क्या है ?	A sum of money amounts to Rs. 9440 in 3 years. If the rate of interest is increased by 25%, the amount becomes 9800 in same time. Find the principal and rate.	\N
974	78	4	A ने B से 6300 रू. 14% की दर से उधार लिये। A ने उसमें कुछ पैसे और मिलाकर 16% की दर से C को उधार दे दिये। इस तरीके से A का 618 रू. का लाभ हुआ। तो A ने C को कितने रू. उधार दिये थे?	A borrowed Rs. 6300 from B at 14% per annum. He added some extra money to that sum and lent it to C at 16% per annum. If A got a profit of Rs. 618. Find the Amount that given to C.	\N
975	78	4	\t12 साल में साधारण ब्याज 1500 रू. हो जाती है। यदि प्रत्येक 4 साल बाद प्रारम्भिक मूलधन को 10% और 20% क्रमशः बढ़ा दिया जाये तो साधारण ब्याज क्या होगा ?	The simple interest of 12 years is Rs. 1500. What is the S.I.If the initial principal amount is increased by 10% and 20% respectively after every 4 years.	\N
976	78	4	\tएक आदमी कुछ राशि 12% तथा कुछ निश्चित राशि 10% की साधारण ब्याज की दर पर निवेश करता है, एक वर्ष में वह 130 रू. ब्याज पता है, यदि वह राशि की अदला-बदली कर दे तो 4 रू. ब्याज मिलेगा, तो बताएँ उसने 12% पर कितनी राशि निवेश की।	A person invested some amount at the rate of 12% simple interest and a certain amount at the rate of 10% simple interest. He received yearly interest of Rs. 130. But if he had interchanged the amounts invested he would have received Rs. 4 more as interest. How much did he invest at 12%  simple interest.	\N
977	78	1	\t12800 रू. 3 साल के बाद देने है। यदि वो 3 किस्तों में चुकाना चाहता है। तथा पहली किस्त दूसरी किस्त का आधा तथा तीसरी किस्त का एक तिहाई हो तो तीनों किस्त ज्ञात करो। यदि ब्याज दर 10% हो।	Rs. 12800 is payable after 3 years. If it is to be paid in 3 installments each year. First installment is half of the second and one-third of the third installment. Find each installment if rate of interest is 10% per annum.	\N
980	78	3	\tएक आदमी साल के शुरूआत में बैंक में कुछ धन लगातार 3 साल तक जमा करता है। 3 साल की समाप्ति पर 12% साधारण ब्याज की दर से उसके खाते में 23808 रू. जमा हो गया। वो हर साल बैंक में कितनी राशि जमा करता था ?	A man deposits a sum of money in the starting of every year for 3 years. After 3 years Rs. 23808 were deposited in his account. Find the sum of money deposited by the man every year if the rate of interest is 12%	\N
982	78	1	यदि किसी मूलधन परर 4 वर्ष में 4% प्रति वर्ष की दर पर साधारण ब्याज उतने ही मूलधन पर 3 वर्ष में 5% प्रति वर्ष की दर के साधारण ब्याज से 80 रू. अधिक हो, तो मूलधन कितना है?	If the simple interest on a certain sum at 4% per annum for 4 years is Rs. 80 more than the interest on the same sum  for 3 years at 5% per annum, find the sum.	\N
984	78	4	यदि 400 रू. पर साधारण ब्याज 256 रू. हो और ब्याज दर प्रति वर्ष और समय वर्षो में बराबर हो, तो ब्याज दर है।	यदि 400 रू. पर साधारण ब्याज 256 रू. हो और ब्याज दर प्रति वर्ष और समय वर्षो में बराबर हो, तो ब्याज दर है।	\N
700	71	4	7,77,77,777 ÷ 77 = ? 	7,77,77,777 ÷ 77 equals to 	\N
985	78	2	यदि किसी पूँजी पर साधारण ब्याज पूँजी का 4/25 भाग हो और ब्याज की दर प्रति वर्ष और समय वर्षो में बराबर हो, तो ब्याज दर है?	If the simple interest on a certain sum of money is 4/25th of the sum and the rate per cent equal to the number of years, then find the rate of interest per annum.	\N
986	78	3	\tएक धनराशि ज् वर्ष में 10% वार्षिक की दर से 400 रू. हो जाती है। परन्तु 4% वार्षिक ब्याज दर पर उतने ही समय में यह 200 रू. हो जाती है। निवेश का समय क्या है ?	A certain sum is invested for T years. It amounts to Rs. 400 at 10% per annum. But when invested at 4% per annum, it amounts to Rs. 200. Find the time (T).	\N
987	78	3	एक पूँजी पर वार्षिक ब्याज दर पहले 2 वर्ष के लिए 4% अगले 4 वर्ष के लिए 6% और 6 वर्ष के बाद 8% है। यदि 9 वर्ष में, साधारण ब्याज 1120 रू. हो तो पूँजी कितनी हैं ?	The rate of interest on a sum of money is 4% per annum for the first 2 years, 6% per annum for the next 4 years and 8% per annum for the period beyond 6 years. If the simple interest accrued by the sum for a total period of 9 years is Rs. 1120, then the sum is.	\N
988	78	4	कोई धनराशि साधारण ब्याज की किसी वार्षिक दर से 5 वर्ष में दुगुनी हो जाती है तथा किसी अन्य दर से 12 वर्ष में तिगुनी हो जाती है। कम ब्याज की वार्षिक दर क्या है ?	A sum of money at a certain rate per annum of simple interest doubles in 5 years and at a different rate becomes three times in 12 years. The lower rate of interest per annum is.	\N
997	78	3	\tP 5400 रू. को 4 साल के लिए और Q 7200 रू. को 3 साल के लिए निवेश करता है। यदि दोनों का साधारण ब्याज 3456 रू. प्राप्त होती है और दोनों की दर का अनुपात 3: 5 है। तो P ने अपनी राशि को किस दर पर निवेश किया था ?	P and Q invested Rs. 5400 and Rs. 7200 for 4 years and 3 years respectively. It the total simple interest received by both of them is Rs. 3456 and the rate charged by them is in the ratio of 3 : 5. At what rate did P invest the money.	\N
1000	78	2	\tकिसी संख्या के 45% का 15% ,105.3 है , उस संख्या का 24% क्या है?	If 15% of 45% of a no. is 105.3 then what is 24% of no. ?	\N
989	78	2	\tएक आदमी एक बैंक में 10% वार्षिक साधारण ब्याज की दर से 12000 रू. सावधि खाते में जमा करता है लेकिन 3 वर्ष बाद वह अपनी जरूरतों के लिए पूरी धनराशि बैंक स निकाल लेता है जिस पर बैंक कम ब्याज दर प्रदान करता है। यदि वह 5 वर्ष के अंत में मिलने वाली धनराशि से 3320 रू. कम प्राप्त करता है, तो बैंक द्वारा दी जाने वाली ब्याज दर बताए।	A person invests Rs. 12000 as fixed deposit in a bank at the rate of 10%  per annum simple interest. But due to some compulsion needs he has to with draw the entire money after 3 years, for which the bank allowed him a lower rate of interest. If he gets Rs. 3320 less than what he would have got at the end of 5 years, the rate of interest allowed by the bank.	\N
990	78	1	एक आदमी एक बैंक में साधारण ब्याज की दर से 4 वर्ष के लिए 500 रू. और 3 वर्ष के लिए 600 रू. जमा करता है। दोनों पर कुल ब्याज 190 रू. प्राप्त होता है। ब्याज की वार्षिक दर बताए।	A person deposited Rs. 500 for 4 years and Rs. 600 for 3 years at the same rate of simple interest in a bank. Altogether he received Rs. 190 as interest. The rate of simple interest per annum was.	\N
991	78	1	\tA और B ने क्रमशः 2000 रू. तथा 3000 रू. एक ही ब्याज दर पर 2(1/2) वर्ष के लिये कर्ज लिये। यदि B ने A से 125 रू. अधिक ब्याज का भुगतान किया तो, ब्याज की दर ज्ञात करें ?	A and B borrowed Rs. 2000 and Rs. 3000 respectively at the same rate of interest for 21/2 years. If B paid Rs. 125 more interest than A, find the rate of interest.	\N
695	63	4	एक लड़का 4.5 किमी/घंटा की गति से विद्यालय जाता है और 7.5 किमी/घंटा की गति से लौटता है। यदि उसे कुल यात्रा में 144 मिनट लगा तो उसके घर से विद्यालय की दूरी ज्ञात कीजिए ?	A boy goes to school at 4.5 km/hr and return at a speed of 7.5km/hr. If he takes 144 minutes in all. Find the distance from his village to school? 	\N
701	71	3	यदि कोई व्यक्ति अपनी गति 83.33% बढ़ाता है, तो उसे अपने गंतव्य स्थान तक पहुंचने में लिए गए समय में कितनी प्रतिशत की कमी करनी पड़ेगी ?	If a person increases his speed by 83.33%, what will be the percentage reduction in time taken to reach the same destination? 	\N
702	71	2	यदि कोई व्यक्ति अपनी चालको 27.27% कम करता है, तो उसे अपने गंतव्य तक पहुंचने में 66 min लगते हैं। यदि वह अपनी चाल को 20% बढ़ाता है, तो व्यक्ति द्वारा अपने गंतव्य तक पहुंचने में लगने वाले समय मिनट में ज्ञात करें ?	If a person reduces his speed by 27.27%, he takes 66 min to reach his destination. Find the time taken by the person (in min) to reach his destination if he increases his speed by 20%. 	\N
994	78	4	\t625 रू. का एक भाग 5% वार्षिक पर और दूसरा भाग 10%  वार्षिक साधारण ब्याज पर उधार दिया गया। यदि 2 वर्ष का पहले भाग का ब्याज दूसरे भाग के 4 वर्ष के ब्याज के बराबर है, तो दूसरे भाग की धनराशि क्या थी ?	Out of a sum Rs. 625, a part was lent at 5% and the other at 10% simple interest. If the interest on the first part after 2 years is equal to the interest on the second part after 4 years, then find the second sum (in Rs.) 	\N
995	78	4	\tराम ने एक साहूकार से 15% वार्षिक ब्याज की दर से 12000 रू. 13 जनवरी 2003 को उधार लिए और अपने उधार को 8 जून 2003 को वापस कर दिया। राम ने साहूकार को अपना उधार चुकाने के लिए कितना मिश्रधन दिया ?	Ram borrowed a sum of Rs. 12000 at 15% per annum from a money lender on 13th January, 2003 and returned the amount on 8th June, 2003 to clear his debt. What was the amount paid by Ram to the money- lender to clear his debt.	\N
882	75	2	औसत ज्ञात करें ?\n\n1, 2,2 3,3,3 4,4,4,4...........7,7,7,7,7,7,7	Find the average of-\n\n1, 2,2 3,3,3 4,4,4,4...........7,7,7,7,7,7,7	\N
883	75	3	यदि 106 लगातार सम संख्याओं का औसत 231 है, तो पहली संख्या और आखिरी संख्या का योग कितना होगा ?	If the average of 106 consecutive even number is 231.Find the sum of first and last number.	\N
373	116	1	दिया गया है कि, 1 + 2 + 3 +.... + 10 = 55 तो 11 + 12 + 13 + .... + 20 = ? 	Given that, 1 + 2 + 3 + …. + 10  =55 then 11 + 12 + 13 + …. + 20  =? 	\N
996	78	3	\tQ किसी राशि को 2 साल के लिए 6% सालाना की दर पर देता है तथा दूसरी राशि को 2 साल के लिए 7ः सालाना की दर पर देता है। समय पूरा होने के बाद वह ब्याज के रूप में 2478 रू. पाता है। यदि पहली राशि का 1/4 दूसरी राशि के 1/5 के बराबर है। उसके द्वारा दी गई कुल राशि क्या है ?	Q lent out a certain amount at 6% per annum for 2 years and another at 7% per annum for the same time and after the completion of the period. He got Rs. 2478 as interest. If one-fourth of the first amount is equal to the one-fifth of the second amount. Find the total amount he lent out.	\N
1001	78	1	यदि A का A% +  B का B% = (AB) का 2%  है तो बताइये 3A, 2ंB का कितना% है ?	If a % of a+ b% of b =2% of ab then what % of 2a is 3b? 	\N
1209	114	3	\tएक व्यक्ति ने 100 रू में 20 सेब बेचे और 20% का लाभ प्राप्त किया। तो उसने 100 रू में कितने सेब खरीदें ?	On selling 20 apples for Rs 100 a person incurred a profit of 20% .How many apples he bought for Rs 100.	\N
1002	78	1	दो संख्याएँ 2: 3 के अनुपात में है। यदि छोटी संख्या के 20 प्रतिशत में 20 जोड़ा जाता है तो प्राप्त संख्या, बड़ी संख्या के 10 प्रतिशत से 25 अधिक है, तो छोटी संख्या ज्ञात करें?	Two number are in the ratio of 2 : 3, If 20 is added in 20 % of first number than the resultant number become 25 more than to the 10 % of Bigger number. Than find the smaller number is ?	\N
1003	78	2	एक ठेकेदार के पास किसी निश्चित लम्बाई की तार है। 10 प्रतिशत तार चैरी हो गई और बची हुई में से 70 प्रतिशत बेच दी गई और 1080 मीटर तार अभी भी बची हुई है। शुरूआत में तार की लम्बाई कितनी थी.	A contractor has a wire of certain length, 10% wire has been stolen and out of the remaining 70 % he sold. And in the end 1080 mtr wire remain. Than find the length of wire initially ?	\N
1004	78	3	एक परीक्षा में A को B की अपेक्षा 18.75 प्रतिशत अधिक अंक मिले। उसमें B को C की अपेक्षा 20 प्रतिशत कम अंक मिले और C को D की अपेक्षा 20 प्रतिशत अधिक अंक मिले। तद्नुसार, यदि A को 500 में से 342 अंक मिले हों, तो D को कितने अंक मिले हैं ?	In an examination A get 18.75% more than A. and B get 20% less than C. and C get 20% more than D, If A get 342 out of 500. Than find how much marks getting by D ?	\N
1005	78	4	एक मशीन की कीमत हर वर्ष उस वर्ष की आरंभिक कीमत की 20 प्रतिशत की दर पर घटने लगती है। यदि उस मशीन की वर्तमान कीमत 2560 रू॰ हो, तो 3 वर्षो पहले वह कितनी थी ?	The price of a machine is decreased by 20% per year , if the price of machine is 2560rs. Than find what was the price three years ago?	\N
1006	78	3	वेतन में कितने % की कमी 12.5% वृद्धि को प्रभावहीन कर देगी?	What % decreased in the income not effected on the 12.5% increament ?	\N
737	71	4	5 रू. के 9 वस्तु खरीदी,100 वस्तु कितने में बेचे कि 8% का फायदा हो?	A person bought 9 articles for Rs 5. At what price he should sell 100 articles to get the profit of 8%.	\N
1007	78	3	\tएक व्यक्ति के पास कुछ धनराशि है। उसका 25% बस में चुरा लिया जाता है, 10% जेब में से गिर जाता है। बची हुई राशि का 50% भोजन पर लगाया जाता है फिर वह एक 26 रू. की किताब खरीदता है इसके बाद उसके पास कुछ नहीं बचा। उसके पास प्रारंभ में कितनी राशि थी ?	A person has some amount with him. 25% of its is stolen in a bus, 10% is lost through a hole in the pocket, 50% of remainder is spent on food. He then purchases a book worth Rs. 26 from the remainder. He walks back home because all his money is over. What was the initial amount.	\N
904	75	4	a,b,c,d,e,f,g सात लगातार विषम संख्या है। इन सभी संख्याओं का औसत a के रूप में ज्ञात करों?	a, b, c, d, e , f, g are seven consecutive odd number. Find the average of all this number is terms of a.	\N
998	78	2	\tयदि किसी संख्या में 930 जोड़ा जाये, तो वह संख्या अपने का 444(4/9)% हो जाती है। संख्या ज्ञात करें ?	If 930 is added in a number then number becomes 444 (4/9)% of itself. Find the original number. 	\N
1049	79	2	एक मजदूर प्रतिसप्ताह 60 घंटे काम करता है तथा 2400 रू. मजदूरी के रूप में प्राप्त करता है। उसके प्रति घंटे की मजदूरी को 40% से बढ़ा दिया गया है तथा काम करने के घंटे को 16(2/3)% से कम कर दिया गया है उसकी साप्ताहिक मजदूरी में कितने प्रतिशत की वृद्धि या कमी हुई ?	A labourer works for 60 hours a week. And gets Rs. 2400 as wages. If his 1 hour wages are increased by 40% and his working hours are reduced by 162/3%, then by how much will his wages increase or decrease.	\N
1050	79	2	A की आय B की आय से 50% अधिक है, C की आय A की आय से 2/3 गुना है। D की आय C की आधी आय के बराबर है। D की आय में 10% वृद्धि की जाती है, तो ज्ञात कीजिए B की आय D की आय की कितने प्रतिशत है (वृद्धि के बाद) ?	Income of A is 50% more than that of B’s, income of C is 2/3rd of income of A’s. Income of D is half of income of C. Income of D is increased by 10%. find income of B is what percent of income of D after the increment.	\N
1051	79	4	A की आय B की आय से 30% ज्यादा है। तो B की आय A की आय से कितने प्रतिशत कम होगी ?	The income of A is 30% more than the income of B. How much percent B’s income less than A’s.	\N
1052	79	2	A की आय B की आय से 40% कम है तो B की आय A की आय से कितने % ज्यादा होगी।	The income of A is 40% less than B’s income. How much percent is B’s income more than A’s.	\N
1057	79	1	पहली संख्या दूसरी संख्या से 14.28% अधिक है, और दूसरी संख्या तीसरी से 16.67% अधिक है। तो दूसरी संख्या तीसरी संख्या से कितने % अधिक है ?	1st number is 14.28% more than third number and 2nd number is 16.67% more than 3rd number then second number is how much percent more than first number? 	\N
1058	79	2	एक संख्या को 28.56% बढ़ाया जाता है पुनः वापस मूल संख्या प्राप्त करने के लिए इसे अब कितना %  कम करना होगा ?	29-\tA number is increased by 28.56% to get back original no. it reduced to initial value by what % ? 	\N
1060	79	4	पानी के एक टैंक को भरने में एक नल को सामान्यतः 7 घंटे लगते हैं, लेकिन टैंक में एक छेद होने के कारण, इसे भरने में अतिरिक्त 2 घंटे लगते हैं। पूरे भरे हुए टैंक को, इस छेद द्वारा खाली करने में कितना समय लगेगा ?	A water tank normally takes 7 hours to be filled by a tap but because of the leak, it takes another 2 hours. In how many hours will the leak empty a full water tank ?	\N
1061	79	3	पानी के एक टैंक को भरने में एक नल को सामान्यतः 7 घंटे लगते हैं, लेकिन टैंक में एक छेद होने के कारण, इसे भरने में अतिरिक्त 2 घंटे लगते हैं। पूरे भरे हुए टैंक को, इस छेद द्वारा खाली करने में कितना समय लगेगा ?	A tap can fill a tank in 6 hours. After half the tank is filled, three more similar taps are opened. What is the total time taken to fill the tank completely ? 	\N
1062	79	2	दो पाइप किसी टंकी को क्रमशः 20 मिनट तथा 30 मिनट में भर सकते है। जब टैंक खाली हो तो दोनों पाइपों को खोल दिया जाता है। कुछ समय पश्चात् पहला पाइप बंद कर दिया जाता है तब टैंक 18 मिनट में भर जाता है। पहला पाइप खुलने के कितने समय बाद बंद कर दिया जाता है?	A tank can be filled by two pipes in 20 minutes and 30 minutes respectively. When the tank was empty the two pipes were opened. After some time the first pipe was stopped and the tank was filled in 18 minutes. After how much time of the start was the pipes stopped ?	\N
1063	79	1	टंकी की तली में छेद में होने के कारण एक नल किसी टंकी को भरने में 36 घंटे का अतिरिक्त समय लेता है जबकि छेद की क्षमता नल से आधी है बताऐं नल द्वारा टंकी को भरने का सही समय कितना है ?	A tap takes 36 hours extra to fill a tank due to a leakage equivalent to half of its inflow. The tap can fill the tank in hours ?	\N
1064	79	3	\tपानी की एक टंकी में 4/5भाग पानी भरा हुआ है। यदि अब A नल उस टंकी को 5 मिनट में भर सकता है, जबकि B नल उसकों 32 मिनट में खाली कर सकता है। यदि दोनों नल खोल दिए जाए, तो टंकी कितने समय मं पूर्णतः खाली या भरी जा सकती है?	If 4/5 part of the tank in already fill by water. If pipe A is open now and can fill the tank is 5 min. while pipe B can empty it in 32 min. If Both the pipes Open now together in what time the tank will be filled or empty ?	\N
1065	79	1	एक पाइप किसी टंकी को 40 मिनट में खाली करता है। दूसरा पाइप जिसका व्यास पहले पाइप से दुगुना है टैंक को खाली करने के लिए जोड़ लिए जोड़ दिया जाता है। दोनों पाइप एक साथ टैंक को कितने समय में खाली करेगें?	A pipe can empty a tank in 40 minutes. A second pipe with diameter twice as much as that of the first is also attached with the tank to empty it. The two pipe together can empty the tank in :	\N
1066	79	2	एक समान क्षमता के 9 नल एक पानी की टंकी को 20 मिनट में भरते हैं। एकसमान क्षमता के कितने नल उस पानी की टंकी को 15 मिनट में भर सकते हैं ?	Having the same capacity 9 taps fill up a water tank in 20 minutes. How many taps of the same capacity are required to fill up the same water tank in 15 minutes ?	\N
836	74	2	दिये गये चित्र में  AB || CD , तो x का मान ज्ञात करें।	 	391ab49cd494d0d2a7fd46efe873198d
171	58	4	1739 में कम से कम क्या जोड़ा जाए कि यह 11 से पूर्णतः विभाजित हो जाए?	What should be added in 1739 so that it will be divisible by 11? 	\N
903	75	4	8 संख्याओं का औसत 6 है। यदि प्रत्येक संख्या को 7 से गुणा कर दें, तो नई संख्याओं का औसत है-	Average of 8 number is 6. If each number is multiply by 7.	\N
891	75	3	एक बल्लेबाज की 11 पारियों का कुछ औसत है। 12वीं पारी में उसने 25 रन बनायें और उसका औसत 3 घट गया तो अब उसका औसत है?	There is some average of 11 innings of a batsman. He scores 90 runs in 12th innings then average is decreased by 5 runs. Find his current average.	\N
901	75	3	80 से कम सभी विषम संख्याओं का औसतः	The average of all odd numbers less than 80 is:	\N
902	75	3	14 संख्याओं का औसत 12 है। यदि प्रत्येक संख्या में से 4 घटा दिया जाए, तो नया औसत होगा-	Average of 14 number is 12. If 4 is subtracted by each number than find the new average.	\N
877	75	1	\tएक आर्मी की भर्ती प्रक्रिया में, चयनित एवं अचयनित अभ्यर्थियों का अनुपात 4: 1 था। यदि 90 कम ने आवेदन किया होता और 20 कम चयनित होते, तो चयनित और अचयनित अभ्यर्थियों का अनुपात 5: 1 होता। कितने अभ्यर्थियों ने प्रक्रिया के लिए अवोदन किया था ?	In an army selection the ratio of selected and unselected candidates was  4:1, if  90 less had appeared and 20 less selected the ratio would have have been 5:1, how many candidates had applied for the process.	\N
1210	114	3	5 रू. के 6 के हिसाब से कुछ वस्तु खरीदी और 6 रू. में 5 के हिसाब से बेच दी। लाभ/हानि % ज्ञात कीजिए ?	A person bought some articles at rate of 6 for Rs 5 and sold them at the rate of 5 for Rs 6. Find the profit or loss%	\N
878	75	3	\tराम और श्याम के वजन का अनुपात 4: 5 है। राम का वजन 10ः बढ़ गया। कुल वजन दोनों का 82.8 किग्रा बढ़ गया। कुल वजन में 15% की वृद्धि हुई। तो श्याम का वजन कितने% बढ़ा?	The ratio of weight of Ram and shyam is 4 : 5. The weight of Ram is increased by 10%. Total weight of Ram and Shyam is increased by 82.8 kg. The percentage of increment in total weight is 15%. Find the percent change in weight of Shyam. 	\N
725	71	3	एक कार की चाल 42 किमी/घंटा है। यदि वो हर घंटे कुछ मिनट रूकती है, तो उसकी चाल 28 किमी/घंटा रह जाती हैं तो वो हर घंटे कितने मिनट रूकती है?	Speed of a car in 42km/h. It is stops for a few minutes in an hour. Then its average speed becomes 28km/h. Find out the times duration it step for in an hour.	\N
879	75	2	1: 2: 3: 4 के अनुपात में चार संख्याएं हैं। उन संख्याओं का योग 16 है। पहली व चै।थी संख्या का योग बराबरहै-	four numbers are in the ratio of 1:2:3:4 than find the sum of 1st and 4th if the sum of all four is 16.	\N
881	75	4	चार संख्याओं का औसत 60 है। इनमें से प्रथम संख्या अन्तिम तीन संख्याओं के योग का 1/4 है। पहली संख्या है-	The average of 4 number is 60. First number is 1/4 some of last 3 number than find the first number.	\N
884	75	3	एक छात्र 10 द्वि-अंकीय संख्याओं का औसत ज्ञात करता है। संख्याओं को लिखते समय गलती से एक संख्या के अंक पलट जाते हैं। परिणामतः उत्तर सही उत्तर से 3.6 कम प्राप्त होता है। उस संख्या के अंकों में अंतर कितना है, जिन संख्याओं में उसने गलती की है?	A student finds the average of ten 2-digit numbers. While copying numbers, by mistake, he writes one number with its digits interchanged. As a result his answer is 3.6 less than the correct answer. The difference of the digits of the number, in which he made mistake, is :	\N
885	75	3	16 लगातार विषम संख्याओं का औसत 86 है। बड़ी संख्या क्या होगी।	Average of 16 consecutive odd number is 86 Find the largest number.	\N
886	75	2	m संख्याओं का औसत n² और n संख्याओं का औसत m² है। तद्नुसार (m+n) संख्याओं का औसत क्या होगा ?	If the average of m numbers is n² and that of n numbers is m². Then find the average of (m+n)numbers.	\N
887	75	2	छः संख्याओं का औसत 28 है अगर प्रत्येक पहली तीन संख्यायें 2 से बढ़ती है। और प्रत्येक शेष 3 संख्यायें 4 से घटती है। तो नया औसत क्या होगा ?	The average of six numbers is 32. Each of the first three numbers is increased by 2 and each of theremaining three numbers is decreased by 4, then find the new average.	\N
1067	79	1	किसी टैंक में 8 नल लगाए गए है, कुछ भरने वाले है और कुछ निकासी वाले है। प्रत्येक भरने वाला नल टंकी को 8 घंटे में भर सकता है और प्रत्येक निकासी नल टंकी को 6 घंटे में खाली कर सकता है। तो भरने वाले नलों की संख्या ज्ञात करों अगर पूरी टंकी को भरने में 8 घंटे लगते हो तो।	8 taps are fitted in a tank, some are water taps and rest are outlet tap. Each water tap can fill the tank in 8 hrs and each outlet tap can empty in 6 hours. Then calculate the no of water taps if the whole tank fill in 8 hrs	\N
795	73	1	व्यंजक में शून्य की संख्या होगी?\n\n1× 2 × 3 × 4 ………….× 500	Find the no. of zeros in expression.\n\n1× 2 × 3 × 4 ………….× 500	\N
796	73	2	जब (777777......100 times) को 13 से भाग किया जाये तो शेषफल होगा।	Find the remainder when (777777……… 100 times) is divided by 13.	\N
837	74	3	चित्र में x और y का मान बताओं।	 	57219486d5fe78d95722ae43658dfa96
888	75	4	किसी क्रिकेट टीम के 11 खिलाड़ियों का औसत स्कोर 32 रन है और जब टीम के कुल स्कोर में से कैप्टेन का स्कोर घटा लिया जाता है, तो औसत 2 रनों से बढ़ जाता है। कैप्टेन ने कितने रन बनाए थे ?	Average score of 11 player of a cricket team is 32. If score of captain is removed than the average increases by 2 run than find the score of captain .	\N
889	75	4	10 नाविकों वाली एक नाव में, उनके नाविकों के औसत भार में 1.8 किग्रा की वृद्धि हो जाती है, क्योंकि 72 kg वाले एक नाविक के स्थान पर एक नया नाविक आ जात है तद्नुसार, उस नए नाविक का भार कितना है ?	The average weight of 10 boatsman is increases 1.8 kg when a man whose weight is 72 kg is replaced by a new man find the weight the new man.	\N
890	75	1	किसी बल्लेबाज का 16 पारियों का एक निश्चित औसत है। 17 वीं पारी में वह 87 रन बनाता है जिसके चलते उसके औसत में 3 रनों की वृद्धि  हो जाती है। 17 वीं पारी के बाद उसका औसत क्या होगा ?	There is some average of 16 innings of a batsman. He scores 87 runs in 17th innings then average is increased by 3 runs. Find his average after 17th inning.	\N
1186	114	4	किसी निश्चित धन पर दो क्रमागत वर्षो के चक्रवृृद्धि ब्याज क्रमशः 225रू. और 238.50 रू. है। ब्याज की वार्षिक दर कितनी है?	The compound interest on a certain sum for two successive years are Rs. 225 and Rs. 238.50. The rate of interest per annum is.	\N
892	75	2	क्रिकेट के किसी खिलाड़ी का उसके द्वारा खेली गई 42 पारियों के रनों का औसत 30 है। उसके द्वारा बनाए गए एक पारी के अधिकतम तथा न्यूनतम रनों का अन्तर 100 है। यदि इन दोनों पारियों को हटा दिया जाए तो उसकी शेष 40 पारियों के रनों का औसत 28 है। उसके द्वारा एक पारी में बनाए गए अधिकतम रन है-	If the average of 42 innings of a batsman is 30. If highest and lowest innings are excluded then the average of remaining 40 innings is 28. If the difference between highest and lowest innings is 100 runs.Find his highest run.	\N
893	75	4	एक कक्षा में 45 विद्यार्थियों द्वारा प्राप्तांकों का औसत 80 है। विद्यार्थी द्वारा प्राप्त अधिकतम अंक और न्यूनतम अंकों का अन्तर 81 है। अगर दोनों विद्यार्थियों को हटा दिया जाये तो कक्षा का औसत 1 कम हो जाता है तो अधिकतम अंक क्या है?	The average marks obtained by 45 students in a class is 80. The difference between the marks of the student who got the highest mark and the student who got the least mark is 81. If both these students are not considered, the average of the class falls by 1 mark. Find the highest mark.	\N
764	72	1	द इकोनाॅमिक्स आफ वेलफेयर पुस्तक किसने लिखी ?	-	\N
765	72	1	मस्तिष्क को आॅक्सीजन युक्त रक्त पहुॅंचाने वाली रक्तवाहिकाऐं कौन हैं ?	-	\N
766	72	1	भारत और पाकिस्तान के बीच स्थित सीमा रेखा एक उदाहरण है- 	-	\N
767	72	4	सत्य चुनिए ?\n\n(A) भारत विश्व का पाॅंचवा बड़ा देश है\t \t\n\n(B) यह विश्व का 2.4 प्रतिशत क्षेत्रफल घेरे हैं\t\t\n\n(C) भारत में सही समय 82(1/2) पूर्वी अक्षांका है\n\n(D) जनसंख्या विश्व में सर्वा. है\n\n	-	\N
768	72	3	किस राज्य की सीमा बांग्लादेश से नहीं मिलती है -	-	\N
763	72	1	रक्त की अम्लीयता बड़ने से ह्रद्य गति पर क्या प्रभाव पड़ेगा ?	-	\N
771	72	4	कर्क रेखा व समय रेखा का मिलन बिन्दु कहाॅं होती है -	-	\N
772	72	4	किस युग की चटटानें जीवाशम रहित होती हैं?	-	\N
774	72	1	कौनसी चटटान प्रणाली भारत में प्राचीनतम है ?	-	\N
775	72	2	भारत की सबसे गहरी गार्ज का नाम क्या हैं ?	-	\N
776	72	1	शिमला , मसूरी जैसे स्वास्थ्यवर्धक स्थल किस हिमालय का भाग है ?	-	\N
1081	79	2	एक वस्तु के कीमत में लगातार दो बार 10 प्रतिशत की क्रमागत वृद्धि की गई। पुनः वस्तु की आरम्भिक कीमत प्राप्त करने के लिए बढ़ी हुई कीमत में कितने प्रतिशत की कमी करनी होगी?	Price of a product is increased by 10 % two times successively. Than find what % decreased in its price to get the initial price ?	\N
1068	79	2	किसी टैंक में 8 नल लगाए गए हैए कुछ भरने वाले है और कुछ निकासी वाले है। प्रत्येक भरने वाला नल टैंक को 8 घंटे में भर सकता है और प्रत्येक निकासी वाला नल टैंक को 6 घंटे में खाली कर सकता है। अगर टैंक भरा होने के बाद सारे नलों को खोल दे तो टंकी 6 घंटे में खाली हो जाती है तो भरने वाले नलो की संख्या ज्ञात करो।	A tank is connected with 8 pipes some of them are inlet pipes and rest are outlet pipes. Each of the inlet pipe can fill the tank in 8 hrs. individually while each outlet pipe can empty the tank in 6 hrs individually if all the pipes are kept open when the tank is full, it will take 6 hrs for the tank to empty. How many of these are inlet pipes ?	\N
1069	79	4	दो पाइप किसी टैंक को पानी से क्रमशः 15 तथा 12 घंटे में पानी से भर सकते हैं तथा एक तीसरा पाइप इस अंकी को 4 घंटे में खाली कर सकता है यदि इन पाइपों को क्रमशः सुबह 8 बजे, 9 बजे और 11 बजे खोला जायें। तब टैंक कितने समय बाद खाली हो जाएगा।	Two pipes can fill a tank with water in 15 and 12 hours respectively and a third pipe can empty it in 4 hours. If the pipes be opened in order at 8, 9 and 11 a.m. respectively, the tank will be emptied at	\N
1071	79	1	यदि किसी संख्या में 16 जोड़ा जाऐ, तो वह संख्या अपने आप का 116(2/3) % हो जाती है। संख्या ज्ञात करों ?	If 16 is added in a number then result becomes 116(2/3) % of itself. Find the number.	\N
1072	79	1	किसी संख्या का एक-तिहाई 96 हो तो उस संख्या का 67% क्या होगा?	If 1/3 rd of a no. is 96 then what is 67 % of that no. ?	\N
1073	79	3	यदि x का a % = y का b % है तो बताइये y का c % ,x का कितना % है ?	If a% of x is equal to b% of y ,then c% of y is what % of x? 	\N
1074	79	1	दो संख्याओं का अंतर बड़ी संख्या का 20 प्रतिशत है। यदि छोटी संख्या 20 है, तो बड़ी संख्या ज्ञात करें?	Difference of the two number is 20 % of the Bigger number than If the Smaller number is 20 than find the Bigger number is ?	\N
1075	79	3	एक संख्या को दो भागों में इस प्रकार बाँटा जाता है। कि पहले भाग का 80 % दूसरे भाग के 60 % से 3 अधिक है, और दूसरे भाग का 80 % पहले भाग के 90 % से 6 अधिक है, तो संख्या क्या है?	A number is divided into two parts such that, 80 % of first part is 3 more than 60 % of second part, and 80 % of second part is 6 more than 90 % of first part than find the number is ?	\N
1076	79	1	एक छात्र ने एक संख्या को 5/3 के बजाय 3/5 से गुणा कर दिया। उसके उŸार में गलती % ज्ञात करो।	A student multiplied a number by 3/5 instead of 5/3 than find % error in the answer ?	\N
1077	79	3	एक आदमी अपनी आय का 5 प्रतिशत परिवहन पर खर्च करता है। बची हुई आय का 20 प्रतिशत खाने पर खर्च करता है। और फिर 120 रू॰ दान देता है। इन सबके बाद उसके पास 1400 रू॰ बचते है। उसकी आय ज्ञात करो।	A person spends 5 % of his income on Transport out of the remaining 20% spends on food. And than he donate 120 Rs. And after that he saves 1400 Rs. Than find his income?	\N
1078	79	2	एक पुस्तकालय में 20 % किताबे हिन्दी में है, बची हुई में से 50 % अंग्रेजी में है और बची हुई में से 30 % फ्रेंच में है और बची हुई 6300 किताबे दूसरी भाषाओं में है। पुस्तकालय में कुल किताबे की संख्या ज्ञात करो।	In a library 20 % books in Hindi , out of the remaining 50 % in English out of the remaining 30 % in French. And remaining 6300 books are in other languages than find the total number of books in the library ?	\N
1079	79	1	दो संख्याएँ, तीसरी संख्या से क्रमशः 30 प्रतिशत तथा 37 प्रतिशत कम है, तो दूसरी संख्या, पहली संख्या से कितना प्रतिशत कम है?	If two numbers are 30 % and 37 % resp. less than to the third no. then find second number is what percentage less than to the first number?	\N
787	73	3	पश्चिमी जेट स्टृीम के कारण भारत में क्या प्रभावित होता है ?	 	\N
788	73	4	उ.पू. मानसून की दिशा निर्धारित करने वाले कारक हो सकते है ?	 	\N
786	72	1	मानसून किस भाषा का शब्द है ?	 	\N
770	72	1	भारत के किस राज्य की सीमा रेखा बांग्लादेश र्से Zero Line  कहलाती है ?	-	\N
777	72	2	पोगांग झील किस प्रकार की झील है ?	-	\N
789	73	2	नारकेक जैवमण्डल भारत के किस राज्य में है ?	 	\N
1080	79	4	चीनी के भाव में 25 प्रतिशत की बढ़ोतरी की गयी है। यदि चीनी पर किए जाने वाले व्यय को पहले जितना ही रखना हो, तो खपत में कमी का पहले की खपत से अनुपात होगा-	Price of sugar increases by 25%, If the expenditure on sugar remain same as earlier than find the Ratio of Reduced consumption to the initial consumption ?	\N
1082	79	4	एक संख्या पहले 20 प्रतिशत कम की जाती है। फिर इस कम की हुई संख्या में 20 प्रतिशत वृद्धि की जाती है। परिणामी संख्या मूल संख्या से 24 कम है, तो मूल संख्या है-	If a number is first decreased by 20 % and than it is increased by 20% and the number is reduced by 20 than find the actual number is ?	\N
1083	79	2	आयत की लम्बाई 37(1/2) % बड़ा दी जाए, तथा चैड़ाई 20% कम कर दी जाए। क्षेत्रफल में % परिवर्तन ज्ञात करें ?	If the length of a  rectangl is increased by 37(1/2) % and the breath is decreased by 20% than find the percentage change in its area?	\N
172	58	2	15 और 85 के बीच कितनी प्राकृतिक संख्याऐं हैं जो 7 से विभाजित होती हैं ?	How many natural numbers between 15 and 85 are divided by 7? 	\N
1085	79	3	किसी त्रिभुज की ऊँचाई को 22 % बढ़ा दिया और आधार में 6 % की कमी कर दी तो क्षेत्रफल पर क्या फर्क पड़ेगा?	In a triangl , its altitude is increased by 22% and its base is decreased by 6%. Find the net effect on its area.	\N
1086	79	3	एक व्यक्ति का मासिक वेतन 13,500 रू॰ और उसका मासिक खर्च 9000 रू॰ है। अगले वर्ष उसका वेतन 14 5 बढ़ जाता है और उसका खर्च 7 प्रतिशत बढ़ जाता है, तो उसकी बचत में % वृद्धि ज्ञात करें?	The monthly income of a person is 13500 rs. And he spends 9000 rs.if in the next month his income is increases by 14% and his expenditure is increased by 7% than find the percentage increased in his savings?  	\N
173	58	3	X और Y दो सम संख्याएं हैं, तो निम्नलिखित विकल्पों में से विषम ज्ञात कीजिए ?	X and Y are two even numbers, then find the odd one from the following options? 	\N
180	58	3		6, 24, 12, ?, 18, 8, 24, 0	\N
181	58	2		7, 12, 22, 42, 823, ?	\N
182	60	2	 	0.002 × 0.5  = ?	\N
1187	114	1	\t15494 रू. को A और B, में इस प्रकार बाँटिए कि 9 वर्ष बाद A का मिश्रधन B के बराबर हो। यदि चक्रवृद्धि ब्याज की दर 20% वार्षिक हो तो A का भाग कितना है?	Divide Rs. 15494 between A and B so that A’s share at the end of 9 years may be equal to B’s share at the end of 11 years, compound interest being 20% per annum. Then A’s share is.	\N
1087	79	1	किसी सिनेमा के प्रवेश टिकट का मूल्य 250 रू. है। जब टिकट के मूल्य में कमी होती है तब टिकट की बिक्री में 50 % की बढ़ोŸारी होती है जबकि प्राप्त की गई कुल धनराशि में 17.5 % की कमी होती, है तो टिकट के मूल्य में कितने प्रतिशत कमी हुई ?	Entry ticket of a cinema hall is Rs. 250. When the price is reduced by a certain percentage then the sales of ticket increases by 50% whereas the overall collection is reduced by 17.5% find the% decrease in the price of ticket.	\N
1088	79	3	चीनी की कीमतों में 20% कमी की वजह से एक परिवार 4000 रू॰ में 4 किलो चीनी अधिक खरीदता है , तो ताजा मूल्य ज्ञात करो ?	Price of sugar is decreased by 20% so that a man can able to buy 4 kg more sugar for rs. 4000, than find the change rate of sugar?	\N
1089	79	2	प्रत्येक महीने एक आदमी 25 किग्रा चावल और 9 किग्रा गेहूं की खपत करता है। चावल की कीमत गेहूं के कीमत की 20 %  है। और वह चावल और गेहूं पर प्रति महीने 350 रू. खर्च करता है। यदि गेहूं की कीमत 20 % बढ़ जाती है। तब वह चावल की खपत में कितने प्रतिशत कमी करे जिससे कि 350 रू. ही खर्च हों। जबकि चावल का मूल्य और गेहूं की खपत स्थिर है।	Every month a man consumes 25 kg rice and 9 kg wheat. The price of rice is 20% of the price of wheat and thus he spends total Rs. 350 on the rice and wheat per month. If the price of wheat is increased by 20% then what is the percentage reduction of rice consumption for the same expenditure of Rs. 350 . Given that the price of rice and consumption of wheat is constant ?	\N
297	61	3		If 46×35=3456, then 32×54=?	\N
299	61	2		ba – b – a – – ba – b	\N
174	58	2	जब एक प्राकृतिक संख्या n को 5 से विभाजित किया जाता है, तो शेष 4 बचता है। जब 2n को 5 से विभाजित किया जाता है, तो शेष क्या बचेगा ?	When a natural number n is divided by 5, the remainder is 4 . When 2n is divided by 5, what will be the remainder? 	\N
175	58	1	यदि संख्या 732XY, 70 से विभाजित है, तो (X-Y) का मान क्या होगा ?	If the number 732XY is divided by 70, then what will be the value of (X-Y)? 	\N
176	58	4	यदि 1701 तथा 1#6 का गुणनफल 28 पूर्णतः विभाजित है, तो # का मान ज्ञात कीजिए ।	If the product of 1701 and 1 # 6 is completely divisible by 28, then find the value of #. 	\N
178	58	3	एक विद्यार्थी ने जितने प्रश्न सही किए उससे तीन गुना गलत किए। यदि उसने कुल 76 प्रश्न हल किए, तो उसने कितने प्रश्न सही सही हल किए?	One student gave three times wrong answers compared to right answers. If he solved a total of 76 questions, then how many questions he gave right answer? 	\N
179	58	3	5 क्रमागत सम संख्याओं का औसत 40 है, इनमें से छोटी संख्या का मान ज्ञात करें।	The average of five consecutive sum numbers is 40. Find the value of the smallest number of these numbers. 	\N
183	60	3		86.5 × 12.1 × 7.2 = ? + 3.2 	\N
832	74	3		 	949e50ba318ad1088e973c7045efa9d2
1084	79	3	एक आयत का क्षेत्रफल कितने प्रतिशत बढ़ जायेगा, यदि लम्बाई 23 % और चैड़ाई 9 % बढ़ा दी जाये ?	How much percent will the area of a rectangl exceed if its length is increased by 23% and breadth is increased by 9 %. 	\N
1166	113	2	\tकिसी धनराशि का 2 वर्षों में 7% प्रति वर्ष की दर से साधारण ब्याज 200 रू. है। चक्रवृद्धि ब्याज और साधारण ब्याज का अंतर क्या होगा?	On a certain sum of money, the simple interest for 2 years is Rs. 200 at the rate of 7% per annum. Find the difference in CI and SI.	\N
184	60	4	यदि एक तीन अंको की संख्या को दोहराकर एक छः अंको की संख्या बनाई जाती है (जैसे 656656,214214) यह संख्या हमेशा किससे विभाजित होगी?	If a six digit number is formed by repeating a three digit number (e.g. 656656,214214), then that number will be divisible by :	\N
1181	114	1	\tकिसी धन पर 3 वर्ष का 5$% वार्षिक ब्याज की दर से चक्रवृद्धि ब्याज और साधारण ब्याज का अंतर 12.20 रू. है। मूलधन ज्ञात करें?	On what sum will the difference between the simple interest and compound interest for 3 years at 5 percent per annum amount to Rs. 12.20.	\N
1182	114	3	\tकिसी धन पर 2 वर्ष के लिए 12 % वार्षिक दर पर चक्रवृद्धि ब्याज 2544 रू. है। उसी धन पर समान दर और समान समय के लिए साधारण ब्याज क्या होगा?	If the compound interest on a certain sum for two years at 12% per annum is Rs. 2544, the simple interest on it at the same rate for 2 years will be.	\N
1185	114	2	\tएक ठेकेदार 4% वार्षिक दर पर धन उधार लेता है और वर्ष कें अंत में ब्याज देता है। उसने 6% अर्द्धवार्षिक चक्रवृद्धि ब्याज की दर पर धन लिया और वर्ष के अंत में ब्याज दिया। इस प्रकार वह एक वर्ष में 104.50 रू. बचाता है। लियाा गया धन कितना था?	A moneylender borrows money at 4% per annum and pays the interest at the end of the year. He lends it at 6% per annum compound interest compounded half yearly and receives the interest at the end of the year. In this way he gains Rs. 104.50 a year. The amount of money he borrows, is.	\N
1188	114	3	\tकिसी धन को 8.33% वार्षिक चक्रवृद्धि ब्याज की दर पर 338 रू. की 2 वार्षिक किस्तों में चुकाया जाता है। धन कितना है। 	A sum of money is borrowed back in two annual installments of Rs. 338 each allowing 8.33% compound interest. The sum borrowed was.	\N
1189	114	2	\t16400 रू. 5% वार्षिक चक्रवृद्धि ब्याज की दर पर दो बराबर वार्षिक किस्तों में चुकाने हैं। प्रत्येक किस्त का मान कितना है?	A sum of Rs. 16400 was taken at the rate of 5% per annum to be paid back in two equal annual installments. Find the value of each installment	\N
1190	114	2	\tकिसी वस्तु को 2835 रू॰ में बेचने पर 12.5% की हानि होती है तो उस वस्तु का क्रय मूल्य ज्ञात कीजिए ?	By selling an article for rs.2835 there is a loss of 12.5% than find its cost price? 	\N
1191	114	2	76 रू. में एक वस्तु को बचेने पर 52% लाभ होता है। यदि इस वस्तु का 75 रूपये में बेचा जाये, तो: लाभ ज्ञात करें।	In selling an article for Rs. 76, there is a profit of 52% . If is sold for Rs. 75, the profit percent will be?	\N
1192	114	3	किसी वस्तु को 820 रू. में बेचने पर जो हानि होती हैं और वस्तु को उस 950 रू. में बेचने पर जो लाभ होता है। उसका अनुपात 7: 6 है। वस्तु का क्रय मूल्य ज्ञात करें।	Ratio of loss incurred by selling an article for Rs. 820 and profit gained by selling same article for Rs. 950 is 7 : 6 Find the cost price of this article?	\N
1193	114	4	किसी वस्तु को 830 रू. में बेचने पर जो हानि होती हैं वह उस वस्तु को 1020 रू. में बेचने पर हुए लाभ से 11.11% ज्यादा है। वस्तु का क्रय मूल्य ज्ञात करें।	Loss incurred by selling an article for Rs. 830 is 11.11% more than profit gained by selling same article at Rs. 1020. Find the cost price of this article?	\N
1194	114	4	श्याम किसी वस्तु को रूपये 600 पर बेचने पर जितनी हानि उठाता है उससे दुगुना लाभ उस वस्तु को रूपये 1200 में बेचने से कमाता है। तो उस वस्तु का क्रय मूल्य ज्ञात कीजिए।	Shyam occurred loss by selling an article for Rs. 6000 is equal to twice of the profit gained by selling same article for Rs 1200 Find the cost price of that article?	\N
1195	114	4	कुछ वस्तुयें 450 रू. की खरीदी जाती है और उसका एक तिहाई भाग 10% हानि पर बेच दिया जाता है बाकी वस्तुओं को कितने% लाभ पर बेचा जाये कि कुल 20% का लाभ हो।	If goods be purchased for Rs 450, and one-third be sold at a loss of 10%, at what gain per cent should the remaining be sold so as to gain 20% on the whole transaction.	\N
1196	114	1	यदि दो तिहाई वस्तुयें 6% लाभ एवं बाकी 3% हानि पर बेची जाती है तो कुल 540 रू. का लाभ होता है। तो वस्तु का क्रय मूल्य ज्ञात करें?	Tow-thirds of a consignment was sold at a profit of 6% and the rest at a loss of 3%. If there was an overall profit of Rs 540, find the value of the consignment.	\N
1197	114	1	एक व्यक्ति ने कुछ वस्तुएँ खरीदी। उसने 1/3 वस्तुएँ 14% लाभ पर 3/5 वस्तुएँ 17.5% लाभ पर और शेष वस्तुएँ 20ः% लाभ पर बेच दी। इस सौदे में उसे कितना % लाभ हुआ?	A person bought some article &he sold 1/3 at profit of 14% ,3/5 article at profit of 171/2% and rest at profit of 20%. Find his total profit %.	\N
1198	114	2	एक वस्तु के लागत मूल्य तथा वि.मू. का अनुपात 7: 9 है तो प्रतिशत लाभ ज्ञात करें।	The ratio of cost price and selling price is 7:9, the profit percent is :	\N
1199	114	3	यदि किसी वस्तु कोे 150 प्रतिशत लाभ पर बेचा जाता है तो क्रय मूल्य तथा वि.मू. का अनुपात ज्ञात करें।	By selling an article at 150% profit than find the ratio between cost price and selling price.	\N
1200	114	2	यदि 3 खिलौनों को 4 खिलौने के लागत मूल्य पर बेचा जाता है, तो प्रतिशत लाभ ज्ञात करें।	3 toys are sells at the cost price of 4 toys than find actual % profit or loss.	\N
1203	114	1	मेाहन ने 25 किताब 2000 रू में खरीदीं और उनकों बेचकर 5 किताबों के विक्रय मूल्य के बराबर लाभ कमाया। तो एक किताब का विक्रय मूल्य क्या होगा ?	Mohan bought 25 books for rs. 2000 .and his gain is equal to the selling price of 5 books. Than find the selling price of one book.	\N
1205	114	2	\tकिसी वस्तु को 25 रू में बेचने पर हुआ हानि % उस वस्तु के क्रय मूल्य के समान तो वस्तु का क्रय मूल्य ज्ञात कीजिए ?	By selling an article for rs.25 there is %loss  is equal to the cost price than find the c.p	\N
1206	114	1	एक कलम का विक्रय मूल्य 56 रू. है। यदि उसका क्रय मूल्य तथा % लाभ का संख्यात्मक मान समान हो तो क्रय मूल्य क्या है?	S.P. of a pen is Rs 56. If value of its C.P. and profit % is equal then find its C.P.	\N
1207	114	2	एक आदमी विक्रय मूल्य पर 14.28% की हानि उठाता है। तो क्रय मूल्य पर कितना % हानि होगी ?	A person calculates 14.28% loss at S.P. find his loss at C.P.	\N
278	61	3	एक पदार्थ का प्रतिरोध, जो तापमान के साथ बढ़ता हैः	\tThe resistance of material which increases with temperature is a:	\N
1211	114	3	22.\tकिसी वस्तु को 600 रू. में बेचने पर जो हानि होती हैं उसे 1000 रू. में बेचनेे पर उतना ही लाभ होता है। वस्तु का क्रय मूल्य ज्ञात करें।	Loss incurred by selling an article for Rs. 600 is equal to profit gained by selling same article for Rs 1000. Find the cost price of this article ?	\N
1212	114	3	\tएक वस्तु को 800 रू. में बेचने पर हुआ लाभ उस वस्तु को 275 रू. में बेचने पर हुयी हानि का 20 गुना है। 25% लाभ कमाने के लिए वस्तु को किस कीमत पर बेचा जाये। 	The profit earned when an article is sold for Rs. 800 is 20 times the loss incurred when it is sold for Rs. 275. At what price should the article be sold if is desired to make a profit of 25%.	\N
1213	114	3	\tयदि किसी वस्तु का वि.मू. उसके लागत मूल्य का 8/5गुणा है, तो % लाभ ज्ञात करें।	If selling price of an article is 8/5 times of its cost price, the profit, the profit percent on it is:	\N
185	60	3	इनमें से कौन सी अभाज्य संख्या नहीं है?	which is not the prime number?	\N
1214	114	1	23 वस्तु को बेचने पर 3 वस्तु की विक्रय मूल्य के बराबर लाभ होता है। लाभ % ज्ञात करो।	On selling 23 articles a person gains profit equal to selling price of 3 articles. Find profit %.	\N
1215	114	2	19 वस्तु को 625 रू. में खरीदा गया। इन्हें बेचने पर 6 वस्तु की विक्रय मूल्य के बराबर हानि हुई। प्रत्येक वस्तु का विक्रय मूल्य क्या है ?	Cost price of 19 articles is Rs 625. By selling these articles A person incurred loss equal to selling price of 6 articles. Find the selling price of each article.	\N
1216	114	2	लागत मूल्य तथा वि.मू. का अनुपात 216:306 है, तो प्रतिशत हानि ज्ञात करें। 	The ratio of CP to SP is 216:306. Find the profit %?	\N
1217	114	2	850 वस्तु का क्रय मूल्य 595 वस्तु के विक्रय मूूल्य के बराबर है, लाभ या हानि% ज्ञात करो।	If the cost price of 850 articles is equal to the selling price of 595 articles then the gain or loss % is: 	\N
1218	114	3	60 वस्तु का क्रय मूल्य x वस्तु के विक्रय मूूल्य के बराबर है, यदि 20% का लाभ प्राप्त किया तो  x ज्ञात करें?	The cost price of 60 articles is same as the selling price x of articles. If there is a profit of 20%, what is the value of x ?	\N
1219	114	3	किसी वस्तु को 1785 रु में बेचने पर 27.5 प्रतिशत लाभ होता है। उसका क्रय मूल्य ज्ञात करें ?	Find the cost price of article which is sold at Rs1785 at a profit of 27.5%. 	\N
1220	114	4	किसी वस्तु को 7130 रु में बेचने पर 15 प्रतिशत लाभ होता है। उसका क्रय मूल्य ज्ञात करें ?	An item is sold for Rs 7130 making a 15% profit. What is the cost price (in Rs) of this item? 	\N
1221	114	1	एक दुकानदार अपनी वस्तु को विक्रय मूल्य पर 6.66 प्रतिशत लाभ पर बेचता है तो क्रय मूल्य पर उसका लाभ प्रतिशत क्या होगा ?	A shopkeeper sells his goods at 6.66% profit on selling price. Find actual profit %? 	\N
1168	113	4	कितनी धनराशि पहले वर्ष के अंत में चक्रवृद्धि ब्याज से 650 रू. और दूसरे वर्ष के अंत में 676 रू. हो जाएगी?	What sum of money at compound interest will amount to Rs. 650 at the end of the first year and Rs. 676 at the end of the second year.	\N
955	76	1		Why Suffering ?	\N
1176	113	1	\t250 रू. मूलधन का 2 वर्ष में मिश्रधन क्या होगा यदि पहले वर्ष चक्रवृद्धि ब्याज की दर 4% तथा दूसरे वर्ष 8% हो?	What does Rs. 250 amount to in 2 years with compound interest at the rate of 4% per annum in the first year and 8% per annum in the second year.	\N
1177	113	1	किस वार्षिक चक्रवृद्धि ब्याज की दर से 2304 रू. का मिश्रधन 2 वर्ष में 2500 रू. हो जायेगा?	At what rate per cent per annum compound interest, will Rs. 2304 amount to Rs. 2500 in 2 years.	\N
1179	113	1	\tकितने वर्ष में 3000 रू. का मिश्रधन 20 % वार्षिक चक्रवृद्धि ब्याज की दर पर 5184 रू. हो जायेगा?	In how many years Rs. 3000 amount to Rs. 5184 at 20% per annum compound interest.	\N
1151	113	3	कोई धन 10 साल में अर्धवर्षीय संयोजित होने पर 2 गुना हो जाता है तो अर्धवर्षीय संयोजित होने पर 8 गुना होने में कितना वक्त लगेगा?	A sum of money doubles itself in 10 years. How much time it will take to become 8 times if compounded half yearly.	\N
1152	113	2	कोई धन 2 साल में यदि अर्धवर्षीय संयोजित हो तो 16 गुना हो जाता है। 27 गुना होने में कितना वक्त लगेगा यदि वर्ष में उसे एक बार संयोजित किया जाए?	A sum of money becomes 16 times of itself in 2 years if compounded half yearly. How much time it will take to become 27 times if compounded yearly.	\N
1137	113	2	सरकार ने चीनी के मूल्य को 15 % घटा दिया इसके कारण एक ग्राहक 1258 रु में 7.4 किलो ग्राम चीनी अधिक खरीद सकता है तो प्रति किलो ग्राम चीनी का प्रारंभिक मूल्य क्या है ?	The government reduced the price of sugar by 15%. By this a consumer can buy 7.4 kg more sugar for Rs.1258. The original price per kg of sugar is? 	\N
1164	113	1	किसी धनराशि पर 2 वर्षों में 4% वार्षिक दर से साधारण ब्याज 80 रू. होता है। उसी धनराशि पर उसी पर से और उसी समय के लिए चक्रवृद्धि ब्याज क्या होगा?	The simple interest on a certain sum at 4% per annum for 2 years is Rs. 80. The compound interest on the same sum for the same period is.	\N
1165	113	1	किसी धनराशि पर 2 वषों में चक्रवृद्धि ब्याज 60.60 रू. है और साधारण ब्याज 60 रू. है। वह धनराशि क्या होगी?	If the compound interest on a certain sum for 2 years is Rs. 60.60 and simple interest is Rs. 60, then the of interest per annum is.	\N
1167	113	1	किसी धनराशि पर 3 % की दर से 3 वर्षों के साधारण ब्याज और चक्रवृद्धि ब्याज का अंतर 27.27 रू. है। वह धनराशि क्या होगी?	The difference between the compound interest and simple interest. On a certain sum at 3% per annum for 3 years is Rs. 27.27. The sum is. 	\N
1169	113	4	एक पेड़ 1 वर्ष में अपनी ऊँचाई का 1/8 बढ़ जाता है। 2 वर्षों में वह कितना बढ़ जाएगा, यदि उसकी वर्तमान ऊँचाई 64 सेमी है।	A tree increases annually by 1/8th of its height. By how much will it increases after 2 years if satands today 64 cm high.	\N
1138	113	3	प्रथम 6000 रु पर एक व्यक्ति को 30% कर देना पड़ता है। 6000 रु से 10500 रु तक उसे 35 % कर देना पड़ता है। 10500 रु से 18000 रु तक उसे 18 % कर देना पड़ता है तथा 18000 से अधिक राशि पर उसे 32.5 % कर देना पड़ता है। यदि वह अपनी आय का 27.1428 % हिस्सा कर के रुप में चुकाता है तो घर किराय पर होने वाला खर्च ज्ञात कीजिए यदि घर किराया कर चुकाने के बाद बची राशि का 16.66 % है।	A person needs to pay 30% tax on first Rs.6000 earned for the amount between 6000 to 10500 the tax is 35% for the amount between 10500 to 18000 tax is 18% and for amount more than 18000 tax is 32.5% if he had paid 27.1428 % of his income as tax, then find his expenditure on house rent if his expenditure house rent is 16.66% of income left after paying tax. 	\N
186	60	4	यदि संख्या 857x32, 11 से पूर्णतः विभाजित है तो x का मान होगा?	If a number is 857x32, is divisible by 11 find How many the possible value of x	\N
1139	113	1	120 को x % से घटाया जाय और 40 को x % से बढ़ाया जाय तो परिणाम बराबर है 210 का x % 180 के (x + 20) % से कितना कम है ?	120 is reduced by x% and 40 is increased by x%, the result is equal. X% of 210 is How much % less than from (X + 20) % of 180? 	\N
1140	113	4	7500 रू. का 4% की वार्षिक दर से 1 साल में अर्द्धवार्षिक संयोजित चक्रवृद्धि ब्याज कितना होगा?	Find the C.I. of Rs. 7500 at 4% for 1 year. If the interest compounded half yearly.	\N
1141	113	1	3 साल का साधारण ब्याज 1200 रू. है और 2 साल का चक्रवृद्धि ब्याज 860 रू. है। ब्याज की दर ज्ञात कीजिए?	Find the rate of interest, if the S.I. for 3 years is Rs. 1200 and C.I. for 2 years is Rs. 860.	\N
1142	113	3	\t2500 रू. उधार लिया गया। चक्रवृद्धि ब्याज की दर से 3 साल बाद कितना चक्रवृद्धि ब्याज देना होगा यदि दर पहले साल 3% वार्षिक, दूसरे साल 4% वार्षिक और तीसरे साल 5% वार्षिक है? 	Rs. 2500 was borrowed for 3 years. What will be the compound interest if the rate of interest for first year is 3% per annum, second year is 4% per annum and for third year is 5% per annum respectively.	\N
1143	113	3	किसी राशि पर 10% की वार्षिक दर से 2 साल का साधारण ब्याज 750 रू. है। 2 साल का चक्रवृद्धि ब्याज क्या होगा?	S.I. on a sum of money is Rs. 750 for 2 years at 10% per annum. Find the C.I. on that sum for 2 years.	\N
1144	113	1	20% की वार्षिक दर से किसी मूलधन को 9 महीने के लिये वार्षिक और त्रैमासिक चक्रवृद्धि ब्याज संयोजित हुए हैं दोनों तरह के ब्याज का अन्तर 18.30 रू. है। तो मूलधन क्या है?	Find that Principal amount on which the difference of interest for 9 months yearly and quarterly is Rs. 18.30 at 20% per annum.	\N
1145	113	1	कोई मूलधन चक्रवृद्धि ब्याज की दर से 1 साल में 650 रू. हो जाता है। 2 साल बाद 676 रू. हो जाता है। ब्याज की दर और मूलधन ज्ञात कीजिए।	A sum of money amounts to Rs. 650 in 1 year and Rs. 676 in 2 years. Find that sum and rate of interest.	\N
1146	113	2	कोई मिश्रधन चक्रवृद्धि ब्याज की दर से 3 साल में 2400 रू. हो जाता है और 4 साल में 2520 रू. हो जाता है। ब्याज की दर ज्ञात करें।	A sum of money amounts to Rs. 2400 in 3 years and Rs. 2520 in 4 years on C.I. Find the rate of interest.	\N
1147	113	1	कोई धन 2 साल में चक्रवृद्धि ब्याज की दर से 4500 रू. हो जाता है। 4 साल में 6750 रू. हो जाता है। मूलधन ज्ञात करें।	A sum of money amounts to Rs. 4500 in 2 years and Rs. 6750 in 4 years compound interest. Find the sum.	\N
1148	113	3	कोई धन चक्रवृृद्धि ब्याज के दर से 4 साल में 3200 रू. हो जाता है और 8 साल में 8000 रू. है तो मूलधन ज्ञात करें।	A sum of money amounts to Rs. 3200 in 4 years and Rs. 8000 in 8 years on compound interest. Find the sum.	\N
281	61	3	कौन सी भारतीय नृत्य शैली सबसे पुरानी है ?	\tWhich Indian dance style is the oldest one ?	\N
1149	113	3	कोई धन चक्रवृद्धि ब्याज के दर से 4 साल में 2 गुना हो जाता है। इस धनराशि को 8 गुना होने से कितना वक्त लगेगा?	A sum of money doubles itself at compound interest in 4 years. In how many years will it become 8 times.	\N
1150	113	4	कोई धन चक्रवृद्धि ब्याज के दर से 6 साल में 3 गुना हो जाता है। इस धनराशि को 81 गुना होने में कितना वक्त लगेगा?	A sum of money becomes 3 times of itself in 6 years at compound interest. In how many years will it become 81 times.	\N
1154	113	1	2 साल का साधारण ब्याज और चक्रवृद्धि ब्याज का अन्तर 147 रू. है। यदि मूलधन 30000 रू. है तो ब्याज की दर ज्ञात कीजिए।	The difference of S.I. and C.I. on an amount of Rs. 30000 for 2 years is Rs. 147. What is the rate of interest.	\N
1155	113	4	\t3 साल का साधारण ब्याज और चक्रवृद्धि ब्याज का अन्तर 1525 रू. है। यदि दर 5% है तो मूलधन ज्ञात कीजिए।	The difference of S.I and C.I on a sum at 5% per annum for 3 years is Rs.1525. Find the sum.	\N
1156	113	1	\t1.5 साल का साधारण ब्याज और चक्रवृद्धि ब्याज का अन्तर 244 रू. है। यदि दर 10% वार्षिक है और मूूलधन को अर्धवर्षीय संयोजित किया जाता है तो मूलधन ज्ञात कीजिए।	The difference of S.I and C.I on a sum at 10% for 1.5 years is Rs. 244. Find the sum, If compounded half yearly and also find the principal.	\N
187	60	2	12899 × 96 × 997 अंतिम दो अंक ज्ञात करों ?	12899 × 96 × 997 find last two digit ?	\N
1170	113	1	20% प्रति वर्ष की दर से कम से कम कितने वर्षों में कोई धनराशि स्वयं की दुगुुनी राशि से अधिक हो जाएगी?	The least number of completed years in which a sum of money put out at 20% C.I. will be more than doubled is.	\N
1092	112	4	एक चुनाव में दो उम्मीदवार थे। 75 % लोगों ने अपना वोट दिया। इनमें से 2 % अवैध हो गये। एक उम्मीदवार को 9261 वोट मिले, जो कुल वैध वोट का 75 % था। उस चुनाव में कुल कितने वोटर थे ?	There were two candidates in an election. 75% of voters cast their votes, out of which 2% of the votes were found invalid. A candidate got 9261 votes which were 75% of total valid votes. Find the total number of voters enrolled.	\N
1093	112	3	कुल मतदाता के 2/5 वोट मुलायम सिंह को तथा शेष मायावती को दिये जाते हैं। चुनाव के दिन मुलायम सिंह के 15 % मतदाता और मायावती के 25 % मतदाता अपने वादे से मुकर जाते हैं तथा मायावती 1500 वोट से जीत जाती है। तो कुल मतदाता कितने हैं?	2/5 of the voters promise to vote for Mulayam singh and rest promise to vote Mayawati. On election day 15% of the voters went back on their promise to vote for Mulayam Singh and 25% of the voters went back on their promise to vote for Mayawati. Mayawati won by 1500 votes. Find the total number of voters.	\N
1094	112	2	दो उम्मीदवारों विनय और उदित के मध्य चुनाव हुआ, 13.33 % मतदाताओं ने मतदान में भाग नहीं लिया। 16.66% वोट अवैध घेषित किए गए और विजेता को कुल वैध वोटों का 56.25% मिला और 5460 वोटों से जीत गया। मतदान सूची में मतदाताओं की कुल संख्या कितनी होगी ?	In an election between two candidates Vinay & Udit. 13.33% voters didn’t participate in voting. 16.66% votes were declared invalid and the winner got 56.25% of the total valid votes and won by 5460 votes. Find the total number of voters in the voting list.	\N
1096	112	2	एक कम्पनी अपने सेल्समैन को कुल बिक्री का 8.5 % कमीशन देती है। ओर 20,000 से ऊपर बिक्री पर 1.5 % कमीशन कम देती है। अगर सेल्समैन अपना कमीशन काटने के बाद कम्पनी में 42480 रू॰ जमा करवाता है तो सेल्समैन द्वारा की गई कुल बिक्री ज्ञात करों।	A salesman get 8.5 % commission of selling up to 20,000 and he get 1.5 %  less exceeds on this. If salesman remits 42480 Rs. To his parent company than find his total sell ?	\N
1097	112	3	एक कम्पनी 12,000 तक की बिक्री पर अपने सेल्समैन को 27 % कमीशन देती है और 12,000 से ऊपर 21 % कमीशन देती है। अगर सेल्समैन अपना कमीशन काटने के बाद कम्पनी में 43678 रू॰ जमा करवाता है तो कुल बिक्री ज्ञात करों। 	A salesman get 27% commission up to selling of 12,000 and 21 % commission exceeding on this. If he remits. 43678 is. To his parent company than find total sell ?	\N
1098	112	1	एक सेल्समैन को 3000रू तक की बिक्री पर a % कमीशन मिलता है और उससे ऊपर की बिक्री पर b % कमीशन मिलता है। जनवरी के महीने में कुल 7000रू की बिक्री पर उसने 960रू कमाये तथा फरवरी में 8000रू की कुल बिक्री पर 1110 कमाये। तो a और b का मान ज्ञात करों?	A salesman makes a commission of a% on the first 3000 Rs worth of sales and b% commission on further sales. During the month of Jan he makes Rs.960 from the total sales of Rs.7000 and during Feb rs.1110 from a total sales of 8000 rs. Find the value of a and b?	\N
1109	112	3	200 ली. के एक मिश्रण में 15% पानी तथा शेष दूध है। इस मिश्रण में कितना दूध मिलाया जाए कि नये मिश्रण में 87.5 % दूध होे?	200 ltr. Mixture contain 15 % water and remaining milk. How much milk should be added into it. So that the milk become 87.5 % ?	\N
1101	112	2	जब चीनी के मूल्य में 20 प्रतिशत वृद्धि होती है, तो एक परिवार अपना उपभोग इस प्रकार कम करता है कि चीनी पर व्यय केवल 15 प्रतिशत बढ़ता है। यदि मूल्य बढ़ने से पहले 24 किग्रा चीनी की खपत होती थी, तो नई मासिक खपत ज्ञात कीजिए।	Price of suger isincreased by 20% so that a family decreases his consumption such that the expenditure is increased by 15% only . if the consumption of sugar 24kg before hiking in price than find the new consumption ?	\N
1102	112	2	एक मजदूर प्रति सप्ताह 60 घंटे काम करता हेै तथा 2400रू मजदूरी के रूप में प्राप्त करता है। उसके प्रति घंटे की मजदूरी को 40% से बढा दिया गया है तथा काम करने के घंटे को 16(2/3)% से कम कर दिया गया है उसकी साप्ताहिे मजदूरी में कितने प्रतिशत की व्रद्वि या कमी हुई ?	A labour works for 60 hrs a week and gets Rs.2400 as wages. If his 1 hr wages are increased by 40% and his working hrs are reduced by 16(2/3) % his , then by how much will his wages increase or decrease?	\N
1104	112	2	एक फैक्र्टी में उत्पादन प्रतिवर्ष निश्चित दर से बढ़ता है। दर ज्ञात करो यदि ज्ञात है कि उत्पादन दो वर्षों बाद दोगुना हो जाता है ?	In a factory kept increasing its output by the same % every year. Find the % if it is known that his output is doubled after 2 year?	\N
188	60	2	98×17373×153×96×127 अंतिम दो अंक ज्ञात करों ?	98×17373×153×96×127 find last two digit?	\N
922	76	2	A,B और C किसी काम को 10, 20 और 25 दिन में खत्म करते है। इस काम को खत्म करने में कितना न्यूनतम समय लगेगा, यदि एक दिन में 2 से ज्यादा व्यक्ति काम नहीं कर सकते तथा समान युग्म दो लगातार दिन में कार्य नहीं कर सकते ?	A,B and C can do a piece of work in 10, 20 and 25 days. How much minimum time should be required to complete this work if more than two persons can not work in a day and in any two consecutive days same pair can notwork.	\N
923	76	2	(A + B) किसी काम को 6 दिन में तथा (A + B + C) 5 दिन में करते हैं। (A + C), (B + C) से 2.5 दिन कम लेते हैं। तो B कितने दिन में काम पूरा करेगा ?	(A+B) can do a work in 6 days. (A+B+C) can do the same work in 5 days. A and C take 2.5 days less than B and C. Then find the number of days taken by B  to complete the work.	\N
924	76	2	A किसी काम को करने में (A + B) से 27 दिन ज्यादा लेता है। B उसी काम को करने में (A + B) से 3 दिन ज्यादा लेता है। तो (A + B) काम को कितने दिन में काम करेंगे ?	A takes 27 days more than (A+B) together to complete a work. B takes 3 days more than (A+B) together to complete a work, in how many days will (A+B) complete this work.	\N
925	76	1	A किसी काम को करने में (A+B+C) से 6 घंटे ज्यादा लेता है। जबकि B इसी काम को करनेे में (A+B+C) से 1 घंटे ज्यादा लेता है। C उसी काम को करने में (A+B+C) से दोे गुना समय लेता है। तो (A+B) इस काम को कितने दिन मेें करेंगे ?	A takes 6 hours more than (A+B+C) together to complete a work. B takes 1 hours more than (A+B+C) together to complete a work. C takes twice as (A+B+C) together to complete a work. In how many days will A and B together complete this work.	\N
928	76	1	B,A से 4 गुना काम करता है तथा B,A से 15 दिन कम लेता हेै। दोनों अलग-अलग कितने दिन में करेगें?	B works four times as much as A. If B takes 15 days less than A to complete this work. In how many days will A and B alone complete this work.	\N
1053	79	3	एक आयतकार क्षेत्रफल कितने प्रतिशत बढ़ जायेगा, यदि लम्बाई 23% और चैड़ाई 9% बढ़ा दी जाये ?	How much percent will the area of a rect∠ exceed if its length is increased by 23% and breadth is increased by 9%. 	\N
1106	112	1	एक चुनाव में P तथा Q ने भाग लिया। जिसमें Q हार गया। यदि Q को 25% मत अधिक मिलते है अब Q, P से उतने 3 गुना वोटों से जीतता है, जितना P पहले Q से जीता था यदि कुल मतों की संख्या 4250 है। तो ज्ञात कीजिये P को कितने मत मिले ?	In an election between two parties P and Q, Q is looser if Q gets 25% more votes then he wins by thrice the majority than that of P. if total number of votes are 4250. How many votes did P get?	\N
1107	112	2	अगर इनकम टैक्स 17% बढ़ जाए तो शुद्ध इनकम 3% कम हो जाती हैं। इनकम टैक्स की दर ज्ञात करो।	If income tax is increased by 17 % than the net income decreased by 3 % than find rate of Income tax ?	\N
248	61	1	एक ब्रिज की लम्बाई, जिसको 140मी. लम्बी एक टृेन 63 किमी/घ्ंटा की गति से 60 सेकंड में पार करती है-	The length of the bridge, which a train 140m long and travelling at 63km/hr can cross in 60 seconds, is:	\N
1108	112	1	ताजे फलों में 68 प्रतिशत पानी है और सूखे फलों में 20 प्रतिशत पानी है। 75 किलो ताजे फलो से कितने किलों सूखे फल बनाए जा सकते है।	Fresh fruit contain 68 % water and dray fruit cantain 20 % water than find How much dray fruit can be obtain by 75 kg fresh fruit ?	\N
275	61	2	निम्नलिखित में से कौन मौलिक अधिकारों का संरक्षक है ?	\tWhich one of the following is the guardian of Fundamental Right?	\N
1110	112	3	20 प्रतिशत अल्कोहल वाले 32 लीटर के घोल में 8 लीटर पानी मिलाया जात है। अब इस घोल मेें अल्कोहल की अनुमति मात्रा का % क्या है?	8 ltr water are mixed in 32 ltr. Mixture which contain 20 % alcohol. Than find the % of alcohol in the mixture ?	\N
1111	112	4	किसी स्कूल के लड़कों की संख्या और लड़कियों की संख्या का अनुपात 4: 1 है। यदि लड़कों के 75% तथा लड़कियों के 70% को छात्रवृŸिा मिलती है, तो बताइए कितने % छात्रो को छात्रवृŸिा नहीं मिलती है।\n\n	The ratio of the number of boys to that of girls in a school is 4 : 1. If 75 % of boys and 70 % of the girls get scholarship holders, then the percentage of students who do not get scholarship is :	\N
1112	112	2	राम के खर्च तथा बचत का अनुपात 5: 3 है। यदि उसकी आय 12 प्रतिशत बढ़ जाती है, और खर्च 15 प्रतिशत बढ़ जाती है तो उसकी बचत कितना प्रतिशत बढ़ेगी ?	Ratio of expenditure to savings of ram is 5 : 3 . If his income in creases by 12 % and expenditures increases by 15 % than find % increases in his savings?	\N
249	61	2	निम्न में से कौनसा क्रम सही है।	Which of the order is correct below:	\N
750	72	1	काइज्मेटा का निर्माण कौन सी अवस्था में होता हैं ?	-	\N
992	78	2	\tA ने B को 2500 रू. 7% वार्षिक साधारण ब्याज की दर से तथा C को कुछ धन समान दर से उधार दिया। यदि 4 वर्ष बाद A को B और C से कुल 1120 रू. प्राप्त हों तद्नुसार C को कितना धन उधार दिया गया ?	A lends Rs. 2500 to B and a certain sum to C at the same rate at 7% per annum, simple interest. If after 4 years, A altogether receives Rs. 1120 as interest from B and C, then find the sum lent to C.	\N
1171	113	3	यदि 3000 रू. कुछ वर्षों में चक्रवृद्धि ब्याज पर 4320 रू. हो जाते है, तो उससे आधी अवधि में 3000 रू. कितने हो जाएँगें ?	If in a certain number of years Rs. 3000 amount to Rs. 4320 at compound interest, in half time Rs. 3000 will amount to.	\N
286	61	1	गुजरात में पहली बार जजिया कर किसने लागू किया था ? 	Who implemented Jizyah tax for the first time in Gujarat ?	\N
1055	79	1	दूध की कीमत में 35% की वृद्धि होने पर कोई ग्रहणी अपनी खपत में कितनी कमी करे कि उसका खर्चा केवल 8% बढ़े।	A student multiplied a number by 3/5 instead of 5/3 than find % error in the answer ?	\N
1201	114	2	एक दुकानदार 33 मीटर कपड़े को बेचकर 11 मीटर कपड़े के क्रय मूल्य के बराबर लाभ प्राप्त करता है। उसका लाभ प्रतिशत ज्ञात करें।	By selling 33 mtr cloths there is a profit is equal to the cost price of 11 mtr cloth than find actual % profit?	\N
189	60	3	यदि दो संख्याओं को एक निश्चित संख्या N से भाग दिया जाये तो 3 और 4 क्रमागत शेष बचते है। यदि उन संख्याओं के योग को उसी संख्या N से भाग दिया जाये तो 2 शेष बचता है। N क्या है?	If two number are each divided by the same divisor, the remaindres are respectively 3 and 4. If the sum of the two numbers be divided by the same divisor, the remainder is 2. The divisor is.	\N
190	60	2	किसी संख्या को 3 से भाग देने पर 1 शेष बचता है। यदि भागफल को 2 से भाग दिया जाये तो 1 शेष बचता है। यदि संख्या को 6 से भाग दिया जाये तो शेषफल क्या बचेगा?	A number when divided by 3 leaves a remainder 1. When the quotient is divided by 2, it leaves a remainder 1. What will be the remainder when the number is divided by 6.	\N
191	60	2	15 अंकों की सबसे छोटी संख्या जिसका एक गुणनखण्ड 123 हो?	The least number of five digits which has 123 as a factor is.	\N
192	60	2	संख्याओं 2,4,6,8.......98,100 की आपस में गुणा की जाती है। गुणनफल के अन्त में शून्यों की संख्या होगीः	The numbers 2,4,6,8…….,98,100 are multiplied together. The number of zeros at the end of the product must be.	\N
193	60	2	23! में सैंकड़े के स्थान पर कौनसा अंक है ?	The digit at Hundered’s place value of 23! is\n\n	\N
194	60	4	9999999.........102times को पूर्णतः विभाजित करेगी	9999999…..102 times is exactly divisible by 	\N
195	60	4	एक पिकनिक पार्टी का प्रत्येक सदस्य, सदस्यों की कुल संख्या के दोगुने रूपये देता हैं। यदि कुल संकलन रू. 3042 हो तो पार्टी में सदस्यों की संख्या कितनी है?	Each member of a picnic party contributed twice as many rupees as the total number of members and the total collection was Rs. 3042. The number of members present in the party was.	\N
196	60	2	वह सबसे बड़ी संख्या जो (n³-n) के रूप वाली प्रत्येक संख्या को पूर्णतः विभाजित करेगी जहां n एक प्राकृृतिक संख्या है?	The largest number that exactly divides each number of the form n³-n, where n is a natural number is.	\N
197	60	4	किसी संख्या को 13 से भाग देने पर 1 शेष बचता है। यदि भागफल को 5 से भाग दिया जाये तो 3 शेष बचता हे। यदि संख्या को 65 से भाग दिया जाये तो शेषफल क्या बचेगा?	A number divided by 13 leaves a remainder 1 and if the quotient, thus obtained, is divided by 5, we get a remainder of 3. What will be the remainder if the number is divided by 65.	\N
198	60	1	मान लिया जाए कि n वह अधिकतम संख्या है, जिससे 1305, 4665 तथा 6905 को भाग देने पर प्रत्येक स्थिति में बराबर शेष बचता है, तो n संख्या के अंकों का योग ज्ञात करें?	Let N be the greatest number that will divide 1305,4665 and 6905 leaving the same remainder in each case.	\N
199	60	2	10,000 निकटतम वह संख्या क्या है, जो 3,4,5,6,7 तथा 8 से पूर्णतः विभाजित हो?	The number nearest to 10000, which is exactly divisible by each of 3,4,5,6,7 and 8, is.	\N
290	61	1		34, 45, 56, 67, ?	\N
291	61	4		47, 38, ?, 23, 17, 12, 8	\N
200	60	1	अंग्रेजी, गणित तथा विज्ञान की किताबों के तीन सेट में क्रमशः 336, 240 तथा 96 किताबें हैं इन किताबों को इस तरह से स्टेकों में लगाना है। कि प्रत्येक स्टेक की ऊँचाई बराबर है और सभी किताबें विषयवार ढंग से रखी गई हो, तो स्टेकों की संख्या ज्ञात करें।	Three sets of 336 English books, 240 Mathematics books and 96 Science books have to be stacked in such a way that all the books are stored subjectwise and the height of each stack is the same. Total  number of stacks will be.	\N
201	60	2	4 अंकों की वह अधिकतम संख्या क्या है, जो 12,15,18 तथा 27 से पूर्णतः विभाजित है?	The largest 4 digit number exactly divisible by each of 12, 15, 18 and 27 is.	\N
202	60	5	छात्रों की अधिकतम संख्या ज्ञात करें जिनके बीच 1001 कलम तथा 910 पेंसिलों को इस तरह बाँटा जाता है कि प्रत्येक छात्र को बराबर संख्या में कलम तथा बराबर संख्या में पेंसिल प्राप्त होता है।	The maximum number of students among whom 1001 pens and 910 pencils can be distributed in such a way that each student gets same number of pens and same number of pencil, is.	\N
203	60	3	1936 में से वह कौन सी न्यूनतम संख्या घटायी जाए कि प्राप्त संख्या में 9, 10 तथा 15 से भाग देने पर प्रत्येक स्थिति में 7 शेष बचे?	What least number must be subtracted from 1936 so that the resulting number when divided by 9,10 and 15 will leave in each case the same remainder 7.	\N
204	60	4	तीन अलग-अलग संख्याओं का ल.स. 120 है, तो इनमें से कौन उनका म.स. नहीं हो सकता?	The LCM of three different number is 120. Which of the following cannot be their HCF.	\N
210	60	1	दो संख्याओं का योग 1215 है और उनका HCF 81 है। ऐसी संख्याओं के कितने युग्म संभ्व हैं ?	The sum of two numbers is 1215 and their HCF is 81. How many pairs of such number is possible? 	\N
211	60	3	तीन संख्याएॅं जो सहअभाज्य है और पहले दो संख्याओं का गुणनफल 551 है और अंतिम दो संख्याओं का गुणनफल 1073 है। तीन संख्याओं का योग हैः	Three numbers which are coprime to one another are such that the product of the first two is 551 and that of the last two is 1073. The sum of the three numbers is: 	\N
212	60	2	एक नौकर को निश्चित दिनों के लिए काम पर रखा गया जिसके लिए उसे 3239रु दिया जाना था वह कुछ दिनों के लिए अनुपस्थित रहा एवं उसे केवल 2923 रु दिया गया, उसकी अधिकतम दैनिक मजदूरी क्या थी ?	A servant was hired for fixed days for which he had to pay Rs. 3239. he was absent for some days, and only Rs 2923 was paid, what was his maximum daily wages? 	\N
213	60	3	दो संख्याओं का HCF और LCM क्रमशः 48 और 720 है। दो संख्याओं का अनुपात 3: 5 है। फिर बड़ी संख्या क्या है ?	The HCF and LCM of two numbers are 48 and 720. Ratio of two numbers is 3:5. Then find the larger number. 	\N
217	60	3		 	57f6ad68342a82625c29c0ab2cdc6f07
218	60	5		 	f95bf1fe385400220f7d323a7fd95644
219	60	3		 	9cd8f24a094c2d757803c5b8f1b9483a
220	60	4		 	2fca4a613cde4f27bb41b39125a4ad46
208	60	4	दो संख्याए 6: 11 के अनुपात में हैं। यदि उनका hcf 28 है, तो इन दो संख्याओं का योग होगा ?	\tTwo numbers are in the ratio 6:11. If their HCF is 28, then the sum of these two numbers will be 	\N
209	60	2	दो संख्याए 5: 7 के अनुपात में हैं। उनके lcm तथा  hcf का गुणनफल 12635 है। संख्याओं का योगफल होगा ?	\tTwo numbers are in the ratio of 5: 7. The product of their LCM and HCF is 12635. then the sum of the numbers will be. 37.\tTwo numbers are in the ratio of 5: 7. The product of their LCM and HCF is 12635. then the sum of the numbers will be. 	\N
206	60	1	6़-अंक की सबसे छोटी से छोटी संख्या ज्ञात करें जिसे क्रमशः 15,25,35,42 और 70 से विभाजित करने पर, क्रमशः 11,21,31,38 और 66 शेष बचता है ?	\tThe least number of 6-digit which when divide by 15,25,35,42 and 70 respectively, leave the remainder 11,21,31,38 and 66 respectively?	\N
205	60	4	वह छोटी से छोटी वर्ग संख्या ज्ञात करें जो 56,60,84 और 96 द्वारा पूरी तरह से विभाज्य है ?	Find the least perfect ² number which is completely divisible by 56, 60, 84 and 96? 	\N
227	61	4	जब एक निर्माता एक विशेष वस्तु के लिए 5000रु के थोक मूल्य पर 10% की छूट देता है, तो वह 25% का लाभ अर्जित करता है। निर्माता उस वस्तु पर कितना लाभ अर्जित करता है ?	When a manufacturer allows 10% commission on the wholesale price of Rs 5000 for a particular item, he earns a profit of 25%. How much profit does the manufacturer earn on that item ?	\N
228	61	4	एक दुकानदार खरीदते और बेचते समय दोषपूर्ण भारों का प्रयोग करता है। वह चावल खरीदते समय 1.2 किग्रा के भार (1 किग्रा की बजाय) का प्रयोग करता है तथा इसे बेचते समय 750 ग्राम के भार (1 किग्रा की बजाय) का प्रयोग करता है। तो उसका कुल लाभ या हानि प्रतिशत ज्ञात करें ?	A shopkeeper uses faulty weights at the time of buying and as well as selling. If he uses a weight of 1.2kg (instead of 1 kg) at the time of buying rice and 750 gm (instead of 1 kg) at the time of selling, then find his overall profit or loss percent.	\N
229	61	1	15 सेमी त्रिज्या की एक गोलाकार स्टील की गेंद को पिघलाकर 10 सेमी व्यास का एक तार बनाया गया है। तार की लंबाई ज्ञात करें ?	A spherical steel ball of radius 15 cm is melted and a wire of diameter 10 cm is made. Find the length of the wire.	\N
231	61	3		If P:Q = 2:3 and P:R = 4:5, then what is (P+Q) : (Q+R)?	\N
232	61	2	दो नियमित बहुभुज की भुजाओं का अनुपात 1: 2 है। उनके आंतरिक कोण का अनुपात 3ः4 है। बहुभुज की भुजाओं की संख्या है ?	Ratio of sides of two regular polygon is 1:2. Ratio of their interior∠ is 3:4. Number of sides of the polygon is-	\N
233	61	4	एक विषय में 7 छात्रों द्वारा प्राप्त अंक 30, 55, 75, 90, 50, 60, 39 हैं। उन छात्रों की संख्या कितनी है, जिन्होंने माध्य अंकों से कम अंक प्राप्त किये हैं ?	Marks obtained by 7 students in a subject are 30, 55, 75, 90, 50, 60,39. The number of students securing marks less than the mean marks is-	\N
234	61	2	एक समलंब की दो समांतर भुजाओं की लंबाई 30 सेमी और 40 सेमी है। यदि समलंब का क्षेत्रफल 350 वर्ग सेमी है, तो समलंब की उॅंचाई (सेमी में) क्या है ?	The length of two parallel sides of a trapezium is 30cm and 40cm. If the area of the trapezium is 350 cm² , then what is the height of the trapezium(in cm)?	\N
235	61	1	रेखा x-y = 5  से बिंदु (-2, 3)  की दूरी क्या है ?	The distance of point (-2, 3) from the line x-y =5 is :	\N
236	61	1	दो संख्याएं 4: 9 के अनुपात में है और उनका म.स.प. 11 है, उनका ल.स.प. है:	Two numbers are in the ratio 4 : 9 and their HCF is 11. Their LCM is :	\N
237	61	3		472 : 564 :: 673 : ?	\N
238	61	1		2, 3, 10, 39, ? , 885	\N
239	61	2	ABC एक त्रिभुज है AB=AC=5 सेमी और BC=8 सेमी। ।AD,BC के लंबवत है। त्रिभुज ABD का क्षेत्रफल वर्ग से.मी. में ज्ञात कीजिए।	ABC is a tri∠ AB=AC=5 cm, and BC=8cm. AD is perpendicular to BC. What is the area (in cm²) of tri∠ ABD ?	\N
240	61	4	यदि θ=30 है, तो tan² θ + cot² θ का मान है ।	If the value of, θ =30° then the value of  tan² θ + cot² θ is:	\N
241	61	3	एक धनराशि को 5 वर्षों के लिए साधारण ब्याज पर निवेश किया गया। यदि ब्याज की दर में 2% की वृद्धि हो जाती है, तो ब्याज 190रु बढ़ जाता है। निवेशित की गयी धनराशि (रु में) क्या है ?	A sum was invested on SI at a certain rate for 5 years. If the interest rate is increased by 2%, then the interest increases by Rs.190.What is the sum (in Rs) invested?	\N
242	61	1		DAM : FCO :: PEN : ?	\N
243	61	4	एक संख्या को पहले 20% बढ़ाया जाता है और फिर इसे 10% घटा दिया जाता है। संख्या में प्रतिशत परिवर्तन क्या है ?	A number is increased first by 20% and then it is decreased by 10%. What is the percentage change in the number?	\N
244	61	2	दो संख्याओं का अनुपात 3: 1 है और उनका योग 72 है। संख्याओं के बीच अंतर ज्ञात कीजिए ?	The ratio of two numbers is 3:1 and their sum is 72. Find the difference between the numbers.	\N
245	61	2	एक पानी का टैंक 11 मीटर लंबा, 10 मीटर चैड़ा और 9 मीटर उॅंचा है। इसे 6 मीटर के स्तर तक पानी से भरा गया है। टैंक का कितना भाग खाली है?	A water tank is 11m long, 10m wide and 9m high. It is filled with water up to the level of 6m. What part of the tank is empty?	\N
246	61	1	यदि किसी धनराशि पर प्रतिवर्ष 7% दर पर 2 वर्ष के लिए साधरण ब्याज 70रु है, तो समान दर पर और समान समय में कितना चक्रवृद्धि ब्याज होगा ?	If the simple interest on a sum of money for 2 years at 7% per annum is Rs.70, what is the compound interest on the same at the same rate and for the same time?	\N
247	61	3	600रु पर 50% की एक छूट और उसी धनराशि पर लगातार 40% और 10% की दो क्रमिक छूट के बीच कितना अंतर है-	The difference between a discount of 50% on Rs.600 and two successive discounts of 40% and 10% of the same amount is-	\N
250	61	3	एक बाॅक्स में केवल एक रुपए और पचास पैसे मूल्य के 210 सिक्के हैं। उनके क्रमिक मानों का अनुपात 13: 11 है। एक रुपए के सिक्कों की संख्या है-	A box has 210 coins of denomination one rupees and fifty paisa only. The ratio of  their respective values is 13 : 11. The number of one-rupee coins is-	\N
251	61	4	महेश ने एक बस को 15% की हानि पर 22,100रु में बेचा। 15% का लाभ अर्जित करने के लिए बस को किस मूल्य पर बेचना चाहिये ?	Mahesh sold a bus for Rs.22,100 with a loss of 15%. At what price should the bus be sold to get a profit of 15%?	\N
252	61	4	एक भिन्न का अंश, इसके हर से 15 कम है। भिन्न के अंश और हर दोनों में 4 जोड़ने पर, भिन्न 2/7 बन जाती है। भिन्न है-	\tThe numerator of a fraction is 15 less than its denominator. On adding 4 to both the numerator and denominator of the fraction, the fraction becomes  2/7. The fraction is-	\N
254	61	2	एक दौड़ती रेलगाड़ी की गति 110km/hr है और ठहराव के साथ 99km/hr है। तब रेलगाड़ी प्रति घंटे कितने मिनट रुकती है-	The speed of a running train is 110 km/h. and the speed of the stopping train is 99km/h. Then how many minutes the train stops per hour-	\N
255	61	2	एक वर्ग का परिमाप, एक आयत के परिमाप के बराबर है, जिसकी लंबाई 18 सेमी और चैड़ाई 12 सेमी है उस अर्द्धवृत्त की परिधि ज्ञात कीजिये जिसका व्यास वर्ग की भुजा के बराबर है ?	The perimeter of a sqr is equal to perimeter of a rectangl of length 18cm and breadth 12cm. Find the circumference of a semi-circle whose diameter is equal to side of a sqr. 	\N
256	61	2	सानू एक कार्य को 12 दिनों में पूरा कर सकता है। यदि सानू और रानू एक साथ कार्य करते हैं, तो वे कार्य को 6(2/3) दिनों में पूरा कर सकते हैं। रानू अकेले कार्य को कितने दिनों में पूरा कर सकता है ?	Sanu can complete a job in 12 days. If Sanu and Ranu work together, they can complete the job in 6 (2/3) days. Ranu alone can complete the job in-	\N
257	61	5	पांच दोस्तों में से कौन सबसे लंबा है ?\n\n1)  D, A और C से लंबा है।\n\n2)  B, E से छोटा है लेकिन D से लंबा है।\n\n	Among five friends who is the tallest?\n\n1) D is taller than A and C.\n\n2)\tB is shorter than E but taller than D.\n\n	\N
607	69	2	एक निर्माता थोक विक्रेता को उत्पाद 6 प्रतिशत लाभ पर बेचता है, थोक व्यापारी उत्पाद को खुदरा विक्रेता को 8 प्रतिशत लाभ पर बेचता है और खुदरा विक्रेता उत्पाद को अपने ग्राहक को 10 प्रतिशत लाभ पर बेचता है। ग्राहक द्वारा भुगतान की गई कीमत रु 31482 है। निर्माता को उत्पाद की लागत है:	A manufacturer sells the product to a wholesaler at 6% profit, the wholesaler sells the product to a retailer at 8% profit and the retailer sells the product to his customer at 10% profit. The price paid by the customer is Rs.31,482. The cost of the product to the manufacturer is: 	\N
608	69	4	यदि बिक्री का मूल्य तीन गुना है और लागत मूल्य दोगुना हो तो लाभ 65 प्रतिशत हो जाएगा। मौजुदा लाभ (प्रतिशत में ) क्या है ?	If the Selling price is tripled and cost price doubled the profit would become 65%. What is the present profit (in %) ? 	\N
609	69	3	एक कलम का विक्रय मूल्य 171रु है। यदि उसका क्रय मूल्य तथा प्रतिशत लाभ का संख्यात्मक मान समान हो तो क्रय मूल्य क्या है ?	SP of a pen is Rs171. If profit % made on article is same as CP of article then find CP? 	\N
610	69	2	एक आदमी ने कुछ वस्तुऐं 13 रु में 15 दर से खरीदी तथा उसने सभी वस्तुओं को 17 रु में 18 की दर से बेच दिया। यदि कुल मिलाकर उसे 14.7 रु का लाभ हुआ तो कुल खरीदी गई वस्तुओं की संख्या ज्ञात करें ?	A person buys some articles at the rate of 15 for Rs.13 and sells all the articles at the rate of 18 for Rs.17.if he made a profit of 14.7 Rs in whole transaction then how many articles did he buy?	\N
611	69	2	एक किताब पर छूट विक्रयमूल्य का 30 प्रतिशत है और छूट प्रतिशत , लाभ प्रतिशत के बराबर है तो छूट और क्रय मूल्य का अनुपात ज्ञात करो।	If the discount of a book is 30 % of the SP and discount % equals profit % then find the ratio of discount offered to the CP ?	\N
264	61	3	 	Asylum : Refuge :: Dungeon : ?	\N
296	61	2		LNPQ: ACEF : : TUXY : ?	\N
270	61	2	आॅस्कर अकादमी पुरस्कार समारोह किस देश में आयोजित किया जाता है ?	Oscar academy award function is held in which country ?	\N
271	61	4	नाइट्र्ग्लिसरीन है ?	Nitroglycerin is?	\N
274	61	2	पनामा पेपर किससे संबंधित है ?	Panama Papers are related to-	\N
279	61	4	केंद्र सरकार निम्नलिखित में से कौन सा शुल्क लेती है और एकत्र करती है ?	The Union Government levies and collects which of the following?	\N
280	61	1	गरम पानी अभ्यारण्य कहाॅे स्थित है ?	Where is the Garampani Santuary located?	\N
282	61	4	डीएनए डबल हेलिक्स का वर्णन किसने किया ?	Who described DNA double helix ?	\N
269	61	2	भारत ने अपने किस पड़ौसी देश के साथ ‘पंचशील‘ समझौते पर हस्ताक्षर किए थे ?	\tIndia signed ‘Panchsheel’ agreement with which of its neighbouring country?	\N
272	61	2	विश्व सीमा शुल्क संगठन (WCO) के एशिया प्रशांत क्षेत्र का उपाध्यक्ष (क्षेत्रीय प्रमुख) किसे बनाया गया हैं ?	\tWho has become the Vice-chair(Regional Head) of the Asia Pacific Region of World Customs Organization(WCO)?	\N
273	61	2	किस टेनिस खिलाड़ी ने चेन्नई ओपन एटीपी चैलेंजर 2019 का खिताब अपने नाम किया है ?	\tWho among the following tennis player has won the Chennai Open ATP Challenger 2019 title?	\N
612	69	3	एक दुकानदार वस्तु का मूल्य 45.45 प्रतिशत बढ़ाकर अंकित करता है और इसके बाद छूट प्रदान करता है। छूट के बाद यदि अंतिम विक्रय मूल्य पर बेचने पर उसे न तो लाभ और न ही हानि हो तो ज्ञात कीजिए दुकानदार कितने प्रतिशत की छूट देता हैै।	A shopkeeper marks his goods up by 45.45% and then offers a discount on the marked price. If the final selling price after the discount results in the shopkeeper making no profit no loss, what was the % discount offered by the shopkeeper?	\N
613	69	3	किसी वस्तु का विक्रयमूल्य, उसके अंकित मूल्य का 71.11 प्रतिशत है। और छूट प्रतिशत, लाभ प्रतिशत का 13/9 गुना है। यदि छूट और लाभ का अंतर 736 रु हैं तो वस्तु के अंकित मूल्य और क्रय मूल्य में अंतर ज्ञात करे।	S.P of an article is 71.11% of its MRP and discount % is 13/9 times of profit %. If the difference between discount offered and profit made is Rs.736. then find the difference between MP and CP of article ?	\N
614	69	3	एक व्यापारी अपनी वस्तुओं पर विक्रय मूल्य, क्रय मूल्य से 30% अधिक अंकित करता है। वह अपनी वस्तुओं का आधा भाग इस मूल्य पर बेचता है। विक्रय मूलय से क्रमशः 15% की छूट पर 1/4 भाग तथा 30% की छूट पर शेष भाग बेचता है। तो उसका कुल % लाभ कितना होगा?	Shopkeeper marks his goods B % above C.P. Half stock is sold at M.P. and 1/4th part at 15% discount and remaining is sold at 30% discount. Find % profit.	\N
615	69	1	10 रू. में 100 आम खरीदे गए हैं। इन 100 आमों को किस दर पर बेचा जाए कि 100रू. पर लाभ 250 आमों के विक्रय मूल के बराबर हो जाए।	Mangoes are bought at Rs 10 per 100. Find the rate at which per 100 must be sold so that the gain on Rs 100 may be equal to SP % 250 mangoes.	\N
616	69	4	अन्ना ने बोनी को अपनी कार 20% लाभ पर बेची। बोनी ने चकोरी को इसे 10% लाभ पर बेची चकोरी ने एक मेकेनिक को 9.09% की हानि पर यह कार बेच दी। मेकेनिक ने अपने क्रय मूल्य का 10% कार पर खर्च किया और उसे 8.33% के लाभ अन्ना को बेच दिया। अन्ना के हानि का % ज्ञात करें?	Anna sold his car to Boney at a profit of 20% and Boney sold it to Chokori at a profit of 10%. Chokori sold it to mechanic at a loss of 9.09%. mechanic spent 10% of his purchasing price and then sold it at a profit of 8.33% to Anna once again. What is the loss Anna.	\N
617	69	2	लागत मूल्य कच्चे माल के मूल्य का तीन गुणा है। यदि कच्चे माल और उत्पादन मूल्य क्रमशः 5: 12 और 4: 5 के अनुपात में बढ़े तो रू. 6 वास्तविक मूल्य वाले वस्तु की कीमत अब होगी?	The prime cost of an article is three times the value of the raw material used. The cost of raw materials increases in the ratio of 5 : 12 and manufacturing expenses in the ratio 4 : 5. The article, which originally cost Rs 6, will now cost.	\N
773	72	3	लघु हिमालय किसके मध्य स्थित है ?	-	\N
300	61	3		If  E = 5, PEN = 35, then PAGE = ?	\N
301	61	4		Which one is different from the rest three?	\N
302	61	3		Which one is different from the rest three?	\N
303	61	3	व्यंजक 4 × 8 × 12× ........ ×924 के अंत में कितने शून्य होंगे ?	How many zeroes will be there at the end of the expression N= 4 ×8× 12× ……..×924? 	\N
307	61	1	द्विपक्षीय वायु अभ्यास  शिन्यूयु मेत्री-18 कहां आयोजित किया गया ?	Where was the bilateral air exercise Shinuyu Maitri-18 organized? 	\N
618	69	3	एक व्यापारी ने अपनी वस्तुओं के मूल्य को उनके क्रय से 20% अधिक पर अंकित किया। उसने आधी वस्तुओं को उनके अंकित मूल्य, एक-चैथाई को 20% की छूट पर तथा शेष को 40% की छूट पर बेचा। उसका कुल लाभ होगा।	A trader marked his goods at 20% above the cost price. He sold half the stock at the marked price. One quarter at a discount of 20% on the marked price and the rest at s discount of 40% on the marked price. His total gain is	\N
619	69	3	तीन वस्तुएं A,B,C पर प्राप्त लाभ % क्रमशः 10%, 20% और 25% है और क्रय मूल्य के दरों का अनुपात क्रमशः 1: 2: 4 है। पुनः A,B और C प्रकार के बेचे गये वस्तुओं की संख्याओं का अनुपात क्रमशः 2: 5: 2 है, तो कुल मिलाकर लाभ % है?\n\n	The profit percentage on the three article A,B and C is 10% ,20%, and 25% and the ratio of the cost prices is \n\n1 : 2 : 4 also the ratio or number of article sold of A, B and C is 2 : 5 : 2 then the overall profit percentage is.\n\n	\N
894	75	3	40 छात्रों के औसत अंक 72 है, बाद में पता चला कि तीन अंको 64, 62, 84 को गलती से क्रमश 68ए 65ए 69 लिख दिया गया था। तो गलती सुधारने के बाद सही औसत क्या होगा ?	Average marks of 40 students is 72. Three numbers 64,62 and 84 were mistakenly read as 68, 65, 73 respectively. Find the actual average.	\N
311	61	3	रेलवे बोर्ड का नया अध्यक्ष किसे नियुक्त किया गया है ?	Who is appointed the new Chairman of the Railway Board? 	\N
312	61	2	राष्टृीय खेल 2022 का शुभंकर किसे चुना गया है।	Who has been chosen the mascot of National Games 2022	\N
315	61	4	हाल में किस को 6 माह के लिए अशान्त क्षेत्र घोषित किया गया ?	Recently, who was declared a turbulent area for 6 months? 	\N
316	61	2	वर्ष 2019 को चीन किस वर्ष के रुप में मनाएगा ?	China will celebrate year 2019 as Which year? 	\N
317	61	1	10 अप्रैल, 2019 को विश्वभर में कौन-सा दिवस मनाया गया ?	Which day was celebrated on April 10, 2019 in the world?	\N
318	61	4	रेलवे द्वारा कितने स्टेशनों पर फ्री वाई-फाई लगाया जाएगा?	How many stations will be provided free Wi-Fi by Railways? 	\N
325	61	3		61 , 52 , 63 , 94 , ?	\N
326	61	4	संख्या 30744 एकल अंकों की संख्या में से किससे विभाज्य है:	The number 30744 is divisible by which of the single digit numbers: 	\N
328	61	1	दर्पण प्रतिबिम्ब ज्ञात करें ?	FIND OUT MIRROR IMAGE OF \n\n"MIX" 	\N
292	61	5		25, 49, 81, ?, 169, 225	\N
293	61	1		A, D, G, ?, M	\N
294	61	3		AZ, BY, CX, DW, ?	\N
295	61	4		CDEF : fghi : : ? : klmn	\N
298	61	2		ABD: CDF: : MNP : ?	\N
319	61	3	यदि COSMOPOLITAN के अक्षरों को अंग्रेजी शब्द कोश के अनुसार व्यवस्थ्ति किया जाए तो दाऐं से आठवां अक्षर क्या होगा?	If the letters of COSMOPOLITAN are arranged αbetically then which letter will take place at 8th position from the right	\N
230	61	2	एक समभुज त्रिभुज ABC का अन्तः केंद्र G है। यदि AB, 12 सेमी है, O,AG का मध्य ंिबदु है तो AO ज्ञात करें ?	The incentre of an equilateral tri∠ ABC is G. If AB is 12 cm, O is the mid point of AG then find AO-	\N
259	61	4	निम्नलिखित प्रश्न में, दिए गए विकल्पों में से विषम अक्षरों का चयन करें।	\tIn the following question, select the odd letters from the given alternatives.	\N
260	61	3	A, B  का पिता है, लेकिन B उसका पुत्र नहीं है। D, A की पत्नी है। C, D का पुत्र है। D, B से कैसे संबंधित है ?	A is father of B, but B is not his son. D is wife of A. C is son of D. How is D related to B?	\N
261	61	4	निम्नलिखित प्रश्न में, उस शब्द का चयन करें जिसे दिए गए शब्द के अक्षरों का प्रयोग करके नहीं बनाया जा सकता है।\n\nTOURNAMENT	Select the word which cannot be formed using the letters of the given word.	\N
262	61	2	आदित्य कहता है कि, ‘मेरे दो बच्चे हैं और अनिल मेरी पुत्री की एकमात्र भतीजी का पिता है‘। अनिल, आदित्य से किस प्रकार संबंधित है ?	Aditya said, ‘I have two children and Anil is the father of my daughter’s only niece.’ How is Anil related to Aditya?	\N
263	61	1	अगर 2011 में क्रिसमस रविवार को था,तो 2012 में यह किस दिन होगा?	If Christmas was on Sunday in 2011, then what will be the day on Christmas in 2012 ?	\N
265	61	3	प्रसिद्ध ताजमहल किस नदी के तट पर स्थ्ति है ?	On which river bank is the famous monument ‘Taj Mahal’ situated ?	\N
266	61	3	म. प्र. में ऋऋऋऋ गुफाएं प्रागैतिहासिक गुफा चित्रों और भित्ति चित्रों का सबसे अच्छा उदाहरण हैं।	____ caves in M.P. are the finest example of prehistoric cave paintings and murals.	\N
253	61	3	निम्नलिखित प्रश्न में, दिए गए विकल्पों में से विषम संख्या युग्म का चयन करें।	\tIn the following question, select the odd number pair from the given alternatives.	\N
258	61	1	शब्दकोश के क्रम में व्यास्थित करने पर कौन सा तीसरा शब्द होगा ?	\tWhich word will appear third when arranged in order of dictionary ?	\N
267	61	4	स्ंक्रामक रोग और बाहरी हमलावरों के विरुद्ध शरीर की रक्षा कौन करता है ?	\tWhich protects the body against infectious disease and foreign invaders ?	\N
268	61	1	निम्नलिखित में से किस व्यक्ति को पंजाब पुलिस के महानिद्रेशक के रुप में नियुक्त किया गया है ?	\tWho among the following has been appointed as Director General of Punjab Police ?	\N
283	61	1	निम्नलिखित में से कौन सा प्लास्टिड पौधों और पेड़ो के पत्तों को हरा रंग देने के लिए जिम्मेदार है ?	\tWhich one of the following plastids is responsible for giving green colours to leaf and stem of plants and trees?	\N
284	61	3	न्यूयाॅर्क टाइम्स टृेवल शो 2019 में किस देश ने बेस्ट इन शो के लिए उत्कृष्टता का पुरस्कार जीता है ?	\tWhich country has won the Award of Excellence for ‘Best in Show’ at New York Times Travel Show 2019?	\N
285	61	1	सबसे पहले लम्बे धनुष का उपयोग किस देश में किया गया था ?	\tIn which country was the use of the longbow first reported.	\N
308	61	2	केंद्र सरकार द्वारा क्रेडिट लिंक्ड सब्सडी स्कीम कि अवधि कब तक के लिए बढ़ाई गई ?	\tHow long was the period of credit linked subsidy scheme extended by the central government? 	\N
309	61	1	प्रधानमंत्री नरेन्द्र मोदी ने 30 जनवरी, 2019 को किस राज्य में नमक सत्याग्रह स्मारक का उद्घाटन किया ?	\tIn which state did Prime Minister Narendra Modi inaugurate the Salt Satyagraha Memorial on January 30, 2019? 	\N
310	61	3	3 जनवरी, 2019 को किस देश में तूफान पाबुक के कारण " फोह फगान व कोह ताओ द्वीप " छोड़कर लोग भाग गए ?	\tOn January 3, 2019, in which country did people fleeing Koh Tao Island due to the storm Pabuk ? 	\N
321	61	2	(?) के स्थान पर दिए गए क्रम में क्या आएगा।	\tWhich will came in place of the question mark (?) in the following letter-number series\n\nM 3 V, O 5 U, R 7 T, T 9 S, W 11 R, ?	\N
323	61	4	यदि आप एक कतार में दोनों छोर से दसवें स्थान पर हैं तो उस कतार में कुल कितने सदस्य हैं ?	\tIf you are tenth in a row from either side, how many persons are there in the row?	\N
322	61	3	यदि दक्षिण-पूर्व को पूर्व कहा जाए, उत्तर-पश्चिम को पश्चिम कहा जाए, दक्षिण-पश्चिम को दक्षिण कहा जाए और इसी प्रकार सभी, तो उत्तर को क्या कहा जाए ?	\tIf South-East is called East, North-West is called West, South-West is called South and so on. What will North be called? 	\N
324	61	2	एक आदमी की पत्नी है, उसके चार विवाहित पुत्र हैं प्रत्येक के दो बच्चे हैं, तो बताइए परिवार में कुल कितने सदस्य हैं ?	\tA person has his wife, 4 married sons each having 2 children. How many members are in the family? 	\N
289	61	3	अदिप्त पेशी डायाफ्राम जो पुतली के आकार को नियंत्रित करता है, -------- के रुप में जाना जाता है।	\tDark muscular diaphragm that controls the size of the pupil is known as ____.	\N
320	61	4	दिए गए अक्षरों के क्रम में कितने P ऐसे हैं जो R के तुरंत पहले हैं लेकिन S के तुरंत बाद नहीं है।	\tIn the following letter series how many P are preceeded immediately by R but not followed immediately by S\n\nP Q S R M P M S R P S R P T Q P M R P N R P S\n\n	\N
620	69	1	एक फल विक्रेता, नियत मूल्य पर आम बेचकर 20% लाभ प्राप्त कर लेता है। यदि वह उन्हीं आमों को प्रति आम रू. 1 कीमत बढ़ाकर बेचे, तो उसका लाभ 40% हो सकता है। तद््नुसार प्रथम स्थिति के अनुुसार एक आम का बिक्री-मूल्य कितना था ?	A fruit marchant earns 20% profit on selling mangoes at certain price. If he increases price of each mango by Re 1 then his profit is 40%. Find initial S.P. of each mango.	\N
447	65	2	100 और 200 के बीच की प्राक्रतिक संख्याओं का योग बताओ, जो 3 का गुणज हो।	The sum of all natural numbers between 100 and 200, which are multiplies of 3 is :	\N
451	65	4	वह न्यूनतम वर्ग की संख्या क्या है, जो 10, 16 तथा 24 से पूर्णतः विभाजित है?	The smallest sqr number divisible by 10, 16 and 24 is.	\N
469	66	4	यदि किसी संख्या में 558 जोड़ा जाये, तो वह संख्या अपने का 444(4/9) % हो जाती है। संख्या ज्ञात करें ?	If 558 is added in a number then number becomes 444 (4/9) % of itself. Find the original number.	\N
839	74	2	ΔABC में, I अंतः केन्द्र है, और ∠A =60 तो ∠BIC का मान क्या होगा ?	 	\N
374	64	4	8 बच्चे एवं 12 पुरूष मिलकर किसी कार्य को 9 दिनों मे पूरा करते हैं। यदि प्रत्येंक बच्चा, एक पुरूष की तुलना में कार्य पूरा करने में दुगुना समय लेता है, तो उसी कार्य को 12 पुरूष मिलकर कितने दिनों में पूरा करेंगें?	8 children and 12 men complete a certain piece of work in 9 days. If each child takes twice the time taken by a man to finish the work, in how many days will 12 men finish the same work?	\N
375	64	1	A एक कार्य को 10 दिन, B 12 दिन तथा C 15 दिन में पूरा कर सकता हैं। उस तीनों ने मिलकर कार्य आरम्भ किया, किन्तु A को कार्याम्भ के 2 दिन पश्चात् तथा B को कार्य समापन से 3 दिन पहले कार्य छोड़करी जाना पड़ा। कार्य कितने दिन में पूरा हुआ?	A can complete a work in 10 days, B in 12 days and C in 15 days. All of them began the work together; but A had to leave the work after 2 days of the start and B, 3 days before the completion of the work. How long did the work last?	\N
376	64	4	कुछ व्यक्ति मिलकर किसी कार्य को 160 दिनों में पूरा करते हैं। यदि 18 व्यक्ति और होते तो कार्य पूरा करने में 20 दिन कम समय लगता। आरंभ में वहाँ कितने व्यक्ति थे?	A certain number of men complete a work in 160 days. If there were 18 men more, the work could be finished in 20 days less. How many men were originally there?	\N
377	64	2	व्यक्तियों का एक दल किसी कार्य को 10 दिनों में पूरा करने का निश्चय करता है, लेकिन इनमें से 5 अनुपस्थित हो जाते हैं। यदि शेष व्यक्ति इसी कार्य को 12 दिनों में पूरा करते हैं। तो व्यक्तियों की संख्या आरंभ में कितनी थी?	A group of men decided to do a work in 10 days, but five of them absented themselves. If the rest of the group finished the work in 12 days, find the original number of men.	\N
457	65	4	एक छात्र ने एक संख्या को 5/6  के बजाय 6/5  से गुणा कर दिया। उसके उतर में गलती % ज्ञात करो।	A student multiplied a number by 6/5  instead of 5/6  than find % error in the answer ?	\N
378	64	1	30 व्यक्तियों का एक दल 38 दिनों में एक कार्य समाप्त करता है। 25 दिनों बाद 5 और व्यक्ति नियुक्त किए गए और कार्य समय से एक दिन पूर्व पूरा कर लिया गया। यदि 5 अतिरिक्त व्यक्तियों की नियुक्त नहीं होती, तो कार्य पूरा होने में कितने दिनों की देरी होती?	A team of 30 men is supposed to do a work in 38 days. After 25 days, 5 more were employed and the work was finished one day earlier. How many days would it have been delayed if 5 more men were not employed?	\N
379	64	3	तीन नल A,B एवं C एक हौज को 6 घंटे में भरता है। 2 घंटे एक साथ काम करने के बाद C को बंद कर दिया जाता है तथा A एवं B उसे 7 घंटे में भर सकते हैं। हौज को भरने में C अकेला कितना समय लेगा?	Three pipes A, B and C can fill a cistern in 6 hours. After working at it together for 2 hours, C is closed and A and B can fill the remaining part in 7 hours. The time taken by C alone to fill the cistern is	\N
380	64	4	दो नल A तथा B एक साथ चालू करने पर एक टैंक को पानी से पूरा भरने में 36 मिनट का समय लगता है। यदि नल B को 30 मिनट बाद बन्द कर दिया जाए, तो टैंक 40 मिनट में पूरा भरता है। नल B अकेले उस टैंक को कितने समय में भरेगा?	A tank can be filled with water by two pipes A and B together in 36 minutes. If the pipe B was closed after 30 minutes, the tank is filled in 40 minutes. The pipe B can alone fill the tank in–	\N
381	64	2	एक नल एक हौज को 12 मिनट में भर सकता है तथा दूसरा नल उसे 15 मिनट में भर सकता है, लेकिन एक तीसरा नल उसे 6 मिनट में खाली कर सकता है। प्रारंभ में 5 मिनट तक पहले दोनों नलों को खोल दिया जाता है तथा उसके बाद तीसरा नल भी खोल दिया जाता है। हौज कितने समय में खाली हो जाएगा?	A pipe can fill a tank in 12 minutes and another pipe in 15 minutes, but a third pipe can empty it in 6 minutes. The first two pipes are kept open for 5 minutes in the beginning and then the third pipe is also opened. In what time is the cistern emptied?	\N
382	64	2	नल A एक हौज को 20 घंटो में भर सकता है जबकि नल B अकेले उसे 30 घंटे में भर सकता है तथा नल C भरे हुए हौज को 40 घंटे में खाली कर सकता है। यदि सभी नलों को एक साथ खोल दिए जाएँ, तो हौज को भरने में कितना समय लगेगा?	Pipe A can fill a tank in 20 hours while pipe B alone can fill it in 30 hours and pipe C can empty the full tank in 40 hours. If all the pipes are opened together, how much time will be needed to make the tank full?	\N
383	64	1	5 आदमी और 5 महिलाएं 3 दिनों में रू 660 कमाते है, 10 आदमी और 20 महिलाएं 5 दिनों में रू 3500 कमाते हैं। तो कितने दिनों में 6 आदमी और 4 महिलाएं रू 1060 कमा सकते है?	5 men and 5 women earn Rs 660 in 3 days. 10 men and 20 women earn Rs 3500 in 5 days. In how many days can 6 men and 4 women earn Rs 1060?	\N
741	63	2	Ichthyology किससे संबंधित है ?	-	\N
384	64	1	राजू, रिंकू एवं राम किसी कार्य को क्रमशः 6, 12 एवं 24 दिनों में पूरा करते हैं। ये तीनों मिलकर इसी काम को कितने दिनों में पूरा करंेगे? 	Raju, Rinku and Ram can do a work in 6, 12 and 24 days respectively. In what time will they finish the work while working together?	\N
385	64	3	A किसी काम को 10 दिन में और B 15 दिन में करता है। दोनों मिलकर काम प्रारम्भ करते हैं और 3 दिन के बाद B छोड़ देता है। अब A कितने दिन में काम को पूरा करेेगा ?	A can do a piece of work in 10 days and B can do same work in 15 days. Both A and B start the work and after 3 days B left. In how many days will A do the remaining work.	\N
386	64	4	A किसी काम में 12 दिन में और B 18 दिन में करता है। A और B दोनों मिलकर काम शुरू करते हे। कुछ दिन बाद A छोड़ देता है और B शेष काम को 8 दिन में पूरा कर देता है। तो A ने कितने दिन बाद काम छोड़ था ?	A can do a piece of work in 12 days and B can do same work in 18 days. Both A and B start the work and after some days A left and B complete the remaining work in 8 days. After how many days will A left work.	\N
387	64	3	(A+B) किसी काम को 5 दिन में करते है। यदि A अपनी कार्यक्षमता दुगनी कर लेता है और B अपनी कार्यक्षमता 1/3 कर लेता है, तो काम 3 दिन में पूरा हो जाता है। A इस काम को कितने दिन में पूरा कर पायेगा ?	(A+B) can do a piece of work in 5 days. If A works with twice of his efficiency and B works with 1/3 of his efficiency, then work will be completed in 3 days. In how many days will A do this work alone.	\N
388	64	3	(A+B) किसी काम को 18 दिन में कर सकते है। A ने 4(1/2) दिन काम किया और चला गया तथा B ने 12(1/2) दिन काम किया और आधा काम पूरा हुआ। तो B उस काम को कितने दिन में पूरा करेगा ?	(A+B) can do a piece of work in 18 days. A works 4(1/2) days and B works for 12(1/2 )days, then half of the work has been completed. In how many days will B do this work alone.	\N
486	66	3	एक छात्र ने एक संख्या को 5/4  के बजाय 4/5  से गुणा कर दिया। उसके उत्तर में गलती % ज्ञात करो।	A student multiplied a number by 4/5  instead of 5/4  than find % error in the answer ?	\N
389	64	1	A और C किसी काम को 12 दिन में पूरा करते हैं। A और B उसी काम को 20 दिन में पूरा करते हैं। यदि A 24 दिन काम करे तथा B 6 दिन काम करें तो शेष काम को C 2 दिन में समाप्त कर देता है। तो उस काम को तीनों मिलकर कितने दिन में समाप्त करेंगे ?	A and C working together can finish certain piece of work in 12 days. A and B can finish same piece of work in 20 days. If A work for 24 days and B for 6 days then rest work done by C in 2 days. Then find in how many days A, B and C can finish same piece of work, working together.	\N
390	64	1	मोहन और सोहन एक काम करते हैं। मोहन कंप्यूटर पर 32 पेज टाईप करने में 6 घंटे लेता है, जबकि सोहन 40 पेज टाईप करने में 5 घंटे लेता है। ज्ञात करें कि दोनों अलग-अलग कंप्यूटर पर 110 पेज कितने समय में टाईप कर लेंगें?	Mohan and Sohan are working on a assignment. Mohan takes 6 hours to type 32 pages on a computer while Sohan takes 5 hours to type 40 pages. How much time will they take, working together on tow different computers to type an assignment fo 110 pages.	\N
392	64	3	A,B और C मिलकर किसी काम को 40 दिन में खत्म कर सकते हैं। वे 25 दिन काम करते हैं और उसके बाद B काम छोड़ देता है तथा बाकी बचे काम को A और C 20 दिन में करते हैं। यदि C की कार्यक्षमता, B की कार्यक्षमता की आधी है तो A अकेले कितने दिन में काम खत्म करेगा ?	A,B and C working together can finish a certain piece of work in 40 days. They work for 25 days and then B left and rest work done by A and C in 20 days. If efficiency of C is half of B’s efficiency. Then in how many days A will finish the working alone.	\N
395	64	3	A और B अलग-अलग काम करते हुए किसी काम को क्रमशः 9 दिन तथा 12 दिन में समाप्त कर सकते हैं। यदि वे बारी-बारी से 1 दिन काम करते है और A काम शुरू करता है, तो काम कितने दिनों में समाप्त होगा ?	A and B working separately can do a piece of work in 9 and 12 days respectively. If they work for a day alternately with A beginning, the work would be completed in 	\N
396	64	2	A किसी काम को करने में B से 5 दिन तथा C से 9 दिन ज्यादा लेता है। C अकेला उतना काम करता है जितना A और B मिलकर करते है। तो B और C मिलकर इस काम को कितने दिन में करेंगे?	A takes 5 days more than B and 9 days more than C to complete a work. C work as much as (A+B) works together. In how many days will B and C together this work.	\N
471	66	3	यदि y का 120 प्रतिशत, x है, तो x का कितना प्रतिशत y है?	If  x is 120 % of y, than y is what % x.	\N
350	116	3	A किसी काम को उतने समय में करता है, जितने समय में B और C मिलकर करते है। A और B मिलकर इस काम को 10 दिन में कर सकते है। जबकि C अकेला 50 दिन में कर सकता है। तो B अकेला इस काम को कितने दिन में करेगा ?	A takes as much time as B and C together to complete a work. While A and B together can do this piece of work in 10 days. In how many days will this work be completed by B alone.	\N
801	73	2	(शून्य है)	Zero is.	\N
397	64	3	A,B और C एक काम को 40 दिन में खत्म करते हैं। (A+B) द्वारा काम खत्म करने में लिया गया समय, C द्वारा काम खत्म करने में लिये गये समय से 1/3 कम है। (A+C) द्वारा काम खत्म करने में लिया गया समय, B द्वारा काम खत्म करने में लिये गये समय से 1/4 कम है तो (B+C) काम को कितने दिन में खत्म करेंगें ?	A,B and C working together can finish certain piece of work in 40 days. If (A+B) work together then take 1/3 less time than that of C takes alone. If (A+C) work together then they take 1/4 less time than that of B takes alone. In how many days (B+C) working together will finish the work.	\N
398	64	3	A,B द्वारा किए गए 20% अधिक समय में B द्वारा किया गया 80% काम समाप्त कर सकता है। वे दोनों एक साथ काम करके 40 दिन में खत्म कर सकते हैं। तो A अकेला कितने दिन में काम खत्म करेंगा ?	A can finish 80% of work done by B in 20% more time taken by B. working together they can finish the work in 40 days. In how many days A will finish the work alone.	\N
401	64	2	एक व्यक्ति किसी काम को 150 दिनों में पूरा करने का ठेका लेता हैै और इसके लिए वह 200 लोगों को काम पर लगाता है। 50 दिनों के बाद वह पाता है कि केवल एक चैथाई काम हो पाया है, तो समय पर काम पूरा करने के लिये कितने अतिरिक्त लोगों को काम पर लगाना होगा?	A men undertakes to do a certain work in 150 days. He employs 200 men. He finds that only a quarter of the work is done in 50 days. The number of additional men that should be appointed so that the whole work will be finished in time is :	\N
647	69	4	 चोर एक सिपाही को 520 मीटर की दूरी से देखता है, और दौड़ना शुरू कर देता है। चोर 5.7 किमी 37 मिनट में दौड़ता है और सिपाही 5.7 किमी 50 मिनट में दौड़ता है। तो पकड़े जाने से पहले चोर कितनी दूरी तय कर चुका होगा?	A thief saw a policeman from distance of 520 m and started running. Thief could run 5.7 km in 37 minutes and policeman can run the same distance in 50 minutes. Find the distance thief had run before being caught.	\N
402	64	4	एक टैंक में दो नल लगे है, पहला नल टंकी को पूर्णतयाः 45 मिनट में भरता है और दूसरा नल 1 घंटे में खाली करता है। यदि दोनों पाइपों को बारी-बारी से एक-एक मिनट के लिए खोला जाता है तो खाली टंकी को पूर्णतया भरने में कितना समय लगेगा?	A tank is fitted with two taps. The first tap can fill tank completely in 45 minutes and the second tap can empty the full tank in one hour. If both the tap are opened alternately for one minute, then in how many hours the empty tank will be filled completely ?	\N
403	64	1	किसी टैंक में 8 नल लगाए गए है, कुछ भरने वाले है और कुछ निकासी वाले है। प्रत्येक भरने वाला नल टंकी को 12 घंटे में भर सकता है और प्रत्येक निकासी नल टंकी को 36 घंटे में खाली कर सकता है। तो भरने वाले नलों की संख्या ज्ञात करों अगर पूरी टंकी को भरने में 3 घंटे लगते हो तो।	8 taps are fitted in a tank, some are water taps and rest are outlet tap. Each water tap can fill the tank in 12 hrs and each outlet tap can empty in 36 hours. Then calculate the no of water taps if the whole tank fill in 3 hrs	\N
404	64	2	A किसी काम का 25% काम करता है तथा शेष काम B करता है काम पूरा होने में 20 दिन लगते हैं यदि B 25% काम करे तथा शेष काम A करे तो काम समाप्त होने में 30 दिन लगते हैं। ज्ञात करें कि A इस काम को कितने समय में करेंगा।	A do 25% of the work and B do rest of the work then the time taken by both the workers is 20 days. If B did 25% of the work and A did the rest then the time taken by both the workers is 30 days. Find the time taken by A alone ?	\N
405	64	2	A और B साथ में अलग अलग दिन काम करते हैं और काम को 19 दिन में खत्म करते हैं यदि काम A शुरु करता है, लेकिन काम 19(5/6) दिन में खत्म होता अगर काम B शुरु करता । तो ज्ञात करें की A और B मिलकर काम को कितने दिन में खत्म करेंगे।	A and B working together on alternate days can finish a piece of work in 19 days. If A starts the work, while they take 19(5/6) days if B starts the work. In how many days would A and B together finish the work ? 	\N
408	64	3	12 और 8 का प्रथम समानुपाती होगा।	First proportion of 12 and 8 is-	\N
409	64	2	999(98/99) + 99  बराबर है-	99998/99 + 99 is equal to-	\N
410	64	4	54, 71, 75 और 99 प्रत्येक संख्या में से क्या घटाया जाए कि शेषफल क्रमागत समानुपात में हो ?	What should be subtracted from each of the number 54, 71, 75 and 99, so that the remainder are in continued proportion ? 	\N
399	64	1	A,B और C किसी काम को क्रमशः 10, 20 और 25 दिन में करते हैं। काम को खत्म करने में कितना न्यूनतम समय लगेगा, यदि एक दिन में 2 से ज्यादा व्यक्ति काम नहीं कर सकते तथा समान युग्म दो लगातार दिन में कार्य नहीं कर सकते ?	A,B and C can do a piece of work in 10, 20 and 25 days. How much minimum time should be required to complete this work if more than two persons can not work in a day and in any two consecutive days same pair can not work.	\N
370	116	2		(1 + 2 + 3 + …. + 49 + 50 + 49 + 48 + …. + 3 + 2 + 1) =?	\N
472	66	1	a का 40% = b है, तब 10 का b% क्या होगा ?	40 % of  a = b , then b % of 10 is same as -	\N
751	72	3	मियोसिस की खोज किसने की ?	-	\N
415	64	3	एक पाइप किसी टैंक को भरने में दूसरे पाइप की अपेक्षा तीन गुना तेजी से भरता है। यदि दोनों पाइप एक साथ किसी टैंक को 36 मिनट में भरते है, तो धीमी गति से भरने वाला पाइप टैंक को अकेला कितने समय में भरेगा।	One pipe can fill a tank three times as fast as another pipe. If together the two pipes can fill the tank in 36 minutes, the slower pipe alone will be able to fill the tank in ?	\N
418	64	2	एक नल एक हौज को 12 मिनट में भर सकता है तथा दूसरा नल उसे 15 मिनट में भर सकता है, लेकिन एक तीसरा नल उसे 6 मिनट में खाली कर सकता है। प्रारंभ में 5 मिनट तक पहले दोनों नलों को खोल दिया जाता है तथा उसके बाद तीसरा नल भी खोल दिया जाता है। हौज कितने समय में खाली हो जाएगा?	A pipe can fill a tank in 12 minutes and another pipe in 15 minutes, but a third pipe can empty it in 6 minutes. The first two pipes are kept open for 5 minutes in the beginning and then the third pipe is also opened. In what time is the cistern emptied?	\N
621	69	1	एक दूध वाला x रू. प्रति लीटर की दर से दूध खरीदता है। तथा प्रत्येक 6 लीटर दूध में 2 लीटर पानी मिलाने के बाद वह मिश्रण को 2x रू. प्रति लीटर की दर से बेचता है। उसका लाभ प्रतिशत ज्ञात कीजिए।	A milkman purchases the milk aid Rs x per liter and sells it at Rs x per liter and still he mixes 2 liter water with every 6 liter of pure milk. What is the profit percentage?	\N
681	70	1	\tएक व्यक्ति अपनी आय का 87.5% खर्च करता है। उसकी आय 59% बढ़ जाती है और उसका खर्च 67% बढ़ जाता है। उसकी बचत में बढ़त या गिरावट की प्रतिशतता ज्ञात करें ?	A person spends 87.5% of his income. His income increases by 59% and expenditure increases by67%.  Find his percentage increase or decrease in savings.	\N
624	69	2	\tजब कोई शर्ट 20% पर बेची जाती है तो उसकी लाभ 87.5% है। अगर, शर्ट का क्रय मूल्य 25% एवं अंकित मूल्य को 500 रू. बढ़ा देते है। और छूट भी 25% बढ़ा दी जाती है। तो लाभ % पहले के बराबर होता है। बाद में होनें वाला विक्रय मूल्य ज्ञात करें?	when a shirt was sold at discount of 20% a person gets profit of 87.5% due to some reason C.P. was increased by 25% and M.P. by Rs 500 and discount offered also increased 25% and person gains the same profit. Find final S.P.	\N
625	69	1	\t12 संतरे का क्रय मूल्य 9 संतरे के विक्रय मूल्य के बराबर है। 10 संतरे की छूट 5 संतरे के लाभ के बराबर है तो लाभ% एवं दी गयी छूट का अंतर ज्ञात करें ?	C.P. of 12 oranges is equal to S.P. of 9 oranges and discount on 10 oranges is equal to profit on 5 oranges. Find the difference between profit % and discount offered.	\N
626	69	2	एक पेंन के अंकित मूल्य पर 32 रू. की छूटदेने के बाद एक दुकानदारको 15% का लाभ होता है यदि पेंन का क्रय मूल्य 320 रू. हो और उसे अंकित मूल्य पर ही बेचा जाये तोे दुकानदार को हुआ लाभ% ज्ञात करें?	Even after reducing the marked price of a pen by Rs 32, a shopkeeper makes a profit of 15%. If the cost price be Rs 320, what percentage of profit dies he make it he sells the pen at the marked price.	\N
627	69	3	\tएक बेईमान दुकानदार क्रय मूल्य पर 15% का हानि उठाता है यदि वह 1 किग्रा. में x ग्राम मापता है, तो उसे 25% का लाभ होता है तो x का मान बताओं।	A dishonest dealer sells the goods at 15% loss on cost price but uses false weight. So his over all profit is 25% find the gm. In 1 kg .that he used	\N
628	69	2	यदि आलपिनों के मूल्य में 4 रू. प्रति दर्जन की  कमी हो गई हो, तो 48 रू. में 12 अधिकआलपीन खरीदी जासकती है।मूल्य में कमी होने के बाद आलपिनों का प्रतिदर्जन मूल्य है-	On decreasing price of pins by Rs 4/dozen a person buys 12 more pins Rs. 48. Find new price of pins per dozen.	\N
629	69	2	\tगेहूँ पैदावार, चावलसे 21/4 गुनी है। किन्तु चावल का मूल्य गेहूँ के मूल्य का 11/4 गुना है। यदि एक किसान चावल के बदले गेहूँ की पैदावार करें, तो उसकी आयु पहले की तुलना में हो जाएगी-	Production of wheat is 21/4 times than that of rice but price of rice is 11/4 times than that of wheat. If a farmer produces wheat at he place of rice then his income will be change by.	\N
630	69	2	यदि किसी  वस्तु के विक्रय मूल्य को दुगुना कर दिया जाए, तो इस पर होने वाला हानि% समान लाभ% में परिवर्तित हो जाता हैं। वस्तु पर होने वाला हानि% है?	If S.P. of an article is doubled then value of its loss % will convert to profit %. Find loss % of article.	\N
631	69	4	आॅफिस से घर जाते समय गिरी की कार में कुछ खराबी आ गई, इसलिए उसे घर पहुंचने में सामान्य समय से 11.11% अधिक समय लगा। इस मामले में उसकी गति सामान्य गति का कितना प्रतिशत है ?	1.\tWhile travelling from office to home, Giri’s car got some problem, so he took 11.11% more time than the usual to reach home. In this case his speed is what percent of his usual speed? 	\N
632	69	2	एक रेलगाड़ी अपनी वास्तविक चाल के 9/13 गुना चाल से चलकर गन्तव्य तक 39 घण्टे में पहुॅंचती है, यदि रेलगाड़ी अपनी वास्तविक चाल से चले तो कितना समय बचाएगी ?	\tA train running at 9/13 of its own speed reached a place in 39 hours. How much time could be saved if the train would run at its own speed? 	\N
633	69	1	एक व्यक्ति निश्चित चाल से एक निश्चित दूरी तय करता है। यदि वह अपनी चाल को 25kmph कम करता है, तो वह 12.5 मिनट देरी से पहुंचेगा। यदि उसकी प्रारंभिक गति 160km है तो उसके द्वारा तय की गई दूरी ज्ञात करें ?	3.\tA person covers a certain distance with a certain speed if he reduces his speed by 25 km/hr. Then he will 12.5 min late. If his initial speed is 160 km/hr. Find the distance covered by him. 	\N
634	69	2	एक व्यक्ति निश्चित चाल से चलकर एक निश्चित दूरी तय करता है। यदि वह अपनी चाल में 15kmph  की वृद्धि करता है, तो वह 16 मिनट पहले उस दूरी को तय कर लेगा। यदि वह अपनी चाल में 12kmph की कमी करता है तो वह कितनी देरी से पहुॅंचेगा, यदि उसकी वास्तविक चाल 60kmph है।	4.\tA person covers a certain distance with certain speed if he increases his speed by 15 km/hr. Then he will be 16 min. early. By how much time he will be late if he reduces his speed by 12 km/hr, if his initial speed is 60 km/hr. 	\N
635	69	2	एक कार एक निश्चित दूरी 9.33 hr में तय करती है। यदि इसकी चाल 9kmph बढ़ा दी जाए तो इसे उस दूरी को तय करने में पहले की अपेक्षा 80 मिनट कम समय लगता है। कार द्वारा तय की गई दूरी ज्ञात करें ?	\tA car covers a certain distance in 91/3 hrs. If the speed is increased by 9 km/hr, then it will take 80 minutes less to cover the same distance. Find the distance covered by car? 	\N
636	69	2	रमेश शहर A से शहर B तक 44kmph की औसत गति से बस से यात्रा करता है। सुरेश शहर A से शहर B तक 77kmph की औसत गति से एक टैक्सी द्वारा यात्रा करता है और उसे रमेश द्वारा लिए गए समय से 6 घंटे कम लगता है। उन दो शहरों के बीच की दूरी (km)में क्या है ?	6.\tRamesh travels by bus from city A to city B at an average speed of 44 km/hr. Suresh travels by taxi from city A to city B at an average speed of 77 km/hr and takes 6 hours lesser than time taken by Ramesh. What is the distance (in km) between the two cities? 	\N
637	69	4	घरेलू झगड़े की वजह से एक व्यक्ति एक यात्रा पर अपने निर्धारित समय से 40 मिनट देरी से निकलता है लेकिन आवश्यक कार्य हेतु वह अपनी चाल सामान्य चाल का 160% कर देता है और आॅफिस 35 मिनट पहले ही पहुॅंच जाता है। आॅफिस पहुॅंचने के लिए लिया जाने वाला नियत समय क्या था ?	7.\tA man started his journey 40 minutes later than usual time due to family fight. But due to urgent work he increased his speed to 160% of his usual speed so he reached 35 minutes earlier at his destination. What is the usual time taken by him for the journey?	\N
638	69	2	एक ट्रेन, एक कार से 40% तेज दौड़ती है। दोनों एक साथ एक ही बिन्दू A से चलना प्रारंभ करती है और 140 किमी. दूर स्थित बिन्दू B पर एक ही समय पर पहुँचती हैं क्योंकि रास्ते में ट्रेन अपने 25 मिनट बरबाद करती है। कार और ट्रेन की चाल क्या हैं?	8.\tA train travels 40% faster than a car. Both start from point A at the same time and reach point B, 140 km away at the same time. On the way the train takes 25 minutes for stopping at the stations. What is the speed (in km/hr) of the train? 	\N
639	69	4	एक बस की चाल 60 किमी/घंटा है। यदि वो हर घंटे कुछ मिनट रूकती है, तो उसकी चाल 50 किमी/घंटा रह जाती हैं तो वो हर घंटे कितने मिनट रूकती है?	Speed of a bus is 60km/h . If it stops for a few mintues in an hour then its average speed becomes 50 km/h. How many minute did the bus stop in an hour.	\N
640	69	1	एक व्यक्ति 14 घंटे में 210 ाउध्ी की दर से यात्रा करता है इतनी ही दूरी 9घंटा तथा 48 मिनट में तय करने के लिए चाल क्या होगी।	A person travel a certain distance in 14hrs at rate of 210 kmph. To cover the same distance in 9 hr 48 min , it must travel at a speed of:	\N
641	69	3	 कोई गाड़ी 72 किमी./घंटा पर चले तो अपने गंतव्य स्थान पर 9 मिनट में पहुँचती हैं इतनी ही दूरी 8 मिनट में तय करने के लिए चाल क्या होगी। 	A car travel a certain distance in 9min  at rate of 72 kmph. To cover the same distance in 8min , it must travel at a speed of:	\N
642	69	3	200 मीटर लम्बी एक रेलगाड़ी 300 मीटर लम्बे एक पुल को पार करने में 30 सेकण्ड का समय लेती है। 200 मीटर लम्बे एक प्लेटफार्म को पार करने में यह रेलगाड़ी कितना समय लेगी ?	A train 200 m long, takes 30 seconds to cross a bridge 300 m long. How much time will the train take to cross a platform 200 m long.	\N
643	69	4	दो नगरों A और B के बीच की दूरी 380 किमी॰ है। एक रेलगाड़ी A से B की ओर प्रातः 8 बजे, 30 किमी॰/घंटा की गति से चलती है और एक दूसरी रेलगाड़ी B  से A की ओर प्रातः 9 बजे, 40 किमी॰/घंटा की गति से चलती है। वे दोनों कितने बजे मिलेंगी ?	The distance between two cities A and B is 380 km. A train starts from A at 8 am and travels towards B at 30 km/hr. Another train starts from B at 9 am and travels towards A at 40 km/hr. At what time do they meet.	\N
644	69	4	\tएक व्यक्ति A से सुबह 9 बजे चलता है और B पर सुबह 11 बजे पहुँचता है तथा दूसरा व्यक्ति B से सुबह 9 बजे ही चलता है और A पर दोपहर 12 बजे पहुँचता है। तो वो दोनों कितने बजे मिलेंगे?	A person starts to walk from A at 9 am and reaches at B at 11 am and a person from B starts to walk at 9 am and reaches at A and 12 pm. Find the time at which they will meet.	\N
645	69	2	\tएक व्यक्ति A से सुबह 8 बजे चलता है और B पर सुबह 11 बजे पहुँचता है तथा दूसरा व्यक्ति B से सुबह 9 बजे चलता हैे और A पर सुबह 11 बजे पहुँचता है। तो वो दोनों कितने बजे मिलेंगे?	A person from A starts to walk at 8 am and reaches B at 11 am similarly A person from B starts to walk at 9 am and reaches A at 11 am. Find the time at which the meet each other.	\N
646	69	4	\tA और B के बीच की दूरी 500 किमी है। जब वे दोनों एक दूसरे की ओर चलते है, तो 10 घंटे में मिलते हैं। यदि A,B के चलने के 4 घंटे बाद चलना शुरू करे तो दोनों 8 घंटे में मिलेंगे। दोनो की चाल क्या है?	Distance between A and B is 500 km. When they start moving towards each other they meet in 10 hours. If A moved 4 hours after B then theyf meet in 8 hours. Find their speeds.	\N
456	65	1	1000 में कौनसी सबसे छोटी संख्या जोड़ी जाये ताकि नयी संख्या 45 से पूर्णतः विभजित हो जाये।	The smallest number to be added to 1000, so that 45 divides the sum exactly is :	\N
648	69	4	दो लोग P और B एक ही बिन्दू A से बिन्दू B की ओर चलना आरम्भ करते है। A और B की बीच की दूरी 96 किमी है। P की चाल 50kmph तथा Q की चाल 70kmph है। Q,B पर पहुँचकर और वापस लौटकर P को B से x किमी. की दूरी पर मिलता है तो x का मान क्या होगा?\n\n	Two person P and Q start walking from A towards B. distance between A and B is 96 km. speed of P is 50 km/h and speed of Q is 70 km/h. after reaching at B person Q returns immediately to A and on the way person Q meets person Pat the distance of x km from B.Find the value ofx.	\N
895	75	3	A,B,C,D का औसत वजन 40 किग्रा है। यदि E को शामिल कर ले तो औसत वजन 1 किग्रा बढ़ जाता है। यदि A की जगह F को लेकर आ जाये तो पाँच व्यक्तियों का नया औसत 45 किग्रा हो जाता है। B,C,D और F का औसत वजन बतायें ?	The average weight A, B, C and D is 40 kg. A new person E is also included in the group, then the average weight of the group is increased by 1 kg. Again a new person F replaces A, then the new average of 5 persons becomes 45. Find the average weight of B, C, D, F.	\N
896	75	4	एक छात्रावास में 60 छात्र हैं। 20 छात्रों के और आ जाने से मैस का प्रतिदिन का कुल खर्चा 120 रू. बढ़ जाता है। लेकिन प्रति छात्र 1 रू. कम हो जाता है। तो मैस का प्रारम्भ में कुल खर्चा कितना था?	There are 60 students in a hostel. If the number of students increases by 20, then the expenses of the mess increased by Rs. 120 per day while the average expenditure per head diminishes by Rs . 1. Find the original expenditure of the mess.	\N
897	75	2	9 व्यक्ति होटल गये। उनमें से 8 व्यक्तियों ने अपने भोजन पर प्रत्येक ने 27 रू. खर्च किये तथा 9वें व्यक्ति ने सभी व्यक्तियों के औसत से 16 रू. कम खर्च किये ।तो उन सभी के द्वारा किया गया कुल खर्च कितना है?	9 people went to a hotel for combined dinner. 8 people out of 9 spend Rs. 27 each on dinner. 9th person spend Rs. 16 less than the average of all persons. Find the total expenditure on dinner.	\N
898	75	1	19 आदमी इकट्ठे होकर पार्टी में गये। वहाँ उनमें से 14 आदमी ने डिनर पर प्रत्येक ने 79 रू. खर्च किये,बाकी बचे लोगों ने 19 आदमी के औसत खर्च से 7 रू.अधिक खर्च किये तो प्रत्येक आदमी का औसत खर्च क्या था ?	19 people went to a hotel for a combined dinner party. 14 of them spent Rs. 79 each on their dinner and the rest spent Rs. 7 more than the average expenditure of all the 19. What was the average money spent by each person ?	\N
899	75	4	एक जहाज समुद्र तट से 75 कि.मी. दूर है और जहाज में छेद हो जाता है। और 15 मिनट में 3(3/4) टन पानी अंदर आने लगा। जहाज का पंप 1 घंटा में 12(1/2) टन पानी बाहर करता है। 25 टन पानी जहाज को डूबों सकता है। जहाज अपनी औसत चाल कितनी रखे कि डूबने से तुरंत पहले किनारे पर पहुँच जाये?	A ship 75 km from the shore spring a leak which admits 3(3/4) tonnes of water in 15 min. 25 tonnes of water would suffer to sink her, but the pumps can throw out 12(1/2) tonnes of water an hour. Find the average rate of sailing that she may just reach the shore as she begins to sink.	\N
440	65	4	(7.5 × 7.5 +37.5 + 2.5 × 2.5 ) = ? 	(7.5 × 7.5 +37.5 + 2.5 × 2.5 ) = ? 	\N
441	65	3	86.5 × 12.1 × 7.2   = ? + 3.2 	86.5 × 12.1 × 7.2   = ? + 3.2 	\N
442	65	4	70% of 6.50 + 35% of 510 – 36% of 568  = ?	70% of 6.50 + 35% of 510 – 36% of 568  = ?	\N
661	70	1	वह कम से कम संख्या जो 1728 में जोड़ा जाना चाहिये ताकि यह ऐ पूर्ण वर्ग बन सके ?	The least number which must be added to 1728 to make it a perfect squar is? 	\N
662	70	1	एक आदमी किसी यात्रा को 10 घंटे में पूरा कर सकती है। आरंभ की आधी यात्रा 21 km/hr की गति में पूरी करता है और बाद की आधी यात्रा 24 km/hr की गति से पूरी करता है। कुल दूरी ज्ञात कीजिए।	A man complete a journey in 10 hours. He travels first half of the journey at the rate of 21 km/hr and second half at the rate of 24 km/hr. Find the total journey in km? 	\N
411	64	2		 	3f77444cd68be1dd651a147da95df540
669	70	2	एक रेलगाड़ी एक कार से 40 प्रतिशत तेज चलती है। दोनों बिंदु A से एक ही समय पर प्रारंभ करते हैं तथा 140 किमी दूर स्थित बिंदु B पर एक ही समय पहुंचते हैं। मार्ग में रेलगाड़ी स्टेशनों पर रुकने के लिए 25 मिनट समय लेती है। रेलगाड़ी की गति (किमी प्रति घंटा में) क्या है ?	A train travels 40% faster than a car. Both start from point A at the same time and reach point B, 140 km away at the same time. On the way the train takes 25 minutes for stopping at the stations. What is the speed (in km/hr) of the train? 	\N
678	70	4	एक बेईमान दुकानदार वस्तुओं को खरीदते समय 20 % तथा बेचते समय 40 % की बेईमानी करता है तथा वस्तुओं को 10 % हानि पर बेचने का दावा करता है तो दुकानदार का लाभ % ज्ञात कीजिए।	A dishonest shopkeeper makes a cheating of 20% at the time of buying the goods and 40% cheating at the time of selling the goods. He promise to sell his goods at 10% loss. Find the profit%?	\N
663	70	2	एक आदमी किसी यात्रा का 6 घंटे 30 मिनट पैदल चलकर और फिर वापस गाड़ी से लौटकर पूरा करता है। लेकिन अगर वो दोनों तरफ से गाड़ी से सफर करता है तो उसे 2 घंटे 10 मिनट का समय कम लगता है। यदि वह दोनों जगह से पैदल ही चले तो उसे कुल कितना समय लगेगा ?	A man takes 6 hrs 30 mins in walking to a certain place and riding back. He would have gained 2hrs 10 mins by riding both ways. How long he would take to walk both ways ?	\N
670	70	1	30 किमी. की दूरी तय करने में राम को, श्याम से 3 घंटे ज्यादा लगते है। यदि राम अपनी तीन गुना चाल से चलता है तो श्याम से 1 घंटा कम समय लगता है। समीर की चाल km/hr में ज्ञात कीजिए।	In covering distance of 30 km, Ram takes 3 hours more than Shyam. If Ram tripeled his speed, then he would have take 1 hour less than Shyam. Find the speed of Shyam (in km/hr).	\N
905	75	2	15 संख्याओं का औसत 56 है। पहली 8 संख्याओं का औसत 53 हेेें बाद की 8 संख्याओं का औसत 58 है। 8वीं संख्या ज्ञात करों?	Average of 17 number is 56. Average of first 9 number is 53. Average of last 9 number is 58. Find 9th number. 	\N
458	65	1	दो संख्याओं का अंतर बड़ी संख्या का 20 प्रतिशत है। यदि छोटी संख्या 20 है, तो बड़ी संख्या ज्ञात करें?	Difference of the two number is 20 % of the Bigger number than If the Smaller number is 20 than find the Bigger number is ?	\N
459	65	4	यदि A का वेतन B से 6(2/3) प्रतिशत कम है, तो B का वेतन A से कितना प्रतिशत अधिक है ?	If  Income of A is 6(2/3) % less than Income of B. than find income of B is what % more than Income of A ?	\N
422	65	1	A 7 घंटे प्रतिदिन काम करके एक काम को 6 दिनों में समाप्त करता है,जबकि B इतने ही घंटे प्रतिदिन काम करके उसी काम को 8 दिनों में समाप्त करता है। तो दोनों मिलकर 8 घंटे प्रतिदिन काम करके काम को कितने समय में खत्म करेंगे ?	While working 7 hours a day,  A  alone can complete a piece of work in 6 days and B alone in 8 days. In what time would they complete it together working 8 hours a day ?	\N
423	65	3	A किसी काम को उतने ही समय में पूरा करता है जितना B और C दोनों मिलकर उस काम को पूरा करने में लेते है। यदि A+B 12 दिन और C अकेला इस कार्य को 36 दिन में करता है तो B उस काम को कितने दिन में करेगा ।	A can do a piece of work in as much as time as B and C togethere can do it in if A and B together can do it in 12 days and C alone can do it in 36 days then find in how many days B will complete the work alone 	\N
424	65	1	1 पुरूष और 1 लड़का मिलकर किसी काम को 24 दिनों में समाप्त कर सकते है। यदि अंतिम 6 दिनों से केवल लड़का काम कर रहा हो, तो काम 26 दिनों में समाप्त हो जाता है, तो पुरूष अकेलेे काम को कितने दिनों में करेगा?	A man and a boy can complete a piece of work together in 24 days. If for the last six days boy alone does the work then it is completed in 26 days. How long the man will take to complete the work alone ?	\N
671	70	1	A तथा B, 7.5 किमी की एक दौड़ 270 मीटर के एक वृत्ताकार मैदान में दौड़ना शुरु करते हैं। यदि उनकी चाल का अनुपात 5ः3 है तो विजेता हारने वाले को कितनी बार पार करेगा ?	A and B run a 7.5 km race on a round course of 270 m. If their speeds are in the ratio 5:3, the number of times, the winner passes the other is: 	\N
672	70	3	एक चोर एक सिपाही को 900 मीटर की दूरी से देखता है, और दौड़ना शुरू कर देता है। चोर 5 किमी 45 मिनट में दौड़ता है और सिपाही 5 किमी 36 मिनट में दौड़ता है। तो पकड़े जाने से पहले चोर कितनी दूरी तय कर चुका होगा?	A thief saw a policeman from distance of 900 m and started running. Thief could run 5 km in 45 minutes and policeman can run the same distance in 36 minutes. Find the distance thief had run before being caught.	\N
679	70	3	5 ली. के अल्कोहल-पानी मिश्रण मेें 40 प्रतिशत अल्कोहल है। इसमें 1 ली. पानी मिलाया जाता है, तो नये मिश्रण में अल्कोहल का प्रतिशत क्या होगा?	5 ltr. Mixture of  alchohal and water contain 40 % alchohal. If 1 ltr more water added into it so that the % of alchohal in the mixture ?	\N
674	70	4	एक बच्चा घर से स्कूल 5 km/hr की चाल से जाता है तो 6 मिनट देरी से पहुँचता है। यदि वह 6 km/hr की चाल से जाता है, तो 6 मिनट जल्दी पहुँच जाता है। तो स्कूल और घर के बीच की दूरी क्या होगी?	When a child goes to school at the speed of 5 km/h reaches 6 minutes late and when he goes at the speed of 6km/hr reaches 6 minutes early. Find the distance between his home and school.	\N
652	70	1	 इंसान की चाल 60 किमी/घंटा है। प्रत्येक 36मिनट के बाद वो 5 किमी/घंटा अपनी चाल कम कर लेता है। यदि उसे 150 किमी. की दूरी तय करनी है, तो उसे कितना समय लगेगा?	Speed of a man is 60 km/h after every 36 minutes he reduces his speed by 5 km/h. If the has to travel 150 kms. Find out the time taken to cover this distance.	\N
653	70	4	 बच्चा घर से स्कूल 5kmph चाल से जाता है तो 6 मिनट देरी से पहुँचता है। यदि वह 6kmph की चाल से जाता है, तो 6 मिनट जल्दी पहुँच जाता है। तो स्कूल और घर के बीच की दूरी क्या होगी?	When a child goes to school at the speed of 5km/h reaches 6 minutes late and when he goes at the speed of 6km/hr reaches 6 minutes early. Find the distance between his home and school.	\N
654	70	2	\tएक व्यक्ति अपनी सामान्य चाल की 4/5  चाल से चलने पर अपने निर्धारित स्थान पर 1.5  घंटे देरी से पहुँचता है। अपने निर्धारित स्थान तक पहुँचने में उस व्यक्ति द्वारा लिया जाने वाला सामान्य समय ज्ञात कीजिए।	A man with 4/5 of his usual speed reaches the destination 1.5 hours late. Find his usual time to reach the destination.	\N
655	70	2	एक आदमी 10 किमी/घंटा की दर पर चल रहा है।प्रति किमी पर वह 5 मिनट का विश्राम लेता है। 5 किमी की दूरी वह कितने समय में तय करेगा?	A man walking at the speed of 10kmph and he take rest for 5min per km , than find in what time he will cover 5km distance.	\N
656	70	2	दो गाड़ियाँ स्टेशन A तथा B  से एक-दूसरे की ओर क्रमशः 21 मील प्रति घंटा और 27 मील प्रति घंटा की गति से चलती है। उनके मिलने के समय, दूसरी गाड़ी पहली गाड़ी से 60 मीलअधिक चल चुकी है। A और B के बीच दूरी (मीलों में) हैः 	two train are running towards each other with the speed of 21mile/hr and 27 mile/hr .when they meet the second train travel 60 mile more than the first train, find the distance between A and B (in mile).	\N
657	70	3	एक चोर को एक पुलिस कर्मी 400 मीटर की दूरी से रोक लेता है।पुलिस कर्मी जब चोर का पीछा करना शुरू करता है, तो चोर भी दौड़ना शुरू करता है। यह मानते हुए कि चोर की गति 5 किमी/घंटा है और पुलिसकर्मी की गति 9 किमी/घंटा है तो पुलिसकर्मी के द्वारा चोर तक पहुँचकर उसकों पकड़ने से पहले चोर द्वारा तय की गई दूरी कितनी है?	A policeman saw a thief from a distance of 400m and started running towards him. If speed of policeman and thief are 5km/h and 9 km/h respectively. Find the distance thief had run before caught.	\N
658	70	2	एक कार अपनी सामान्य चाल की  चाल से 42 कि.मी. की दूरी 1 घण्टा 40 मि 48 सेकण्ड में तय करती है कार की सामान्य चाल कितनी है ?	A car cover 42 km by 5/7 of its actual speed in 1hr 40min 48 seconds, find the actual speed of car is?	\N
659	70	3	29ण्\tसमान लम्बाई वाली दो रेलगाड़ियाँ एक टेलीग्राफ के खम्भे क ोक्रमशः 10 सेकण्ड तथा 15 सेकण्ड म ेंपार करती हैं। यदि प्रत्येक रेलगाड़ी की लम्बाई 120 मी॰हो, ता ेविपरीत दिशाओ ंमे ंचलत ेहुए वे एक-दूसर ेका ेकितने समय (सेकण्ड) में पार करेंगी ?	two train of same length crosses a telegraph pole in 10sec. and 15sec. , if the length of the each train is 120 mtr than find in what time they will cross each other in opposite direction.	\N
444	65	4		 	bbf0d03c4e6ceaceb915d0807adb1199
660	70	2	एक ही समय दोरे लगाड़ियाँ म ेंसे एक  A से B के लिए तथा दूसरी B से A के लिए रवाना हुई। यदि वे परस्पर मिलने के बाद A तथा B पर क्रमशः 4 घंटे तथा 9 घंटे में पहुँची हों, तो रेलगाड़ियों की चाल का अनुपात -	Two train at the same time from A to B and another from B to A , after meeting they reached their destination in 4hr and 9hr respectively than find the ratio of theur speed	\N
668	70	4	घरेलू झगड़े की वजह से एक व्यक्ति एक यात्रा पर अपने निर्धारित समय से 40 मिनट देरी से निकलता है लेकिन आवश्यक कार्य हेतु वह अपनी चाल सामान्य चाल का 160 % कर देता है और आॅफिस 35 मिनट पहले ही पहुॅंच जाता है। आॅफिस पहुॅंचने के लिए लिया जाने वाला नियत समय क्या था ?	A man started his journey 40 minutes later than usual time due to family fight. But due to urgent work he increased his speed to 160% of his usual speed so he reached 35 minutes earlier at his destination. What is the usual time taken by him for the journey? 	\N
677	70	3	दो वस्तुओं का क्रय मूल्य समान है। एक को 27 % लाभ पर बेचा जाता है और दूसरी को पहली से 60 रू कम में बेचा जाता है। इस प्रकार कुल 25 % का लाभ होता है प्रत्येक का क्रय मूल्य होगा ?	The cost price of two product is same. one is selling at 27% and second is selling 60 rs Less than the second, so that the total profit is 25% find the cost price of each. 	\N
680	70	1	\tएक चुनाव में दो उम्मीदवारों ने भाग लिया। 20%लोगों ने मत नहीं दिया। 12.5% मत अवैध निकले और जीतने वाले को वैध मतों का 60%प्राप्त हुआ और 5600 मतों से विजयी हुआ। कुल मतों की संख्या ज्ञात करो।	In an election between two candidate . 20 % of the votes did not caste their votes. If 12.5% votes declared invalid and winning candidate got 60 % votes and won by 5600 votes. Then find the total number of votes ?	\N
682	70	1	जब चीनी के मूल्य में 20 प्रतिशत वृद्धि होती है, तो एक परिवार अपना उपभोग इस प्रकार कम करता है कि चीनी पर व्यय केवल 15 प्रतिशत बढ़ता है। यदि मूल्य बढ़ने से पहले 24 किग्रा चीनी की खपत होती थी, तो नई मासिक खपत ज्ञात कीजिए।	Price of suger isincreased by 20% so that a family decreases his consumption such that the expenditure is increased by 15% only .if the consumption of sugar 24kg before hiking in price than find the new consumption ?	\N
683	70	2	एक व्यक्ति किसी काम को 150 दिनों में पूरा करने का ठेका लेता हैै और इसके लिए वह 200 लोगों को काम पर लगाता है। 50 दिनों के बाद वह पाता है कि केवल एक चैथाई काम हो पाया है, तो समय पर काम पूरा करने के लिये कितने अतिरिक्त लोगों को काम पर लगाना होगा?	A men undertakes to do a certain work in 150 days. He employs 200 men. He finds that only a quarter of the work is done in 50 days. The number of additional men that should be appointed so that the whole work will be finished in time is :	\N
684	70	1	5 व्यक्ति 6 दिनों तक 6 घंटे प्रतिदिन कार्य करके 10 खिलौने तैयार कर सकते है। तो कितने दिनों में 12 व्यक्ति 8 घंटा प्रतिदिन कार्य करके 16 खिलौने तैयार कर सकते है।	5 men working for 6 hr per day can make 10 toys in 6 days then find in how many days 12 men working for 8 hr per day can make 16 toys ? 	\N
685	70	2	2 पुरूष तथा 3 स्त्रियाँ मिलकर या 4 पुरूष किसी काम को 20 दिनों में समाप्त कर सकते है। तो उसी काम को 3 पुरूष तथा 3 स्त्रियाँ कितने दिनों में खत्म करेेंगी?	2 men and 3 women together or 4 men can complete a piece of work in 20 days. 3 men and 3 women will complete the same work in:	\N
686	70	1	\tA किसी काम को करने में B से 5 दिन तथा C से 9 दिन ज्यादा लेता है। C अकेला उतना काम करता है जितना A और B मिलकर करते है। तो B और C मिलकर इस काम को कितने दिन में करेंगे?	A takes 5 days more than B and 9 days more than C to complete a work. C work as much as (A+B) works together. In how many days will B and C together this work.	\N
425	65	2	A,B और C को 5,290 में किसी कार्य को करने के लिए लगाया गया हैं। माना कि A और B मिलकर 19/23  कार्य करते है और B और C मिलकर 8/23  कार्य करते हैं, तो A को कितने रू॰ का भुगतान किया जाना चाहिए ?	A,B and C are employeed to complete a work  for Rs 5,290 If A and B complete 19/23 part of the work and B and C complete 8/23  part of the work then find share of A ? 	\N
445	65	1	334 × 545 × 7p स्ंख्या 3340 से विभाज्य है, तो p का न्यूनतम मान क्या है?	The number 334 × 545 × 7p is divisible by 3340 then what is the minimum value of p?	\N
452	65	2	किसी आयताकार क्षेत्र की प्रत्येक भुजा 40% कम कर दी गयी है। आयताकार क्षेत्र में क्षेत्रफल में कितने प्रतिशत की कमी हो जाती है?	Each side of a rectangular field is diminished by 40%. By how much percent is the area of the field diminished?	\N
438	65	4	17 × 11 × 7 – 70 = ? 	17 × 11 × 7 – 70 = ? 	\N
426	65	2	एक ठेकेदार किसी काम को 124 दिनों में पूरा करने का ठेका लेता है और इस काम के लिए वह 120 लोगों को काम पर लगाता है। 64 दिनों के बाद वह पाता है कि  2/3 भाग काम पूरा हो चुका है, तो काम समय पर ही पूरा हो इसके लिये वह कितने लोगों को काम से हटा सकता हैं?	A contractor undertook to finish a certain work in 124 days and employed 120 men. After 64 days, he found that he had already done 2/3  of the work. How many men can be discharged now so that the work may finish in time ?	\N
427	65	1	A और C किसी काम को 12 दिन में पूरा करते हैं। A और B उसी काम को 20 दिन में पूरा करते हैं। यदि A 24 दिन काम करे तथा B 6 दिन काम करें तो शेष काम को C 2 दिन में समाप्त कर देता है। तो उस काम को तीनों मिलकर कितने दिन में समाप्त करेंगे ?	A and C working together can finish certain piece of work in 12 days. A and B can finish same piece of work in 20 days. If A work for 24 days and B for 6 days then rest work done by C in 2 days. Then find in how many days A, B and C can finish same piece of work, working together.	\N
428	65	3	A किसी काम को करने में B से 4 दिन अधिक लेता है। यदि वे एक साथ काम करते है तो काम 8(8/9) दिन में समाप्त कर सकते है। तो प्रत्येक अलग-अलग इस काम को कितने दिन में समाप्त करेंगे?	A takes 4 days more to finish certain piece of work than that of B. If working together they can finish the work in 8(8/9) days. Then in how many days working alone each can finish the work.	\N
429	65	3	A किसी के काम के 4/5 भाग को 20 दिन में करता है तथा फिर वह B को बुलाकर उसके शेष काम को 3 दिनों में पूरा करता है। B को उस काम को अकेले करने में कितना समय लगेगा ?	A does 4/5 part of the work in 20 days and rest of the work is done by A and B in 3 days. In what time can B do the whole work.	\N
430	65	2	एक पाइप किसी टंकी को 3 घंटे में पानी से भर सकता है। टंकी में एक छेद होने के कारण, इसको भरने में 3(1/2) घण्टे लगते है। छेद होने के कारण पूर्ण भरी हुई टंकी कितने समय में खाली हो जाएगी।	A pipe can fill a tank with water in 3 hours by the certain leakage it takes  3 (1/2) hr to fill the tank .In what time the leakage will empty the full tank ?	\N
431	65	3	एक लड़का और लड़की साथ मिलकर किसी टंकी को पानी से भरते है। लड़का 4 लीटर पानी प्रत्येक 3 मिनट में भरता है और लड़की 3 लीटर पानी प्रत्येक 4 मिनट में भरती है। कितने समय में 100 लीटर पानी टंकी में भर जाएगा ?	A boy and girl together fill a cistern with water. The boy pours 4 litres of water in every 3 minutes and the girl pours 3 litres of water time will it take to fill 100 litres of water in the cistern ?	\N
432	65	4	दो पाइप A और B किसी टंकी को क्रमशः 37(1/2) मिनट और 45 मिनट में भर सकते हैं। दोनों पाइपों को खोल दिया जाता है। टंकी को ठीक आधे घंटे में भरने के लिए पाइप B को कितने समय बाद बन्द कर देना होगा?	Two pipes A and B can separately fill a cistern in 37 (1/2) min. and 45 min. respectively. If both the pipes open simultaneously and tank have to be filled in exactly in half an hour. than  find after what time pipe B should be close?	\N
433	65	1	एक टैंक में एक समान कार्यक्षमता वाले 4 नल दूरी पर लगे हुए हैं। पहला नल टैंक के तल में, तथा चैथा नल टैंक को 3/4 उंचाई पर लगा है, यदि पहला नल टैंक को 12 घंटे में खाली कर सकता है, तो ज्ञात कीजिए भरा हुआ टैंक कितने समय में खाली हो जाएगा ?	In a tank four taps of equal efficiency are fitted on equal intervals. The first pipe is at the base of the tank. And the 4th pipe is at 3/4 th of height of the tank. Then  calculate in how much time the whole tank will empty. If the first pipe can empty the tank in 12 hours.	\N
434	65	2	पानी की एक टंकी में 4/5 भाग पानी भरा हुआ है। यदि अब A नल उस टंकी को 5 मिनट में भर सकता है, जबकि B नल उसकों 32 मिनट में खाली कर सकता है। यदि दोनों नल खोल दिए जाए, तो टंकी कितने समय मं पूर्णतः खाली या भरी जा सकती है?	If 4/5  part of the tank in already fill by water. If pipe A is open now and can fill the tank is 5 min. while pipe B can empty it in 32 min. If Both the pipes Open now together in what time the tank will be filled or empty ?	\N
435	65	2	पाइप A एक टैंक को 20 मिनट में भर सकता है जबकि पाइप C इस टैंक को, A द्वारा भरने की गति की 1/3  गति से खाली करता है। दिन के 12: 00 बजे पाइप A और B को एक साथ खोला जाता है और जब टैंक 50% भर जाता है तो पाइप A बंद हो जाता है। कितने बजे तक टैंक पूर्णतः खाली हो जायेगा ?	Tap A fills a tank in 20 minutes while C empties it at 1/3  the rate at which A fills it. At 12 : 00 noon, A and C are simultaneously started and when the tank is 50 % full, tap A is turned off. At what time will the tank be empty ? 	\N
500	66	2	80 के गुनखण्डों की संख्या होगी।	Find the number of factor of 80.	\N
436	65	3	दो पाइप A और B टंकी में लगे हुए है। पाइप A 20 मिनट में भरता है और पाइप B 30 मिनट में खाली करता है। यदि A और B प्रत्येक को बारी-बारी से एक-एक मिनट के लिए खोला जाता है, तब टंकी कितने समय में भरेगीं?	A cistern is provided with two pipes A and B. A can fill it in 20 minutes and B can fill it in 30 minutes. If A and B kept open alternately for one minute each, how soon will the cistern be filled ?	\N
443	65	3	दिए गए समीकरण में F का अधिकतम मान क्या होगा ?\n\n5E9 + 2F8 + 3G7 = 1114  जहां E, F, G  प्रत्येक किसी संख्या को दर्शाता है।\n\n	30.\tThe maximum value of F in the following equation 5E9 + 2F8 + 3G7 = 1114 is	\N
453	65	1	चाय की मूल्य में 20% की वृद्धि हो जाने के कारण एक महिला का चाय पर किये जाने वाले खर्च का व्यय 10% बढ़ जाता है। बताइए, उसके खपत में कितने % की कमी हुई।	The price of tea increases by 20% and hence the expenditure of a family increases by 10%. Find out by what percent the consumption has been decreased?	\N
454	65	3	गौरव अपने पिता से प्राप्त राशि में से 40% हाॅस्टेल पर, 20% किताबों और स्टेशनरी पर और शेष का 50% परिवहन पर खर्च करता है। हाॅस्टेल, किताब आदि और परिवहन पर खर्च करने के बाद रू 450 जो शेष का आधा है उसे वह बचाता है। उसे अपने पिता से कितने रू मिले थे?	Gaurav spends 40% of the amount he received from his father on hostel expenses, 20% on books and stationery and 50% of the remaining on transport. He saves Rs 450 which is half the remaining amount after spending on hostel expenses, books etc. and transport. How much money did he get from his father?	\N
455	65	1	दो संख्याएँ 2: 3 के अनुपात में है। यदि छोटी संख्या के 20 प्रतिशत में 20 जोड़ा जाता है तो प्राप्त संख्या, बड़ी संख्या के 10 प्रतिशत से 25 अधिक है, तो छोटी संख्या ज्ञात करें?	Two number are in the ratio of 2 : 3, If 20 is added in 20 % of first number than the resultant number become 25 more than to the 10 % of Bigger number. Than find the smaller number is ?	\N
460	65	3	चीनी के भाव में 11(1/9)  प्रतिशत की बढ़ोतरी की गयी है। यदि चीनी पर किए जाने वाले व्यय को पहले जितना ही रखना हो, तो खपत में कमी का पहले की खपत से अनुपात होगा-	Price of sugar increases by 11(1/9) %, If the expenditure on sugar remain same as earlier than find the Ratio of Reduced consumption to the initial consumption ?	\N
461	65	3	एक संख्या पहले 20 प्रतिशत कम की जाती है। फिर इस कम की हुई संख्या में 20 प्रतिशत वृद्धि की जाती है। परिणामी संख्या मूल संख्या से 20 कम है, तो मूल संख्या है-	If a number is first decreased by 20 % and than it is increased by 20% and the number is reduced by 20 than find the actual number is ?	\N
462	65	4	जब कोई तरल अपनी ठोस अवस्था में जम जाता है तो उसके आयतन में 4 प्रतिशत की वृद्धि होे जाती है। ठोस के वापस तरल में पिघलने पर आयतन में कितने प्रतिशत कमी होगी?	When a liquid freezed in solid state so its volume is increased by 4 % than find the % reduced in volume. When its melt into solid to liquid ?	\N
463	65	1	किसी व्यक्ति के वेतन मंे पहले 20% की वृद्धि की गई और फिर उसमें 20% की कमी की गई। उसके वेतन में परिवर्तन है-	Salary of a person is first increased by 20%, then it is decreased by 20%. Change in his salary is	\N
464	65	2	1 घण्टा 45 मिनट की समयावधि एक दिन का कितना प्रतिशत है?	The time duration of 1 hour 45 minutes is what percent of a day?	\N
448	65	2	29 से बड़ी दो संख्याओं का म.स 29 तथा ल.स. 4147 है, तो उन संख्याओं का योग ज्ञात करें।	Two numbers, both greater than 29, have HCF 29 and LCM 4147. Find sum of two numbers.	\N
687	70	1	तीन पुरुष A ,Bऔर C ने दिल्ली से जयपुर तक की यात्रा क्रमशः 10.00ंam 11.30ंam और 01.00pm पर शुरु की। वे एक ही समय पर जयपुर पहुॅंचे, यदि A की गति 30 किमी/घंटा है और C की गति 45 किमी/घंटा है तो B की गति ज्ञात करें ?	Three men A, B and C started their journey from Delhi to Jaipur at 10:00 am, 11:30 am and 01:00 pm respectively. They reached Jaipur at the same time, if A’s speed is 30 km/hr and that of C is 45 km/hr then find the speed of B? 	\N
906	75	4	9 संख्याओं का औसत 45 है। यदि प्रथम 4 संख्याओं का औसत 41 और अन्तिम 4 संख्याओं का औसत 48 हो, तो 5वीं संख्या क्या है ?	The average of 9 number is 45. if the first 4 number is 41 and last 4 number is 48, than find 5th  number.	\N
688	70	2	A एक निश्चित दूरी 52 दिनों में तय कर सकता है जब वह प्रतिदिन 10 घंटे आराम करता  है, तो ज्ञात करें वह दुगुनी दूरी कितने समय में तय करेगा, यदि अब वह प्रत्येक दिन में दोगुनी गति से दो बार दौड़ता है ? 	28.\tA can walk a certain distance in 52 days when he rests 10 hours a day, how long will he take for twice the distance, if he walks twice as fast and rests twice as long each day? 	\N
689	70	1	एक कर्मचारी प्रत्येक किमी के लिये 7रु का दावा करता है, जब वह टैक्सी से यात्रा करता है जबकी वह प्रत्येक किमी के लिये 6रु का दावा करता हैजब वह अपनी कार से यात्रा करता है। यदि एक सप्ताह में उसने 90 किमी की यात्रा के लिए 575 रु का दावा किया है। तब ज्ञात करें उसने टैक्सी से कितने किमी की यात्रा की ?	An employee may claim Rs. 7 for each km when he travels by taxi and Rs.6 for each km if he drives his own car. If in one week he claimed Rs.575 for travelling 90 kms. How many kms did he travel by taxi? 	\N
690	70	2	अंकित 25 किमी/घंटा की चाल से साइकिल चलाता है लेकिन प्रत्येक 12 किमी के बाद विश्राम करने के लिए 5 मिनट तक रुकता है। 240 किमी की दूरी तय करने में उसे कितना समय लगेगा ?	Ankit rides a bicycle a bicycle at the speed of 25 km/h but stops for 5 minutes to take rest every 12 kms. How much time will he take to cover a distance of 240 kms? 	\N
691	70	3	एक लड़का अपने घर से एक लड़की को आॅफिस लेने जाता है। लड़की के आॅफिस छोड़ने का समय 4pm है। एक दिन लड़की ने 2pm आॅफिस छोड़ दिया और 20किमी/घंटा की चाल से घर की तरफ चल पड़ी और रास्ते में लड़के से मिलती है, जो अपने निश्चित समय पर ही घर से चला था। वे घर 40 मिनट जल्दी पहुॅंच जाते हैं। लड़के की चाल ज्ञात करें ?	A boy starts from his home at a certain time with a certain speed to pick up his girlfriend from office at 4:00 pm. One day his girlfriend left the office at 2:00 pm and starts walking to home with a speed of 20 km/hr. and meets the boy on the way who left his home at his usual time. They reached home 40 min earlier than their usual time. Find the speed of boy	\N
483	66	3	दो संख्याएँ, तीसरी संख्या से क्रमशः 20 प्रतिशत तथा 34 प्रतिशत कम है, तो दूसरी संख्या, पहली संख्या से कितना प्रतिशत कम है?	If two numbers are 20 % and 34 % resp. less than to the third no. then find second number is what percentage less than to the first number?	\N
484	66	2	80 के 4/5 और 650 के 4/5 % में क्या अंतर है ?	Difference between 4/5 of 80 and 4/5 % of 650 is what ?	\N
692	70	2	एक कार निरंतर गति से च् से फ तक यात्रा करती है। यदि इसकी गति 10 किमी/घंटा बढ़ा दी जाती है, तो यह दूरी तय करने में एक घंटा कम समय लेती है यदि गति को 10 किमी/घंटा और बढ़ाया जाता तो यह 45 मिनट और कम समय लेती है। दोनों शहरों के बीच की दूरी क्या है ?	A car travels from P to Q at a constant speed. If its speed were increased by 10 km/h, it would have been taken one hour lesser to cover the distance. It would have taken further 45 minutes lesser if the speed was further increased by 10 km/h. The distance between the two cities is: 	\N
693	70	2	एक रेलगाड़ी समान गति से एक निश्चित दूरी तय करती है। यदि रेलगाड़ी 8 किमी/घंटा तेज होती, तो यह निर्धारित समय से 16 घंटे कम लेती। अगर रेलगाड़ी 4 किमी/घंटा धीमी होति, तो यह निर्धारित समय से 12 घंटे अधिक लेती। रेलगाड़ी द्वारा तय की गयी दूरी ज्ञात करें।	A steam train travels a certain distance at a constant speed. If the steam train was 8 km faster than it would take 16 hours less than the scheduled time. If the steam train was 4 km per hour slow, it would take 12 hours more than the scheduled time. Find the distance covered by the steam train. 	\N
694	70	3	यदि एक व्यक्ति कार से 84 किमी/घंटा की गति से आॅफिस जाता है तो 1 घंटा देरी से पहूॅुंचता है। यदि वह 108 किमी/घंटा की गति से जाता है तो 20 मिनट पहले पहूॅुंचता है। ज्ञात कीजिए उसे कितनी गति से जाना चाहिये ताकि वह समय पर आॅफिस पहुॅंचे ?	If a person travels in car at a speed of 84 kmph, he reaches office one hour late. If he travels at a speed of 108 kmph, he reaches 20 minutes early. Find the speed at which he must travel to reach office on time.	\N
703	71	2	एक रेलगाड़ी 198 किमी की दूरी एक निश्चित समय में तय करती है। यदि रेलगाड़ी एक कार की तुलना में 14.28% तेजी से चलती है तो दोनों एक ही समय पर पहुॅंचती हैं क्योंकि रेलगाड़ी 16.5 मिनट के लिए स्टेशन पर रुकती है। कार की चाल ज्ञात करें ?	A train travels 198 km in certain time. If train travels 14.28% faster than a car then both reach at a same time because there was a 16.5 min halt for train. Find the speed of car? 	\N
704	71	3	B की गति, A की तुलना में 22.5 प्रतिशत अधिक है । वे क्रमशः 21 और 25 घंटे चलते हैं ,यदि A,B से 88 किमी कम चलता है, तो A और B दोनों द्वारा तय की गई कुल दूरी ज्ञात करें ?	The speed of B is 22.5% more than A. They walk 21 hr. & 25 hr. respectively. If A will move 88 km less than B. Find the total distance covered by both A and B. 	\N
488	66	1	1+ 1/2 + 1/4 + 1/7 + 1/14 + 1/28 बराबर है-	1+ 1/2 + 1/4 + 1/7 + 1/14 + 1/28  = ?	\N
489	66	3	(1+1/2) (1+1/3)(1+1/4)…..(1+1/120) का मान है-	(1+1/2) (1+1/3)(1+1/4)…..(1+1/120) = ?	\N
705	71	4	एक व्यक्ति एक वृत्ताकार खेल के मैदान को अगर व्यास के अनुदिश (A से B) पार करे तो वृत्ताकार पथ की अपेक्षा 2 मिनट कम समय लेगा। अगर वह 15 सेकण्ड में 30 मीटर की दूरी तय करता है तो उस खेल के मैदान की त्रिज्या ज्ञात करें ?	A person while walking diametrically across a semi-circular playground takes 2 min less than if she had kept walking round the circular path from A to B. If he walks 30 meters in 15 sec. What is the radius of the playground? 	\N
907	75	4	11 परिणामों का औसत 35 है। पहले 7 परिणामों का औसत 38 है और अंत के 5 परिणामों का औसत 36 है, तो सातबीें संख्या क्या होगी?	The average of 11 results is 35. average of first 7 is 38 and average of last 5 is 36. Find the value of the 7th number.	\N
475	66	2	यदि 24 कैरेट सोने को सौ प्रतिशत शुुद्ध सोना माना जाता है, तोे 22 कैरेट सोने में , शुद्ध सोने का प्रतिशत ज्ञात करें ?	If 24- carat gold is considered to be hundred per cent pure gold, then the percentage of pure gold in 22-carat gold is :	\N
479	66	2	एक व्यक्ति अपनी 75 प्रतिशत राशि पहली बाजी में, शेष की 75 प्रतिशत दूसरी बाजी में और शेष की 75 प्रतिशत तीसरी बाजी में हार गया और केवल 2 रू॰ लेकर अपने घर पहुँचा। उसकी प्रारंम्भिक राशि कितनी थी ?	A person loses 75% of his money in the first bet, 75% of the remaining in the second and 75% of the remaining in the third bet and returns home with Rs. 2 only. His initial money was	\N
480	66	1	एक फैक्र्टी में उत्पादन प्रतिवर्ष निश्चित दर से बढ़ता है। दर ज्ञात करो यदि ज्ञात है कि उत्पादन दो वर्षों बाद दोगुना हो जाता है ?	16.\tIn a factory kept increasing its output by the same % every year. Find the % if it is known that his output is doubled after 2 year?	\N
481	66	2	यदि A का 40% = B का 0.20 = C का 80% है, तो A : B : C  किसके बराबर है? 	40 % of A = 0.20 of B = 80% of C than , A:B:C is equal to.	\N
482	66	1	किसी संख्या के 40 प्रतिशत में से 60 घटाने पर परिणाम 80 आता है, तो संख्या क्या है?	If 60 subtracted by 40 % of a number, we get 80 than find the actual number ?	\N
485	66	4	यदि a का 5% = b है, तो 20 का b% बराबर होगा ?	If 5 %  of  a = b then b % of  20  is same as?	\N
487	66	4	दो संख्याऐं किसी तीसरी संख्या से क्रमषः 12(1/2) प्रतिषत तथा 25 प्रतिषत अधिक है। पहली संख्या दूसरी संख्या का प्रतिषत है?	Two numbers are 12 (1/2) % and 25 % more than the third number than find what % first number to the second number? 	\N
490	66	5	44.60×2.50=?	44.60×2.50=?	\N
491	66	5	राजू अपने वेतन का 40% मकान के किराए पर, शेष का 10% यात्रा पर शेष का 16(2/3)% भोजन पर खर्च करता है। यदि उसकी कुल बचत 2250 रू. हो तो भोजन पर उसका कुल खर्च ज्ञात करें।	Raju spend 40% of his income on rent out of the remaining 10 % spends on traveling and out of the remaining 16 (2/3) % on food if he save 2250rs in the end of every month than find how much amount spent on food? 	\N
492	66	3	यदि किसी भिन्न के अंश को 40% बढ़ा दें तथा हर को 60% बढ़ा दे, तो परिणामी भिन्न 5/8 हो जाता है। मूल भिन्न ज्ञात करें।	If the numerater of any fraction is increased by 40% and the denomerater is also increased by 60 % than we get 5/8 than find the actual fraction ?	\N
493	66	3	4500 के 5/9  का 36% का 27% = ?	What is 27% of 36% of 5/9 th of 4500?	\N
494	66	4	किसी संख्या के 3/5 के 60% का 40% = 504 है तो उस संख्या के 2/5 का 25% क्या होगा ?	40% of 60% of 3/5 of a number is 504. What is 25% of 2/5 of that number?	\N
495	66	2	A किसी काम को 12 दिन में करता है, वह B से 60% अधिक कार्यशील है। तो B इसे कितने दिन में पूरा करेगा?	A is 60 % more efficient than B, A can complete a work 12 days so how many days work will complete only by B?	\N
496	66	5	एक टंकी पाइप A द्वारा 4 घण्टे में भरती है तथा B उसे 5 घण्टे में खाली कर सकती है यदि दोनों नल एक घण्टे के अन्तराल में काम करता है तो टंकी भरने में कितना समय लगेगा यदि पहले A खोला जाए तो।	A can fill the tank in 4 hours B can empty the same tank in 5 hours if they are working alternately how much time to fill the tank if A opens first?	\N
510	66	2	50 से कम 3 के सभी गुणजों का योगफल ज्ञात करो।	Find the sum of all positive multiples of 3 less than 50.	\N
497	66	1	यदि चीनी के मूल्य में 7 प्रतिशत की वृद्धि हो जाए तो किसी गृहणी को अपनी खपत में कितने प्रतिशत की कमी करे ताकि खर्च में कोई वृद्धि न हो?	If price of a sugar is increased by 7 % so how much % his consumption reduced so that expenditure remain same?	\N
498	66	2	एक समान चाल से चलने पर 6 मशीनें 270 बोटले प्रति मिनिट बनाती है। समान दर से चलते हुए 10 मशीनें 4 मिनट में कितनी बोतले बनाएगीं?	Running at the same constant rate, 6 identical machines can produce a total of 270 bottles per minute. At this rate. How many bottles could 10 such machines produces in 4 minutes.	\N
499	66	2	यदि A 9 घण्टे प्रतिदिन काम करके 7 दिन में काम पूरा करता है और B 7 घण्टे प्रतिदिन काम करके 6 दिन में पूरा कर सकता है तो यह दो मिलकर प्रतिदिन 8 (2/5) घण्टे काम करे तो कितने दिन लगेंगें?	If A working for 9 hours in a day, he can complete a work in 7 days and B working for 7 hours in a day he can complete a 6 days if they working together for 8 (2/5)  in a day then how many days work will complete?	\N
501	66	2	उस छोटी से छोटी संख्या के अंकों का योग क्या है, जिसे 16,24,30 तथा 36 से विभाजित करने पर क्रमशः 8,16,22 और 28 शेषफल बचता है और जो 7 से पूर्णतः विभाजित है ?	Find the sum of digit of a smallest number which when divided by 16,24,30 and 36 leaves remainder 8,16, 22 and 28 respectively but exactly divisible by 7? 	\N
502	66	2	एक नौकर को निश्चित दिनों के लिए काम पर रखा गया जिसके लिए उसे 3239 रु दिया जाना था वह कुछ दिनों के लिए अनुपस्थित रहा एवं उसे केवल 2923 रु दिया गया, उसकी अधिकतम दैनिक मजदूरी क्या थी ?	A servant was hired for fixed days for which he had to pay Rs. 3239. he was absent for some days, and only Rs 2923 was paid, what was his maximum daily wages? 	\N
503	66	3	1200 का 25 % का 0.09 % = ?	0.09 % of 25 % of 1200 =  ?	\N
504	66	4	50000 का 12 % का 0.08 % = ?	0.08 % of  12 %  of  50000 =  ?	\N
505	66	2	A किसी काम को करने में (B+C)  से 3 गुना समय लेता है। जबकि B उसी काम को करने में (A+C)  से 4 गुना समय लेता है। यदि (A+B+C) मिलकर इस काम को 22 दिन में कर लेते है तो A इिस काम को कितने दिन में पूरा करेंगे ?	A takes three times as long as (B+C) together to complete work. B takes four times as much as (A+C) together to complete a work. If all the three  (A+B+C), working together can complete the work in 22 days. Then find the number of days A, alone will take to complete this work.	\N
507	66	3		 	fc43e0a30b6793314a2a98ae04b84a6c
506	66	2		 	a720dac64d3a670a196278ed6e1d6ce2
508	66	3	यदि 4 पुरूष और 6 लड़के एक काम को 5 दिनों में खतम करते है और 6 पुरूष और 4 लड़के उसी काम को 4 दिनों में कर सकते है, तो 8 पुरूष व 12 लड़के उसी काम को कितने दिपों में करेंगे?	If 4 men and 6 boys can do a piece of work in 5 days and 6 men and 4 boys can do the same in 4 days, then the time taken by 8 men and 12 boys to do the same type of work will be :	\N
509	66	3	एक संख्या को दो भागों में इस प्रकार बाँटा जाता है। कि पहले भाग का 80% दूसरे भाग के 60% से 3 अधिक है, और दूसरे भाग का 80% पहले भाग के 90% से 6 अधिक है, तो संख्या क्या है?	A number is divided into two parts such that, 80 % of first part is 3 more than 60 % of second part, and 80 % of second part is 6 more than 90 % of first part than find the number is ?	\N
706	71	2	एक व्यक्ति सुबह किसी समय अपनी यात्रा शुरु करता है। वह 8ः30 बजे तक यात्रा का 5/16 तय करता है और उसी दिन 3ः15 बजे वह यात्रा का 65 प्रतिशत तय करता है। ज्ञात कीजिए वह किस समय अपने गंतव्य स्थान पर पहुॅंचेगा ?	A person started his journey in the morning. At 8:30 am he covered 𝟓/𝟏𝟔part of journey and on the same day at 3:15 pm he covered 65% of the journey. At what time he will reach his destination? 	\N
707	71	1	दो रेलगाडी एक ही समय पर अलीगड़ और दिल्ली से शुरु होती हैं और क्रमशः 85 किमी और 110 किमी प्रति घंटे की दर से एक दूसरे की ओर बढ़ती हैं। जब वे मिलते हैं , तो पता चलता है कि एक रेलगाडी ने दूसरे की तुलना में 225 किमी अधिक यात्रा की है। दो स्टेशन के बीच की दूरी है-	7.\tTwo trains start at the same time from Aligarh and Delhi and proceed towards each other at the rate of 85 km and 110 km per hour respectively. When they meet, it is found that one train has travelled 225 km more than the other. The distance between two station is: 	\N
708	71	2	रेलगाडी यदि कोई व्यक्ति 48 किमी/घंटा की गति से मोटरसाइकिल चलाता है तो वह गन्तव्य पर दोपहर 2ः00 बजे पहुॅंचता है। यदि वह 80 किमी/घंटा से मोटरसाइकिल चलाता है तो वह उसी गन्तव्य पर सुबह 10ः00 बजे पहुॅंचेगा। ठीक दोपहर 12 बजे वहाॅं पहुॅंचने के लिए उसे किस गति से मोटरसाइकिल चलाना चाहिए ?	If a man cycles at 48km/hr then he arrives at certain place at 2:00 pm. If he cycles at 80km/hr he will arrive at the same place at 10:00 am. At what speed must he cycle to get there at noon? 	\N
709	71	3	एक आदमी स्वचालित सीढ़ी पर चलते हुए 40 सेकंड में उपर पहुॅंचता है। वही आदमी 2 मिनट में स्वचालित सीढ़ी से नीचे उतरते हुए 2 मिनट में नीचे उतर जाता है। मान लें कि उसकी चलने की गति उपर और नीचे की ओर समान है। जब स्वचालित सीढ़ी रुका हुआ है तब व्यक्ति को उपर पहुॅंचने में कितना समय लगेगा ?	A man can walk up a moving “up” escalator in 40 second. The same man can walk down this moving “up” escalator in 2 minutes. Assume his walking speed is same upwards & downwards. How much time he will take to walk up the escalator when escalator is not moving? 	\N
720	71	2	एक आदमी 270 किमी की दूरी 9 घंटे में तय करता है जिसमें कुछ कार से तथा कुछ रेलगाड़ी से। कार की गति 36 किमी/घंटा और रेलगाड़ी की गति 27 किमी/घंटा है। उसने कार तथा रेलगाड़ी में कितने-कितने किमी दूरी तय की?	A person travelled 270 km in 9 hours partly by car and partly by train. Speed of car is 36 km/h and speed by train is 27 km/hr. Find the distance travelled by car and travelled by train.	\N
710	71	1	तेज गति वाली रेलगाड़ी 100 किमी/घंटा की चाल से प्रत्येक 75 किमी की दूरी तय करने के बाद 3 मिनट के लिए विश्राम करती है जबकि धीमी गति वाली रेलगाड़ी 50 किमी/घंटा चाल से प्रत्येक 25 किमी की दूरी तय करने के 1 मिनट का विश्राम करती है। जब तेज गति वाली रेलगाड़ी 600 किमी की दूरी तय करती है तो ज्ञात कीजिए धीमी गति वाली रेलगाड़ी कितनी दूरी तय करेगी ?	Speed of a faster train is 100 km/h and it takes 3 minutes rest after covering each 75 km distance while the slower train is running at the speed of 50 km/h and it takes 1 minutes rest after covering each 25 km distance. Find the distance traveled by the slower train when the faster train travel 600 km distance .	\N
712	71	2	1200 मी॰ लम्बे किसी पुल के दोनो ओर दो व्यक्ति खड़े हुए है। यदि वे एक दूसरे की ओर क्रमशः 5 मी॰/मिनट और 10 मी॰/मिनट की चाल से चलें, तो वे कितने समय में एक साथ मिलेंगे ?	Two men are standing on opposite ends of a bridge 1200 metres long. If they walk towards each other at the rate of 5 m / minute and 10 m/minute respectively. In how much time will they meet each other.	\N
713	71	2	A और B 15 किमी. की दूरी पर हैं। वे एक-दूसरे की ओर चलकर आधे घंटे बाद मिल जाते हैं, लेकिन एक ही दिशा में चलते हुए ढ़ाई घंटे बाद मिल पाते हैं। तद्नुसार उनमें तेज चलने वाले की गति बताइए।	A and B are 15 kms apart and when travelling towards each other meet after half an hour where as they meet two and a half hours later if they travel in the same direction. The faster of the two travels at the speed of.	\N
919	75	3	A किसी काम के 13/56 भाग को 111 दिन में करता है, जबकि B, 43/56 भाग को 111 दिन में करता है। तो दोनोें मिलकर उस काम को कितने दिन में पूरा करेगें ?	A can do 13/56 part of a work in 111 days and B can do 43/56part of a work in 111 days. In how many days will A and B complete the total work.	\N
714	71	1	A और B के बीच की दूरी 211 किमी है एक नाव बिंदु A से B की ओर धारा के अनुकुल  7ः45ं am पर चलना आरम्भ करती है। एक घंटे बाद दूसरी नाव बिंदु B से A की ओर चलना प्रारम्भ करती है। 12ः45pm पर दोनों नाव मिलती हैं। यदि शांत जल में पहले और दूसरे नाव की चाल क्रमशः 26 किमी / घंटा और 18 किमी / घंटा है तो धारा की चाल ज्ञात कीजिए ?	The distance between A & B is 211 km. One boat start moving from point A towards B in downstream at 7:45 am. After one hour, another boat starts from point B towards A. At 12:45 pm both boat will meet. If speed of boat first and second is 26 km/hr and 18 km/hr resp. in still water. Then find the speed of current.	\N
715	71	1	एक नाव स्थिर पानी में 6 किमी / घंटा की गति से चलती है, लेकिन धारा के प्रतिकूल उतनी ही दूरी तय करने में उसे तीन गुना समय लगता है। धारा की गति (किमी / घंटा) में  है:	A boat goes 6 km an hour in still water, but takes thrice as much time in going the same distance against the current. The speed of the current (in km/hr) is:	\N
716	71	1	किसी एक व्यक्ति को 39 किमी की दूरी धारा के विपरीत दिशा में और 116 किमी धारा की दिशा में तय करने में कुल समय 7 घंटा लगता है \n\nऔर उसे 65 किमी की दूरी धारा के विपरीत दिशा में और 87 किमी धारा की दिशा में तय करने में कुल समय 8 घंटा लगता है स्थिर पानी में नाव की गति का पता लगाऐं ?\n\n	A man covers 39 km upstream and 116 km downstream in 7 hrs. He also covers 65 km upstream and 87 km downstream in 8 hrs. Find the speed of boat in still water.	\N
717	71	4	किसी नदी में नदि के किनारे पर दो बिंदुओं P और R के बीच मध्य बिंदु Q है। कोई नाव P से Q तक जाकर वापस कुल 12 घंटे में आ सकती है। और P से R तक 16 घंटे 40 मिनट में आ सकती है । बताइए उसे R से P तक आने में कितना समय लगेगा ?	On a river, Q is the mid point between two points P and R on the same bank of the river. A boat can go from P to Q and back in 12 hrs, and from P to R in 16 hrs 40 mins. How long would it take to go from R to P ?	\N
718	71	4	A और एक लड़का 4.5 किमी/घंटा की गति से विद्ययालय जाता है और 7.5 किमी/घंटा की गति से लौटता है। यदि उसे कुल यात्रा में 144 मिनट लगा तो उसके घर से विद्यालय की दूरी ज्ञात करें ?	The boy goes to school at 4.5 km/hr and return at the speed of 7.5 km/hr. if he takes 144 minutes in all. Find the distance from his village to school ?	\N
719	71	4	एक रेलगाड़ी एक निश्चित स्टेशन से 105 किमी/घंटे की चाल से चलना प्रारंभ करती है। 7 घंटे चलने के बाद वह रेलगाड़ी दुर्घटनाग्रस्त हो जाती है और रेलगाड़ी की चाल में 30 किमी/घंटे की कमी हो जाती है तथा रेलगाड़ी 4 घंटे 48 मिनट की देरी से पहुंचेगी । यात्रा की कुल दूरी ज्ञात कीजिए ? 	A train starts from a certain station with speed of 105 km/hr., after travelling 7 hrs. train get accident and speed of train decreases by 30 km/hr. and train will late by 4 hours 48 minutes. Find the total distance of journey. 	\N
721	71	2	राधा A से जिनकी चाल 45 किमी/घंटा है, श्याम B से एक दूसरे मिलने के लिए चलते है। एक दूसरे से मिलने के बाद राधा, श्याम के घर तथा श्याम, राधा के घर क्रमशः 4 घंटे और 9 घंटे में पहुँचते हैं। दोनों घरों के बीच की दूरी तथा श्याम की चाल क्या होगी?	Radha walks with the speed of 45km/h from A to meet shyam and shyam walk towards her from B. After meeting each other at C they reach at each other’s home in 4 hours and 9 hours respectively. Find the distance between  A and B and speed of shyam.	\N
733	71	1	\tपानी की एक टंकी में 2/5भाग पानी भरा हुआ है। A नल उस टंकी को 10 मिनट में भर सकता है, जबकि B नल उसकों 6 मिनट में खाली कर सकता है। यदि दोनों नल खोल दिए जाए, तो टंकी कितने समय मं पूर्णतः खाली या भरी जा सकती है?	If 2/5  part of the tank in already fill by water. And pipe A can fill the tank is 10 min. while pipe B can empty it in 6 min. If Both the pipe. Open together in what time the tank will be filled or empty ?	\N
722	71	4	एक कार 140 किमी की दूरी का भाग 6 किमी/घंटा की चाल से तथा शेष भाग 10 किमी/घंटा की चाल से तय करती है यदि यह चालों का परस्पर बदल कर दूरी तय करती है तो उसी समय में 8 कि.मी. अधिक दूरी तय करती है तो ज्ञात करेे 140 किमी की दूरी को तय करने में कार को कितना समय लगेगा तथा कार की औसत चाल क्या होगी?	A car travels 140 km partly at a speed of 6 km/h and the remaining at a speed of 10 km/h. If the speeds, are reversed then it travels 8 km more in the same time. Then find the time takes by car to travel 140 km and also find what was the average speed of the car.	\N
1260	115	2	दो संख्याए 5: 7 के अनुपात में हैं। उनके lcm तथा  hcf का गुणनफल 12635 है। संख्याओं का योगफल होगा ?	Two numbers are in the ratio of 5: 7. The product of their LCM and HCF is 12635. then the sum of the numbers will be. 	\N
723	71	1	मेट्रो ट्रेन हर 15 मिनट बाद छूटती है। एक व्यक्ति मेट्रो की तरफ भाग रहा है, तो उसे 12 मिनट बाद मेट्रो मिल जाती है। यदि मेट्रो की चाल 16 किमी/घंटा है, तो व्यक्ति की चाल क्या होगी?	A metro leaves after every 15 minutes. A person is running towards metro then he catches the metro after 12 minutes. If speed of metro is 16 km/h. find speed of man.	\N
724	71	2	\t25 किमी. की दूरी तय करने के बाद एक कार की सामान्य चाल को 1/4 से बढ़ाने पर अपने गंतव्य स्थान पर समय से 30 मिनट जल्दी पहुँच जाती है। यदि कार की गति में परिवर्तन 10 किमी. पहले कर लिया जाता तो वह कार समय से 32(2/5) मिनट जल्दी पहुँच जाती। तो ज्ञात कीजिए तो कार ने कितनी दूरी तय की ?	After travelling 25km the speed of the car increases by 1/4th of its original speed, due to this the car reaches 30 minutes earlier on its destination. If the speed of the car increased 10 km before, then it reaches to its destination 32(2/5) minutes earlier. Then find the distance travelled by car.	\N
726	71	1	यदि एक आदमी 10 kmphकी चाल से दौड़ता है तो वह किसी निश्चित स्थान पर दोपहर 1 बजे पहुँचता है किन्तु यदि वह अपनी चाल को 5 kmphकी चाल से बढ़ा देता है तो वह सुबह 11 बजे पहुँचता है। तो ज्ञात कीजिए दोपहर 12pm बजे पहुँचने के लिए उसकी चाल क्या होगी?	If a man runs at 10km/h , then he arrives at a certain place at 1 p.m. But if he increases his speed by 5km/h then he reaches there at 11 a.m. At what speed must he run to get there at 12 Pm.	\N
727	71	3	एक मोटर-बोट, एक गति से 8 घंटे में धारा के विपरीत 25 किमी. तथा अनुदिश 39 किमी. जा सकती है। साथ ही उसी गति से यह 11 घंटे में धारा के विपरीत 35 किमी. तथा अनुदिश 52 किमी. जा सकती है। धारा की चाल है-	A boat covers  25 km upstream and 39 km downstream in 8hr. It covers 35 km upstream and 52 km downstream in 11 hr. Find the speed of current?	\N
728	71	3	एक व्यक्ति शांत जल में 5 kmph की चाल से नाव चला सकता हैं यदि किसी स्थान पर नाव द्वारा जाने तथा वापस आने में उसे एक घण्टे का समय लगता है जबकि धारा की गति 1 kmph है तो स्थान कितनी दूर होगा ?	A person can row a boat at the speed of 5kmph in still water if he take 1 hr. to go a certain destination and return back to the starting point , if the speed of stream is 1kmph than find the distance.	\N
729	71	2	एक नाव धारा के दिशा के साथ 12 किमी॰ जाने में 1 घंटा का समय लेती है। लौटने में उसे 4 घंटा समय लगता है। शांत जल में 8 किमी. जाने में वह कितना समय लेगी ?	A boat goes 12km in downstream in an hour, and 4 hr. to come back , than find in what time he can cover 8km in still water?	\N
730	71	3	एक व्यक्ति ने 36 किमी धारा की प्रतिकूल दिशा में और 48 किमी निचले प्रवाह में दोनों तरफ से 6-6 घंटे नौका चलाई। धारा की गति क्या थी ?	A boat goes 36km in upstream and 48km in downstream taking 6 hr each time then find the speed of stream?	\N
731	71	4	एक जहाज धारा के प्रतिकूल 30 किमी की दूरी 6 घंटे में तय करता है जो बताइए समान दूरी धारा के अनुकूल तय करने में कितना समय लेगा यदि धारा की चाल नाव की चाल की 1/4 हो तो ?	A ship sails 30km of a river towards upstream in 6hrs. How long will it take to cover same distance downstream. If the speed of the current is (1/4)rth of the speed of the boat in still water. 	\N
732	71	1	A और B अलग-अलग किसी काम को क्रमशः 15 और 20 दिन में करते हैं। B ने काम आरम्भ किया और यदि वह दोनों एक दिन छोड़कर काम करते हैं तो पूरा काम कितने दिन में खत्म होगा?	A and B can do a work in 15 days and 20 days respectively B started the work and they work on alternate days. Find the number of days it will take them to complete the work.	\N
734	71	3	\tएक परीक्षा में A को B की अपेक्षा 18(3/4) प्रतिशत अधिक अंक मिले। उसमें B को C की अपेक्षा 20 प्रतिशत कम अंक मिले और C को D की अपेक्षा 20 प्रतिशत अधिक अंक मिले। तद्नुसार, यदि A को 500 में से 342 अंक मिले हों, तो D को कितने अंक मिले हैं ?	In an examination A get 18(3/4) % more than A. and B get 20% less than C. and C get 20% more than D, If A get 342 out of 500. Than find how much marks getting by D ?	\N
735	71	3	\tएक कम्पनी अपने सेल्समैन को कुल बिक्री का 12% कमीशन देती है ओर 15000 से ऊपर की बिक्री पर 1% बोनस देती है। अगर सेल्समैन ने अपना कमीशन काटने के बाद कम्पनी में 52350 रू॰ जमा करवाए हो तो कुल बिक्री ज्ञात करों।	A salesman get 12 % commission of selling upto 15000 and he get 1 % bonus exceeds on this. If salesman remits 52350 Rs. To his parent company than find his total sell ?	\N
1228	115	1	प्रतिशत जब विक्रय मूल्य को 627 रु बढ़ाया जाता है तब 7.5 प्रतिशत हानि से 12.5 प्रतिशत का लाभ होता है तो वस्तु का क्रय मूल्य ज्ञात करें (रु में ) ?	\tAn increase of Rs627 in the selling price of an article turns a loss of 7(1/7)% into a gain of 12.5%. The cost price (in Rs) of the article is: - 	\N
736	71	3	एक चुनाव में दो उम्मीदवारों ने भाग लिया है। 23.33% वोट अवैध घेषित किए गए थे और विजेता को कुल वैध मतों का 57% मिला और 7245 वोटों से जीत गया। मतदान सूची में मतदाताओं की कुल संख्या क्या होगी ?	In an election two candidate have participated. 23.33% votes were declared invalid and the winner got 57% of the total valid votes and won by 7245 votes. Find the total number of voters in voting list.	\N
740	71	2	किसी संख्या को 3 से भाग देने पर 1 शेष बचता है। यदि भागफल को 2 से भाग दिया जाये तो 1 शेष बचता है। यदि संख्या को 6 से भाग दिया जाये तो शेषफल क्या बचेगा?	A number when divided by 3 leaves a remainder 1. When the quotient is divided by 2, it leaves a remainder 1. What will be the remainder when the number is divided by 6.	\N
908	75	4	एक गेदंबाज का बाॅलिंग औसत 12.4 है। अंतिम मैच में ये खिलाड़ी 26 रन देकर 5 विकेट लेता है। और उसकी बाॅलिंग औसत में 0.4 का सुधार हो जाता है। तो अंतिम मैच से पहले उसने कितने विकेट लिये थे?	The bowling average of a bowling is 12.4. He took 5 wickets  for 26 runs in his last match then his average improves by 0.4 Find number of wickets before last match.	\N
909	75	1	एक कक्षा में 100 बच्चों का औसत 64 था। बाद में पता चला कि गलती सेे 64 की जगह 46 लिख दिया गया था,तो उसका सही औसत क्या है?	Average marks of 100 students of a class is 58. Later it was found that 86 was mistakenly written as 68. Find the actual average.	\N
910	75	2	100 चीजों का औसत 46 है। बाद में पता चला कि 16 को 61 पढ़ लिया था तथा 43 को 34 पढ़ लिया था। चीजें भी 100 नहीं 90 थीं। तो वास्वत में क्या औसत होना चाहिए था ?	Average price of 100 articles is 46. Later it was found that 16 was read as 61 and 43 was read as 34 and the articles were 90 instead of 100. Find the actual average.	\N
911	75	3	जयेश अमित से उतना ही छोटा है जितना जयेश, प्रशान्त से बड़ा है। यदि अमित और प्रशान्त की आयु का योग 48 वर्ष है तो जयेश की आयु क्या है ?	Jayesh is as much as younger to the Amit as he is elder to the Prashant. If the sum of the ages of amit and Prashant is 48 yr. than find the age of Jayesh?	\N
912	75	3	दो भाइयों के उम्रों में अन्तर 8 साल है तथा योग 10 साल के बाद उनके उम्रों का योग दुना हो जाएगा। तो छोटे भाई की वर्तमान उम्र क्या है ?	Difference between the ages of two brother is 8 year and sum after 10 year is twice than sum of their age than find the age of youngest brother.	\N
913	75	2	गीता की शादी 6 साल पहले हुई, आज उसकी उम्र शादी के समय के उम्र की 1(1/4) गुनी है। उसके लड़के की उम्र उसके वर्तमान उम्र की 1/10 गुनी है, तो उसके लड़के की उम्र क्या है ?	Gita’s got married six years ago, and her present age is 1 (1/4)  times of age when she got married. And her son’s age is  1/10 times of his present age than find his son’s age.	\N
588	68	2	38% of 341 = ?	38% of 341 = ?	\N
914	75	2	A किसी काम को 20 दिन में तथा B 25 दिन में करता है। दोनों मिलकर काम प्रारम्भ करते हैं और A, 8 दिन के बाद छोड़ देता है। पूरा काम कितने दिन में खत्म हुआ ?	A can do a piece of work in 20 days and B can do same work in 25 days. Both A and B start the work and after 8 days A left. In how many days will the total work be completed.	\N
915	75	3	(A + B) किसी काम को 5 दिन में करते है। यदि A अपनी कार्यक्षमता दुगनी कर लेता है और B अपनी कार्यक्षमता 1/3 कर लेता है, तो काम 3 दिन में पूरा हो जाता है। A इस काम को कितने दिन में पूरा कर पायेगा ?	(A+B) can do a piece of work in 5 days. If A works with twice of his efficiency and B works with 1/3 of his efficiency, then work will be completed in 3 days. In how many days will A do this work alone.	\N
916	75	4	A किसी काम में 12 दिन में और B 18 दिन में करता है। A और B दोनों मिलकर काम शुरू करते हे। कुछ दिन बाद A छोड़ देता है और B शेष काम को 8 दिन में पूरा कर देता है। तो A ने कितने दिन बाद काम छोड़ था ?	A can do a piece of work in 12 days and B can do same work in 18 days. Both A and B start the work and after some days A left and B complete the remaining work in 8 days. After how many days will A left work.	\N
917	75	4	(A + B) किसी काम को 12 दिन में कर सकते है। A ने 3 दिन काम किया और चला गया तथा B ने 10(1/2) दिन काम किया और आधा काम पूरा हुआ। तो B उस काम को कितने दिन में पूरा करेगा ?	(A+B) can do a piece of work in 12 days. A works 3 days and B works for 10(1/2) days, then half of the work has been completed. In how many days will B do this work alone.	\N
918	75	3	A किसी काम तो 4 घंटे में कर सकता है। (B + C) उसे 3 घंटे में कर सकते है। (A + C) 2 घंटे में कर सकते है। तो बताओं कि B अकेला कितनी देर में करेगा ?	A can do a piece of work in 4 hours. (B+C) can do the same work in 3 hours. (A+C) can do the same work in 2 hours. In how many hours will B do this work alone.	\N
920	75	4	किसी काम को 80 दिन में करता है। A, 10 दिन तक काम करता है और चला जाता है तो बचा हुआ काम B, 42 दिन में खत्म कर देता है। (A + B) मिलकर इस काम को कितने दिन में पूरा करेगें ?	A can do a piece of work in 80 days. A works for 10 days, then B complete the remaining work in 42 days. In how many days will (A+B) do this work together.	\N
1113	112	2	एक निश्चित गाॅंव में वयस्क आबादी में 42 प्रतिशत पुरुष और 24 प्रतिशत महिलाऐं शादीशुदा हैं। यह मानते हुए कि कोई भी पुरुष एक से अधिक महिलाओं से शादी नहीं करता है और कोई महिला एक से अधिक पुरुष से शादी नहीं करती, अविवाहित रहने वाले वयस्को की संख्या कुल जनसंख्या का कितना प्रतिशत है ?	46-\tOf the adult population in a certain village 42% of men and 24% of women are married. Assuming that no man, marries more than one woman and vice versa, the percentage of total population of adult who are unmarried is? 	\N
1114	112	4	एक गांव की जनसंख्या 9600 हैं। पुरूष 8 प्रतिशत की दर से तथा महिलाए 5 प्रतिशत की दर से बढ़े तो 1 वर्ष बाद जनसंख्या 10,272 हो जाती है। पुरूषों की संख्या ज्ञात करो।	The population of a village is 9600. If the rate of man and woman is increases by 8 % and 5 % so after 1 yr. population becomes 10,272. Than find the number of men?	\N
1115	112	4	A,B और C के व्यय का अनुपात 16 : 12 : 9 है यदि इनकी बचत 20% , 25% और 40% हैं। तो इनकी आय का अनुपात कितना है?	Ratio between the expenditure of A ,B and C is 16:12:9, if their savings are 20% , 25% and 40% find their income ratio?	\N
1116	112	4	किसी परिवार में चावल , मछली तथा खाद्य तेल पर किए जाने वाले व्यय 12: 17: 3 के अनुपात में है। इन वस्तुओं के मूल्य में क्रमश: 20% , 30% तथा 50%  की वृद्धि हो जाती हैं परिवार के इन वस्तुओं पर किए जाने वाले व्यय में कुल कितनी वृद्धि हो जाएगी ?	The expenses on rice, fish and oil of a family are in the ratio 12 : 17 : 3. The price of these articles are increased by 20 % ,30 % and 50 % respectively. The total expenses of family on these articles are increased by :	\N
1117	112	1	60 विद्यार्थियों की एक क्लास में 30 प्रतिशत छात्र केवल अं्रग्रेजी बोलते है 20 प्रतिशत केवल हिन्दी बोलते है और बाकी छात्र दोनों भाषाएं बोल सकते है। ज्ञात करो कितने छात्र हिन्दी बोल सकते है।	In a class of 60 students, 30 % student can speak English 20 % can speak Hindi . and remaining can speak both the languages. Than find how many student can speak Hindi ?	\N
1118	112	2	एक कंपनी में 55% मजदूर चाय, 45% काॅफी तथा 40% दूध पसंद करते हैं। उनमें से 20% चाय और दूध, 20% काॅफी और दूध तथा 25% चाय और काॅफी दोनों पसंद करते हैं। 15% मजदूर ऐसे हैं जो तीनों चीज पसंद करते हैं। तो उस मजदूरों का % ज्ञात करों जो इन तीनों चीजों में से कुछ भी पंसद नही करते ?	In a company 55% of workers drink tea, 45% drink coffee and 40% drink. Milk 20% of workers drink tea and milk both, 20% drink coffee and milk both, 25% of workers tea and coffee both. 15% of workers drink all three beverages. Find the percentage of workers who do not like any of three beverages.	\N
1119	112	3	जब एक आदमी की आय 4800 रू॰ बढ़ती है तो टैक्स की दर 12 प्रतिशत से 10 प्रतिशत हो जाती हैं। जबकि दोनों परिस्थितियों में 20 प्रतिशत आय कर मुक्त है। current की आय ज्ञात करों अगर उसने दोनों परिस्थितियों में समान कर दिया हो।	Income of a person is increased by Rs. 4800. Tax rate decreases from 12% to 10% payable tax is same as before. If in both condition 20% of income is tax free. Find his current income.	\N
1120	112	2	दो संख्या है। जब पहली संख्या को 125 प्रतिशत से बढा दिया जाता है तो वह संख्या दूसरी संख्या से 300 कम हो जाती है लेकिन अगर पहली संख्या को 150 से बढा दिया जाता है तब वह संख्या दूसरी संख्या से 200 कम हो जाती है उन संख्याओं का योग क्या है।	There are two numbers. When first number is increased by 125%, the obtained number is 300 less than second number and if the first number is increased by 150 then the obtained number is 200 less than the second number. Find out the sum of the two numbers.	\N
1121	112	1	एक आदमी अपनी आय का एक निश्चित भाग बचाता है ताकि 16 महीने में वह एक कार खरीद सकें। अगर वो इसी कार को 14 महीने में खरीदना चाहता हो तो उसे अपनी बचत कितने प्रतिशत बढ़ानी पड़ेगी?	A man saves a certain part of his income so that he buy a car in 16 months , if he want to buy the same car in 14 months than find how much % he should increases his savings?	\N
1123	112	1	यदि A की आय B से 36.25% कम है। तो A तथा B कि कुल आय A कि आय से कितने % अधिक है?	If income of A is 36.25 % less than B then combined income of A and B is how much % more than A? 	\N
1229	115	1	\tरू. 1 के 32 संतरे बेचने पर एक व्यक्ति को 40% की हानि होती है, रू. 1 के कितने संतरे बेचे की उसे 20% का लाभ हो।	By selling oranges at 32 a rupee, a man loses 40%. How many for a rupee should he sell in order to gain 20%.	\N
1124	112	3	एक छात्र को एक संख्या P का 239.28%  निकालने के लिये कहा गया और उसमें 6450 में जोड़ने के बाद उसका परिणाम 50000 आया। लेकिन गलती से उसने अपनी गणना में वास्तविक संख्या P को इसके वास्तविक मान से 13(1/3) % कम लिया। संख्या P का 42.84 %  क्या होगा ?	A student was asked to find 239.28 % of a number P and added to 6450 and he gets 50000 as a result. But mistakenly he took 13(1/3) % less than actual number P in his calculation. Find 42.84 % of no. P? 	\N
1125	112	2	एक गोले का आयतन 119.7% बढ़ जाता है जब इसके त्रिज्या को बढ़ाया जाता है, तो गोले के वक्रप्रष्ठ के क्षेत्रफल में % परिवर्तन ज्ञात करो?	Volume of a sphere is increased by 119.7% when its radius is increased then find % change in TSA of sphere? 	\N
1126	112	4	एक साक्षत्कार मंडल ने पाया कि एक अभ्यर्थी ने अपने फाॅर्म में शारीरिक मापदंड उॅंचाई सम्बन्धी गलत सूचना दी है। उसने अपने वास्तविक उंॅचाई से 20% अधिक उंॅचाई भरी है। उसकि वास्तविक उंॅचाई 5 फिट 2 इंच है। उसे लगभग कितने % अपनी उंॅचाई कम करनी चाहिये ताकि उसकी उॅंचाई वास्तविक हो जाए?	An interview panel found that a candidate has given wrong detail about his height. While filling up his form he filled up 20% more than his actual height. His actual height is 5 feet and 2 inches by what approx. % should be reduce his height to get actual height? 	\N
1127	112	2	एक व्यक्ति की मासिक आय रु 87500 तथा मासिक खर्च रु 50000 है यदि अगले वर्ष उसकी आय 33% बढ़ जाती है तथा खर्च 18% बढ़ जाता है तो बचत में % वृद्धि क्या होगी ?	The monthly income of a person was Rs.87500 and his monthly expenditure was Rs50000. Next year his income increased by 33% and his expenditure increased by 18%. The % increase in his savings was? 	\N
1128	112	1	एक कंपनी में गौरव और आजम का कुल वेतन 47520रु है। अगर गौरव का वेतन 23% और आजम का 30% बढ़ता है तो उनका कुल वेतन बढ़कर 59928 रु हो जाएगा। उनके वेतन में अंतर ज्ञात कीजिये ?	The total salary of Gaurav and Azam in a company is Rs.47520. If the salary of Gaurav increases by 23% and Azam increases by 30% then their total salary would increase to Rs.59928. Find the difference between their salary? 	\N
1129	112	1	किसी व्यक्ति की सैलरी में पहले 30% की वृद्धि होती है और फिर 20% की कमी होती है। अब उसका वेतन मूल वेतन से रु 3840 अधिक है। तो उसका प्रारंभिक वेतन ज्ञात कीजिये ?	Salary of a person is first increased by 30% and there after it was reduced by 20%. if now his salary is Rs. 3840 more than original salary then find his initial salary? 	\N
1133	112	3	चावल की कीमत में 35 % की गिरावट आती है। ज्ञात करें उतने ही रुपय में चावल की कितनी अतिरिक्त मात्रा खरीदी जा सकती है जो पहले 104 किलो चावल खरीदने के लिए पर्याप्त था?	The price of rice falls by 35%. How much extra quantity of rice can be bought with the money that was sufficient to buy 104 kg of rice previously? 	\N
1134	112	1	दाल की कीमत में 6.66% की वृद्धि की जाती है और दाल के उपयोग में 4(1/6) % की वृद्धि की जाए तो खर्च में होने वाले % परिवर्तन ज्ञात कीजिए?	The price of pulse is increased by 6.66% and consumption of it increases by 4(1/6) % then what is % change in expenditure on pulse? 	\N
1253	115	4	एक पिकनिक पार्टी का प्रत्येक सदस्य, सदस्यों की कुल संख्या के दोगुने रूपये देता हैं। यदि कुल संकलन रू. 3042 हो तो पार्टी में सदस्यों की संख्या कितनी है?	Each member of a picnic party contributed twice as many rupees as the total number of members and the total collection was Rs. 3042. The number of members present in the party was.	\N
1254	115	1	मान लिया जाए कि n वह अधिकतम संख्या है, जिससे 1305, 4665 तथा 6905 को भाग देने पर प्रत्येक स्थिति में बराबर शेष बचता है, तो n संख्या के अंकों का योग ज्ञात करें?	Let N be the greatest number that will divide 1305,4665 and 6905 leaving the same remainder in each case.	\N
1255	115	1	अंग्रेजी, गणित तथा विज्ञान की किताबों के तीन सेट में क्रमशः 336, 240 तथा 96 किताबें हैं इन किताबों को इस तरह से स्टेकों में लगाना है। कि प्रत्येक स्टेक की ऊँचाई बराबर है और सभी किताबें विषयवार ढंग से रखी गई हो, तो स्टेकों की संख्या ज्ञात करें।	Three sets of 336 English books, 240 Mathematics books and 96 Science books have to be stacked in such a way that all the books are stored subject wise and the height of each stack is the same. Total  number of stacks will be.	\N
1256	115	2	4 अंकों की वह अधिकतम संख्या क्या है, जो 12,15,18 तथा 27 से पूर्णतः विभाजित है?	The largest 4 digit number exactly divisible by each of 12, 15, 18 and 27 is.	\N
1257	115	3	1936 में से वह कौन सी न्यूनतम संख्या घटायी जाए कि प्राप्त संख्या में 9, 10 तथा 15 से भाग देने पर प्रत्येक स्थिति में 7 शेष बचे?	What least number must be subtracted from 1936 so that the resulting number when divided by 9,10 and 15 will leave in each case the same remainder 7.	\N
1261	115	2	एक नौकर को निश्चित दिनों के लिए काम पर रखा गया जिसके लिए उसे 3239रु दिया जाना था वह कुछ दिनों के लिए अनुपस्थित रहा एवं उसे केवल 2923 रु दिया गया, उसकी अधिकतम दैनिक मजदूरी क्या थी ?	A servant was hired for fixed days for which he had to pay Rs. 3239. he was absent for some days, and only Rs 2923 was paid, what was his maximum daily wages? 	\N
1262	115	3	तीन संख्याएॅं जो सहअभाज्य है और पहले दो संख्याओं का गुणनफल 551 है और अंतिम दो संख्याओं का गुणनफल 1073 है। तीन संख्याओं का योग हैः	Three numbers which are coprime to one another are such that the product of the first two is 551 and that of the last two is 1073. The sum of the three numbers is: 	\N
1264	115	4	4 घंटियाँ क्रमशः 30 मिनट, 1 घंटा, 1(1/2) घंटा तथा 1 घंटा 45 मिनट के अंतराल पर बजती है। सभी घंटियाँ एक साथ 12 बजे दोपहर में बजी हो, तो वे पुनः एक साथ कब बजेंगी?	4 bells ring at intervals of 30 minutes, 1 hour, 1(1/2) hour and 1 hour 45 minutes respectively. All the bells ring simultaneously at 12 noon. They will again ring simultaneously at.	\N
1265	115	4	15 मी. 17 सेमी. लम्बे तथा 9 मी 2 सेमी. चैड़े फर्श पर बिछाने के लिये कम से कम कितने वर्गकार टाईलों की जरूरत होगी?	What is the least number of ² tiles required to pave the floor of a room 12 m 17 cm long and 9m, 2 cm broad.	\N
954	76	4		Who am i ??	\N
880	75	4	यदि A∶B=2∶3,B∶C=4∶5\n\nC∶D=5∶9 than A∶D=?	if A∶B=2∶3,B∶C=4∶5\n\nC∶D=5∶9  , than A∶D=?	\N
900	75	3	प्रथम 10 अभाज्य संख्याओं का औसत क्या है ?	The average of first ten prime numbers is:	\N
226	61	2	A और B मिलकर एक कार्य को 20 दिनों में पूरा कर सकते हैं तथा A अकेले इसे 30 दिनों में पूरा कर सकता है। B अकेले इस कार्य को कितने दिनों में पूरा कर सकता है ?	A and B together can do a piece of work in 20 days and A alone can do it in 30 days. B alone can do the work in how many days ? 	\N
951	76	3	\tA,B तथा C एक काम को क्रमशः 6 दिनों 12 दिनों 15 दिनों में पूरा कर सकते हैं। 1/8भाग खत्म होने पर ब् काम छोड़ देता है। शेष काम A तथा B पूरा करते हैं, तो शेष काम खत्म होने में कितना समय लगेगा ?	A, B and C can do a job in 6 days 12 days and 15 days respectively. After 1/8 of the work is completed, C leaves the job. Rest of the work is done by A and B together, Time taken to finish the remaining work is 	\N
1202	114	2	17 वस्तु को 600 रू. में बेचने पर 5 वस्तु की क्रय मूल्य के बराबर हानि होती है। प्रत्येक वस्तु का क्रय मूल्य क्या होगा ?	On selling 17 articles for Rs 720 a person incurred loss equal to cost price of 5 articles. Find the C.P. of each article ?	\N
1204	114	2	\tकिसी वस्तु को 171 रू में बेचने पर हुआ लाभ% उस वस्तु के क्रय मूल्य के समान तो वस्तु का क्रय मूल्य ज्ञात कीजिए ?	By selling an article for rs 171 there is %profit is equal to the cost price than find the c.p?	\N
1225	63	3	क्रय मूल्य का 70 प्रतिशत विक्रय मूल्य के 40 प्रतिशत के बराबर है तो वास्तविक लाभ या हानि प्रतिशत की गणना करें ?	70% of the cost price of an article is equal to the 40% of its selling price. What is the profit or loss per cent?	\N
1222	114	3	किसी वस्तु को 18450 रु में बेचने पर 50 प्रतिशत की हानि होती है तो बताइए किस मूल्य पर बेचा जाए कि 50 प्रतिशत का लाभ हो ?	While selling an article for Rs. 18450, a person suffered a loss of 50%. At what price he sould have sold the article (in Rs.) to earn a profit of 50%? 	\N
1223	114	4	किसी वस्तु पर लाभ क्रय मूल्य का 170 प्रतिशत है यदि क्रय मूल्य को 20 प्रतिशत बढ़ा दिया जाए तथा विक्रय मूल्य समान रखा जाए तो नया लाभ प्रतिशत ज्ञात करें ?	For an article the profit is 170% of the cost price.If the cost price increases by 20% but the selling price remains same, then what is the new profit per cent? 	\N
1224	114	3	किसी वस्तु पर लाभ क्रय मूल्य का 150 प्रतिशत है यदि क्रय मूल्य को 25 प्रतिशत बढ़ा दिया जाए तथा विक्रय मूल्य समान रखा जाए तो नया लाभ प्रतिशत ज्ञात करें ?	On a certain item profit is 150%. If the cost price increases by 25% what will be the new profit margin (in %)? 	\N
1226	115	1	मोहित ने एक पुरानी साइकल 2700 रु में खरीदी। और 500 रु उसको ठीक कराने में लग गए। यदि वह साइकल को 3520 रु में बेचता है तो उसका लाभ प्रतिशत ज्ञात करो ?	37-\tMohit buys an old bicycle for Rs. 2700 and spends Rs. 500 on its repairs. If he sells the bicycle for Rs. 3520, then what is his profit per cent ?	\N
1227	115	3	यदि किसी वस्तु को x रु में बेचा जाता है तो L प्रतिशत की हानि होती है और जब वही वस्तु Y रु में बेचा जाए तो P प्रतिशत का लाभ होता है। वस्तु का क्रय मूल्य ज्ञात करें ?	38-\tWhen an article is sold for Rs. X,loss percentage is equal to L%. However, when the same article is sold for Rs.Y, profit percentage is equal to P% .what is the CP of that article ?	\N
\.


--
-- Name: test_questions__id_seq; Type: SEQUENCE SET; Schema: public; Owner: saanviin
--

SELECT pg_catalog.setval('public.test_questions__id_seq', 1379, true);


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (_id);


--
-- Name: ads ads_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_pkey PRIMARY KEY (_id);


--
-- Name: enquiry enquiry_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.enquiry
    ADD CONSTRAINT enquiry_pkey PRIMARY KEY (_id);


--
-- Name: options options_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.options
    ADD CONSTRAINT options_pkey PRIMARY KEY (_id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (_id);


--
-- Name: pdf_files pdf_files_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.pdf_files
    ADD CONSTRAINT pdf_files_pkey PRIMARY KEY (_id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (_id);


--
-- Name: result result_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.result
    ADD CONSTRAINT result_pkey PRIMARY KEY (_id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (_id);


--
-- Name: sub_category sub_category_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.sub_category
    ADD CONSTRAINT sub_category_pkey PRIMARY KEY (_id);


--
-- Name: test_options test_options_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.test_options
    ADD CONSTRAINT test_options_pkey PRIMARY KEY (_id);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (_id);


--
-- Name: test_questions test_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: saanviin
--

ALTER TABLE ONLY public.test_questions
    ADD CONSTRAINT test_questions_pkey PRIMARY KEY (_id);


--
-- Name: TABLE admin; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.admin TO saanviin_demo1;


--
-- Name: TABLE ads; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.ads TO saanviin_demo1;


--
-- Name: TABLE authorize; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.authorize TO saanviin_demo1;


--
-- Name: TABLE category; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.category TO saanviin_demo1;


--
-- Name: TABLE enquiry; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.enquiry TO saanviin_demo1;


--
-- Name: TABLE options; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.options TO saanviin_demo1;


--
-- Name: TABLE payments; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.payments TO saanviin_demo1;


--
-- Name: TABLE pdf_files; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.pdf_files TO saanviin_demo1;


--
-- Name: TABLE questions; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.questions TO saanviin_demo1;


--
-- Name: TABLE result; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.result TO saanviin_demo1;


--
-- Name: TABLE student; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.student TO saanviin_demo1;


--
-- Name: TABLE sub_category; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.sub_category TO saanviin_demo1;


--
-- Name: TABLE test; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.test TO saanviin_demo1;


--
-- Name: TABLE test_options; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.test_options TO saanviin_demo1;


--
-- Name: TABLE test_questions; Type: ACL; Schema: public; Owner: saanviin
--

GRANT ALL ON TABLE public.test_questions TO saanviin_demo1;


--
-- PostgreSQL database dump complete
--

