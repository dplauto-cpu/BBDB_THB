--
-- PostgreSQL database dump
--

\restrict lesqCdX5DbDTdBD50bOib88bgm9tegR62khKXHD2wNH2sSPdoQT20id8VcTOd5Y

-- Dumped from database version 18.3 (Debian 18.3-1.pgdg12+1)
-- Dumped by pg_dump version 18.3

-- Started on 2026-05-21 15:55:17

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 242 (class 1259 OID 16578)
-- Name: alumno_promocion; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.alumno_promocion (
    cod_alumno integer NOT NULL,
    cod_promocion integer NOT NULL
);


ALTER TABLE public.alumno_promocion OWNER TO dplauto;

--
-- TOC entry 220 (class 1259 OID 16400)
-- Name: alumnos; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.alumnos (
    cod_alumno integer NOT NULL,
    nombre character varying(100),
    email character varying(100)
);


ALTER TABLE public.alumnos OWNER TO dplauto;

--
-- TOC entry 219 (class 1259 OID 16399)
-- Name: alumnos_cod_alumno_seq; Type: SEQUENCE; Schema: public; Owner: dplauto
--

CREATE SEQUENCE public.alumnos_cod_alumno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alumnos_cod_alumno_seq OWNER TO dplauto;

--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 219
-- Name: alumnos_cod_alumno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dplauto
--

ALTER SEQUENCE public.alumnos_cod_alumno_seq OWNED BY public.alumnos.cod_alumno;


--
-- TOC entry 224 (class 1259 OID 16416)
-- Name: campus; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.campus (
    cod_campus integer NOT NULL,
    nombre character varying(100)
);


ALTER TABLE public.campus OWNER TO dplauto;

--
-- TOC entry 223 (class 1259 OID 16415)
-- Name: campus_cod_campus_seq; Type: SEQUENCE; Schema: public; Owner: dplauto
--

CREATE SEQUENCE public.campus_cod_campus_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.campus_cod_campus_seq OWNER TO dplauto;

--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 223
-- Name: campus_cod_campus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dplauto
--

ALTER SEQUENCE public.campus_cod_campus_seq OWNED BY public.campus.cod_campus;


--
-- TOC entry 241 (class 1259 OID 16558)
-- Name: clase_1; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.clase_1 (
    "Nombre" character varying(255),
    "Email" character varying(255),
    "Promoción" character varying(255),
    "Fecha_comienzo" character varying(255),
    "Campus" character varying(255),
    "Proyecto_HLF" character varying(255),
    "Proyecto_EDA" character varying(255),
    "Proyecto_BBDD" character varying(255),
    "Proyecto_ML" character varying(255),
    "Proyecto_Deployment" character varying(255)
);


ALTER TABLE public.clase_1 OWNER TO dplauto;

--
-- TOC entry 237 (class 1259 OID 16526)
-- Name: clase_2; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.clase_2 (
    "Nombre" character varying(255),
    "Email" character varying(255),
    "Promoción" character varying(255),
    "Fecha_comienzo" character varying(255),
    "Campus" character varying(255),
    "Proyecto_HLF" character varying(255),
    "Proyecto_EDA" character varying(255),
    "Proyecto_BBDD" character varying(255),
    "Proyecto_ML" character varying(255),
    "Proyecto_Deployment" character varying(255)
);


ALTER TABLE public.clase_2 OWNER TO dplauto;

--
-- TOC entry 238 (class 1259 OID 16534)
-- Name: clase_3; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.clase_3 (
    "Nombre" character varying(255),
    "Email" character varying(255),
    "Promoción" character varying(255),
    "Fecha_comienzo" character varying(255),
    "Campus" character varying(255),
    "Proyecto_WebDev" character varying(255),
    "Proyecto_FrontEnd" character varying(255),
    "Proyecto_Backend" character varying(255),
    "Proyecto_React" character varying(255),
    "Proyecto_FullSatck" character varying(255)
);


ALTER TABLE public.clase_3 OWNER TO dplauto;

--
-- TOC entry 239 (class 1259 OID 16542)
-- Name: clase_4; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.clase_4 (
    "Nombre" character varying(255),
    "Email" character varying(255),
    "Promoción" character varying(255),
    "Fecha_comienzo" character varying(255),
    "Campus" character varying(255),
    "Proyecto_WebDev" character varying(255),
    "Proyecto_FrontEnd" character varying(255),
    "Proyecto_Backend" character varying(255),
    "Proyecto_React" character varying(255),
    "Proyecto_FullSatck" character varying(255)
);


ALTER TABLE public.clase_4 OWNER TO dplauto;

--
-- TOC entry 240 (class 1259 OID 16550)
-- Name: claustro; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.claustro (
    "Nombre" character varying(255),
    "Rol" character varying(255),
    "Vertical" character varying(255),
    "Promocion" character varying(255),
    "Campus" character varying(255),
    "Modalidad" character varying(255)
);


ALTER TABLE public.claustro OWNER TO dplauto;

--
-- TOC entry 222 (class 1259 OID 16408)
-- Name: cursos; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.cursos (
    cod_curso integer NOT NULL,
    nombre character varying(100)
);


ALTER TABLE public.cursos OWNER TO dplauto;

--
-- TOC entry 221 (class 1259 OID 16407)
-- Name: cursos_cod_curso_seq; Type: SEQUENCE; Schema: public; Owner: dplauto
--

CREATE SEQUENCE public.cursos_cod_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cursos_cod_curso_seq OWNER TO dplauto;

--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 221
-- Name: cursos_cod_curso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dplauto
--

ALTER SEQUENCE public.cursos_cod_curso_seq OWNED BY public.cursos.cod_curso;


--
-- TOC entry 228 (class 1259 OID 16440)
-- Name: pro_pro; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.pro_pro (
    cod_pro_pro integer NOT NULL,
    cod_profesor integer,
    cod_promocion integer
);


ALTER TABLE public.pro_pro OWNER TO dplauto;

--
-- TOC entry 227 (class 1259 OID 16439)
-- Name: pro_pro_cod_pro_pro_seq; Type: SEQUENCE; Schema: public; Owner: dplauto
--

CREATE SEQUENCE public.pro_pro_cod_pro_pro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pro_pro_cod_pro_pro_seq OWNER TO dplauto;

--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 227
-- Name: pro_pro_cod_pro_pro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dplauto
--

ALTER SEQUENCE public.pro_pro_cod_pro_pro_seq OWNED BY public.pro_pro.cod_pro_pro;


--
-- TOC entry 226 (class 1259 OID 16432)
-- Name: profesores; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.profesores (
    cod_profesor integer NOT NULL,
    nombre character varying(100)
);


ALTER TABLE public.profesores OWNER TO dplauto;

--
-- TOC entry 225 (class 1259 OID 16431)
-- Name: profesores_cod_profesor_seq; Type: SEQUENCE; Schema: public; Owner: dplauto
--

CREATE SEQUENCE public.profesores_cod_profesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.profesores_cod_profesor_seq OWNER TO dplauto;

--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 225
-- Name: profesores_cod_profesor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dplauto
--

ALTER SEQUENCE public.profesores_cod_profesor_seq OWNED BY public.profesores.cod_profesor;


--
-- TOC entry 244 (class 1259 OID 16586)
-- Name: promociones; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.promociones (
    cod_promocion integer CONSTRAINT promociones_nueva_cod_promocion_not_null NOT NULL,
    cod_curso integer,
    cod_campus integer,
    fecha date
);


ALTER TABLE public.promociones OWNER TO dplauto;

--
-- TOC entry 243 (class 1259 OID 16585)
-- Name: promociones_nueva_cod_promocion_seq; Type: SEQUENCE; Schema: public; Owner: dplauto
--

CREATE SEQUENCE public.promociones_nueva_cod_promocion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.promociones_nueva_cod_promocion_seq OWNER TO dplauto;

--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 243
-- Name: promociones_nueva_cod_promocion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dplauto
--

ALTER SEQUENCE public.promociones_nueva_cod_promocion_seq OWNED BY public.promociones.cod_promocion;


--
-- TOC entry 236 (class 1259 OID 16472)
-- Name: proyecto_alumno; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.proyecto_alumno (
    cod_proyecto_alumno integer NOT NULL,
    cod_proyecto integer,
    cod_alumno integer,
    nota boolean
);


ALTER TABLE public.proyecto_alumno OWNER TO dplauto;

--
-- TOC entry 235 (class 1259 OID 16471)
-- Name: proyecto_alumno_cod_proyecto_alumno_seq; Type: SEQUENCE; Schema: public; Owner: dplauto
--

CREATE SEQUENCE public.proyecto_alumno_cod_proyecto_alumno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proyecto_alumno_cod_proyecto_alumno_seq OWNER TO dplauto;

--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 235
-- Name: proyecto_alumno_cod_proyecto_alumno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dplauto
--

ALTER SEQUENCE public.proyecto_alumno_cod_proyecto_alumno_seq OWNED BY public.proyecto_alumno.cod_proyecto_alumno;


--
-- TOC entry 234 (class 1259 OID 16464)
-- Name: proyectos; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.proyectos (
    cod_proyecto integer CONSTRAINT proyecto_cod_proyecto_not_null NOT NULL,
    descripcion character varying(50)
);


ALTER TABLE public.proyectos OWNER TO dplauto;

--
-- TOC entry 233 (class 1259 OID 16463)
-- Name: proyecto_cod_proyecto_seq; Type: SEQUENCE; Schema: public; Owner: dplauto
--

CREATE SEQUENCE public.proyecto_cod_proyecto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proyecto_cod_proyecto_seq OWNER TO dplauto;

--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 233
-- Name: proyecto_cod_proyecto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dplauto
--

ALTER SEQUENCE public.proyecto_cod_proyecto_seq OWNED BY public.proyectos.cod_proyecto;


--
-- TOC entry 232 (class 1259 OID 16456)
-- Name: rol_profesor; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.rol_profesor (
    cod_rol_profesor integer NOT NULL,
    cod_profesor integer,
    cod_rol integer
);


ALTER TABLE public.rol_profesor OWNER TO dplauto;

--
-- TOC entry 231 (class 1259 OID 16455)
-- Name: rol_profesor_cod_rol_profesor_seq; Type: SEQUENCE; Schema: public; Owner: dplauto
--

CREATE SEQUENCE public.rol_profesor_cod_rol_profesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rol_profesor_cod_rol_profesor_seq OWNER TO dplauto;

--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 231
-- Name: rol_profesor_cod_rol_profesor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dplauto
--

ALTER SEQUENCE public.rol_profesor_cod_rol_profesor_seq OWNED BY public.rol_profesor.cod_rol_profesor;


--
-- TOC entry 230 (class 1259 OID 16448)
-- Name: roles; Type: TABLE; Schema: public; Owner: dplauto
--

CREATE TABLE public.roles (
    cod_rol integer NOT NULL,
    descripcion character varying(50)
);


ALTER TABLE public.roles OWNER TO dplauto;

--
-- TOC entry 229 (class 1259 OID 16447)
-- Name: roles_cod_rol_seq; Type: SEQUENCE; Schema: public; Owner: dplauto
--

CREATE SEQUENCE public.roles_cod_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_cod_rol_seq OWNER TO dplauto;

--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 229
-- Name: roles_cod_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dplauto
--

ALTER SEQUENCE public.roles_cod_rol_seq OWNED BY public.roles.cod_rol;


--
-- TOC entry 3294 (class 2604 OID 16403)
-- Name: alumnos cod_alumno; Type: DEFAULT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.alumnos ALTER COLUMN cod_alumno SET DEFAULT nextval('public.alumnos_cod_alumno_seq'::regclass);


--
-- TOC entry 3296 (class 2604 OID 16419)
-- Name: campus cod_campus; Type: DEFAULT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.campus ALTER COLUMN cod_campus SET DEFAULT nextval('public.campus_cod_campus_seq'::regclass);


--
-- TOC entry 3295 (class 2604 OID 16411)
-- Name: cursos cod_curso; Type: DEFAULT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.cursos ALTER COLUMN cod_curso SET DEFAULT nextval('public.cursos_cod_curso_seq'::regclass);


--
-- TOC entry 3298 (class 2604 OID 16443)
-- Name: pro_pro cod_pro_pro; Type: DEFAULT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.pro_pro ALTER COLUMN cod_pro_pro SET DEFAULT nextval('public.pro_pro_cod_pro_pro_seq'::regclass);


--
-- TOC entry 3297 (class 2604 OID 16435)
-- Name: profesores cod_profesor; Type: DEFAULT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.profesores ALTER COLUMN cod_profesor SET DEFAULT nextval('public.profesores_cod_profesor_seq'::regclass);


--
-- TOC entry 3303 (class 2604 OID 16589)
-- Name: promociones cod_promocion; Type: DEFAULT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.promociones ALTER COLUMN cod_promocion SET DEFAULT nextval('public.promociones_nueva_cod_promocion_seq'::regclass);


--
-- TOC entry 3302 (class 2604 OID 16475)
-- Name: proyecto_alumno cod_proyecto_alumno; Type: DEFAULT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.proyecto_alumno ALTER COLUMN cod_proyecto_alumno SET DEFAULT nextval('public.proyecto_alumno_cod_proyecto_alumno_seq'::regclass);


--
-- TOC entry 3301 (class 2604 OID 16467)
-- Name: proyectos cod_proyecto; Type: DEFAULT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.proyectos ALTER COLUMN cod_proyecto SET DEFAULT nextval('public.proyecto_cod_proyecto_seq'::regclass);


--
-- TOC entry 3300 (class 2604 OID 16459)
-- Name: rol_profesor cod_rol_profesor; Type: DEFAULT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.rol_profesor ALTER COLUMN cod_rol_profesor SET DEFAULT nextval('public.rol_profesor_cod_rol_profesor_seq'::regclass);


--
-- TOC entry 3299 (class 2604 OID 16451)
-- Name: roles cod_rol; Type: DEFAULT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.roles ALTER COLUMN cod_rol SET DEFAULT nextval('public.roles_cod_rol_seq'::regclass);


--
-- TOC entry 3496 (class 0 OID 16578)
-- Dependencies: 242
-- Data for Name: alumno_promocion; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.alumno_promocion (cod_alumno, cod_promocion) FROM stdin;
1	2
2	2
3	2
4	2
5	2
6	2
7	2
9	2
10	2
14	2
15	2
16	1
17	1
20	1
21	1
22	1
25	1
27	4
28	4
30	4
31	4
33	4
34	4
36	4
37	4
38	4
39	4
40	3
41	3
42	3
43	3
44	3
45	3
46	3
47	3
48	3
49	3
50	3
51	3
52	3
8	2
11	2
12	2
13	2
18	1
19	1
23	1
24	1
26	4
29	4
32	4
35	4
\.


--
-- TOC entry 3474 (class 0 OID 16400)
-- Dependencies: 220
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.alumnos (cod_alumno, nombre, email) FROM stdin;
1	Jafet Casals	Jafet_Casals@gmail.com
2	Jorge Manzanares	Jorge_Manzanares@gmail.com
3	Onofre Adadia	Onofre_Adadia@gmail.com
4	Merche Prada	Merche_Prada@gmail.com
5	Pilar Abella	Pilar_Abella@gmail.com
6	Leoncio Tena	Leoncio_Tena@gmail.com
7	Odalys Torrijos	Odalys_Torrijos@gmail.com
8	Eduardo Caparras	Eduardo_Caparras@gmail.com
9	Ignacio Goicoechea	Ignacio_Goicoechea@gmail.com
10	Clementina Santos	Clementina_Santos@gmail.com
11	Daniela Falce	Daniela_Falce@gmail.com
12	Abraham Vazquez	AbrahamVazquez@gmail.com
13	Maximiliano Menendez	Maximiliano_Menendez@gmail.com
14	Anita Heredia	Anita_Heredia@gmail.com
15	Eli Casas	Eli_Casas@gmail.com
16	Guillermo Borrego	Guillermo_Borrego@gmail.com
17	Sergio Aguirre	Sergio_Aguirre@gmail.com
18	Carlito Carrion	Carlito_Carrion@gmail.com
19	Hayden Figueroa	Hayden_Figueroa@gmail.com
20	Chita Mancebo	Chita_Mancebo@gmail.com
21	Joaquina Asensio	Joaquina_Asensio@gmail.com
22	Cristian Sarabia	Cristian_Sarabia@gmail.com
23	Isabel Ibanez	Isabel_Ibanez@gmail.com
24	Desiderio Jordan	Desiderio_Jordan@gmail.com
25	Rosalina Llanos	Rosalina_Llanos@gmail.com
26	Amor Larranaga	Amor_Larranaga@gmail.com
27	Teodoro Alberola	Teodoro_Alberola@gmail.com
28	Cleto Plana	Cleto_Plana@gmail.com
29	Aitana Sebastian	Aitana_Sebastian@gmail.com
30	Dolores Valbuena	Dolores_Valbuena@gmail.com
31	Julie Ferrer	Julie_Ferrer@gmail.com
32	Mireia Cabanas	Mireia_Cabanas@gmail.com
33	Flavia Amador	Flavia_Amador@gmail.com
34	Albino Macias	Albino_Macias@gmail.com
35	Ester Sanchez	Ester_Sanchez@gmail.com
36	Luis Miguel Galvez	Luis_Miguel_Galvez@gmail.com
37	Loida Arellano	Loida_Arellano@gmail.com
38	Heraclio Duque	Heraclio_Duque@gmail.com
39	Herberto Figueras	Herberto_Figueras@gmail.com
40	Teresa Laguna	Teresa_Laguna@gmail.com
41	Estrella Murillo	Estrella_Murillo@gmail.com
42	Ernesto Uriarte	Ernesto_Uriarte@gmail.com
43	Daniela Guitart	Daniela_Guitart@gmail.com
44	Timoteo Trillo	Timoteo_Trillo@gmail.com
45	Ricarda Tovar	Ricarda_Tovar@gmail.com
46	Alejandra Vilaplana	Alejandra_Vilaplana@gmail.com
47	Daniel Rosselle	Daniel_Rosselle@gmail.com
48	Rita Olivares	Rita_Olivares@gmail.com
49	Cleto Montes	Cleto_Montes@gmail.com
50	Marino Castilla	Marino_Castilla@gmail.com
51	Estefania Valcarcel	EstefaniaValcarcel@gmail.com
52	Noemi Vilanova	NoemiVilanova@gmail.com
\.


--
-- TOC entry 3478 (class 0 OID 16416)
-- Dependencies: 224
-- Data for Name: campus; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.campus (cod_campus, nombre) FROM stdin;
1	Madrid
2	Valencia
\.


--
-- TOC entry 3495 (class 0 OID 16558)
-- Dependencies: 241
-- Data for Name: clase_1; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.clase_1 ("Nombre", "Email", "Promoción", "Fecha_comienzo", "Campus", "Proyecto_HLF", "Proyecto_EDA", "Proyecto_BBDD", "Proyecto_ML", "Proyecto_Deployment") FROM stdin;
Jafet Casals	Jafet_Casals@gmail.com	Septiembre	18/09/2023	Madrid	Apto	No Apto	Apto	Apto	Apto
Jorge Manzanares	Jorge_Manzanares@gmail.com	Septiembre	18/09/2023	Madrid	Apto	No Apto	Apto	Apto	Apto
Onofre Adadia	Onofre_Adadia@gmail.com	Septiembre	18/09/2023	Madrid	Apto	Apto	Apto	No Apto	Apto
Merche Prada	Merche_Prada@gmail.com	Septiembre	18/09/2023	Madrid	Apto	No Apto	No Apto	Apto	No Apto
Pilar Abella	Pilar_Abella@gmail.com	Septiembre	18/09/2023	Madrid	Apto	No Apto	Apto	Apto	Apto
Leoncio Tena	Leoncio_Tena@gmail.com	Septiembre	18/09/2023	Madrid	Apto	Apto	Apto	Apto	Apto
Odalys Torrijos	Odalys_Torrijos@gmail.com	Septiembre	18/09/2023	Madrid	No Apto	Apto	Apto	Apto	Apto
Eduardo Caparrós	Eduardo_Caparrós@gmail.com	Septiembre	18/09/2023	Madrid	No Apto	Apto	Apto	Apto	Apto
Ignacio Goicoechea	Ignacio_Goicoechea@gmail.com	Septiembre	18/09/2023	Madrid	Apto	Apto	Apto	No Apto	Apto
Clementina Santos	Clementina_Santos@gmail.com	Septiembre	18/09/2023	Madrid	Apto	No Apto	Apto	Apto	Apto
Daniela Falcó	Daniela_Falcó@gmail.com	Septiembre	18/09/2023	Madrid	Apto	Apto	Apto	Apto	Apto
Abraham Vélez	Abraham_Vélez@gmail.com	Septiembre	18/09/2023	Madrid	Apto	No Apto	No Apto	Apto	Apto
Maximiliano Menéndez	Maximiliano_Menéndez@gmail.com	Septiembre	18/09/2023	Madrid	Apto	No Apto	Apto	Apto	Apto
Anita Heredia	Anita_Heredia@gmail.com	Septiembre	18/09/2023	Madrid	Apto	Apto	Apto	Apto	Apto
Eli Casas	Eli_Casas@gmail.com	Septiembre	18/09/2023	Madrid	Apto	Apto	Apto	Apto	Apto
\.


--
-- TOC entry 3491 (class 0 OID 16526)
-- Dependencies: 237
-- Data for Name: clase_2; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.clase_2 ("Nombre", "Email", "Promoción", "Fecha_comienzo", "Campus", "Proyecto_HLF", "Proyecto_EDA", "Proyecto_BBDD", "Proyecto_ML", "Proyecto_Deployment") FROM stdin;
Guillermo Borrego	Guillermo_Borrego@gmail.com	Febrero	12/02/2024	Madrid	Apto	No Apto	No Apto	Apto	No Apto
Sergio Aguirre	Sergio_Aguirre@gmail.com	Febrero	12/02/2024	Madrid	Apto	No Apto	Apto	Apto	No Apto
Carlito Carrión	Carlito_Carrión@gmail.com	Febrero	12/02/2024	Madrid	Apto	No Apto	Apto	Apto	Apto
Haydée Figueroa	Haydée_Figueroa@gmail.com	Febrero	12/02/2024	Madrid	Apto	Apto	Apto	Apto	Apto
Chita Mancebo	Chita_Mancebo@gmail.com	Febrero	12/02/2024	Madrid	No Apto	Apto	No Apto	Apto	Apto
Joaquina Asensio	Joaquina_Asensio@gmail.com	Febrero	12/02/2024	Madrid	No Apto	No Apto	Apto	Apto	Apto
Cristian Sarabia	Cristian_Sarabia@gmail.com	Febrero	12/02/2024	Madrid	Apto	Apto	No Apto	Apto	Apto
Isabel Ibáñez	Isabel_Ibáñez@gmail.com	Febrero	12/02/2024	Madrid	No Apto	Apto	No Apto	Apto	Apto
Desiderio Jordá	Desiderio_Jordá@gmail.com	Febrero	12/02/2024	Madrid	No Apto	Apto	No Apto	No Apto	Apto
Rosalina Llanos	Rosalina_Llanos@gmail.com	Febrero	12/02/2024	Madrid	Apto	Apto	Apto	Apto	Apto
\.


--
-- TOC entry 3492 (class 0 OID 16534)
-- Dependencies: 238
-- Data for Name: clase_3; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.clase_3 ("Nombre", "Email", "Promoción", "Fecha_comienzo", "Campus", "Proyecto_WebDev", "Proyecto_FrontEnd", "Proyecto_Backend", "Proyecto_React", "Proyecto_FullSatck") FROM stdin;
Amor Larrañaga	Amor_Larrañaga@gmail.com	Septiembre	18/09/2023	Madrid	Apto	Apto	Apto	Apto	No Apto
Teodoro Alberola	Teodoro_Alberola@gmail.com	Septiembre	18/09/2023	Madrid	No Apto	No Apto	Apto	No Apto	Apto
Cleto Plana	Cleto_Plana@gmail.com	Septiembre	18/09/2023	Madrid	Apto	No Apto	Apto	No Apto	Apto
Aitana Sebastián	Aitana_Sebastián@gmail.com	Septiembre	18/09/2023	Madrid	Apto	No Apto	Apto	No Apto	Apto
Dolores Valbuena	Dolores_Valbuena@gmail.com	Septiembre	18/09/2023	Madrid	Apto	Apto	Apto	Apto	No Apto
Julie Ferrer	Julie_Ferrer@gmail.com	Septiembre	18/09/2023	Madrid	No Apto	No Apto	No Apto	Apto	No Apto
Mireia Cabañas	Mireia_Cabañas@gmail.com	Septiembre	18/09/2023	Madrid	No Apto	Apto	Apto	Apto	Apto
Flavia Amador	Flavia_Amador@gmail.com	Septiembre	18/09/2023	Madrid	Apto	Apto	No Apto	Apto	Apto
Albino Macias	Albino_Macias@gmail.com	Septiembre	18/09/2023	Madrid	No Apto	Apto	Apto	Apto	Apto
Ester Sánchez	Ester_Sánchez@gmail.com	Septiembre	18/09/2023	Madrid	No Apto	Apto	Apto	No Apto	Apto
Luis Miguel Galvez	Luis_Miguel_Galvez@gmail.com	Septiembre	18/09/2023	Madrid	No Apto	Apto	Apto	Apto	Apto
Loida Arellano	Loida_Arellano@gmail.com	Septiembre	18/09/2023	Madrid	Apto	Apto	Apto	Apto	Apto
Heraclio Duque	Heraclio_Duque@gmail.com	Septiembre	18/09/2023	Madrid	Apto	Apto	No Apto	No Apto	No Apto
Herberto Figueras	Herberto_Figueras@gmail.com	Septiembre	18/09/2023	Madrid	Apto	Apto	Apto	Apto	Apto
\.


--
-- TOC entry 3493 (class 0 OID 16542)
-- Dependencies: 239
-- Data for Name: clase_4; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.clase_4 ("Nombre", "Email", "Promoción", "Fecha_comienzo", "Campus", "Proyecto_WebDev", "Proyecto_FrontEnd", "Proyecto_Backend", "Proyecto_React", "Proyecto_FullSatck") FROM stdin;
Teresa Laguna	Teresa_Laguna@gmail.com	Febrero	12/02/2024	Valencia	Apto	Apto	Apto	Apto	Apto
Estrella Murillo	Estrella_Murillo@gmail.com	Febrero	12/02/2024	Valencia	Apto	Apto	No Apto	Apto	Apto
Ernesto Uriarte	Ernesto_Uriarte@gmail.com	Febrero	12/02/2024	Valencia	Apto	Apto	Apto	Apto	Apto
Daniela Guitart	Daniela_Guitart@gmail.com	Febrero	12/02/2024	Valencia	Apto	No Apto	No Apto	Apto	Apto
Timoteo Trillo	Timoteo_Trillo@gmail.com	Febrero	12/02/2024	Valencia	No Apto	Apto	Apto	Apto	No Apto
Ricarda Tovar	Ricarda_Tovar@gmail.com	Febrero	12/02/2024	Valencia	Apto	Apto	Apto	Apto	Apto
Alejandra Vilaplana	Alejandra_Vilaplana@gmail.com	Febrero	12/02/2024	Valencia	No Apto	No Apto	No Apto	Apto	Apto
Daniel Rosselle	Daniel_Rosselle@gmail.com	Febrero	12/02/2024	Valencia	No Apto	No Apto	Apto	No Apto	No Apto
Rita Olivares	Rita_Olivares@gmail.com	Febrero	12/02/2024	Valencia	No Apto	No Apto	No Apto	Apto	Apto
Cleto Montes	Cleto_Montes@gmail.com	Febrero	12/02/2024	Valencia	Apto	Apto	No Apto	Apto	Apto
Marino Castilla	Marino_Castilla@gmail.com	Febrero	12/02/2024	Valencia	No Apto	No Apto	Apto	No Apto	No Apto
Estefania Valcarcel	EstefaniaValcarcel@gmail.com	Febrero	12/02/2024	Valencia	Apto	Apto	No Apto	No Apto	Apto
Noemi Vilanova	NoemiVilanova@gmail.com	Febrero	12/02/2024	Valencia	Apto	No Apto	No Apto	Apto	Apto
\.


--
-- TOC entry 3494 (class 0 OID 16550)
-- Dependencies: 240
-- Data for Name: claustro; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.claustro ("Nombre", "Rol", "Vertical", "Promocion", "Campus", "Modalidad") FROM stdin;
Noa Yáñez	TA	DS	Septiembre	Madrid	Presencial
Saturnina Benitez	TA	DS	Septiembre	Madrid	Presencial
Anna Feliu	TA	FS	Septiembre	Madrid	Presencial
Rosalva Ayuso	TA	FS	Septiembre	Valencia	Presencial
Ana Sofía Ferrer	TA	FS	Febrero	Valencia	Presencial
Angélica Corral	TA	FS	Febrero	Madrid	Presencial
Ariel Lledó	TA	DS	Septiembre	Madrid	Presencial
Mario Prats	LI	FS	Febrero	Valencia	Online
Luis Ángel Suárez	LI	FS	Septiembre	Madrid	Online
María Dolores Diaz	LI	DS	Septiembre	Madrid	Online
\.


--
-- TOC entry 3476 (class 0 OID 16408)
-- Dependencies: 222
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.cursos (cod_curso, nombre) FROM stdin;
1	Data Science
2	Full Stack
\.


--
-- TOC entry 3482 (class 0 OID 16440)
-- Dependencies: 228
-- Data for Name: pro_pro; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.pro_pro (cod_pro_pro, cod_profesor, cod_promocion) FROM stdin;
1	1	2
2	2	2
3	3	4
4	5	3
5	7	2
6	8	3
7	9	4
8	10	2
\.


--
-- TOC entry 3480 (class 0 OID 16432)
-- Dependencies: 226
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.profesores (cod_profesor, nombre) FROM stdin;
1	Noa Yáñez
2	Saturnina Benitez
3	Anna Feliu
4	Rosalva Ayuso
5	Ana Sofía Ferrer
6	Angélica Corral
7	Ariel Lledó
8	Mario Prats
9	Luis Ángel Suárez
10	María Dolores Diaz
\.


--
-- TOC entry 3498 (class 0 OID 16586)
-- Dependencies: 244
-- Data for Name: promociones; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.promociones (cod_promocion, cod_curso, cod_campus, fecha) FROM stdin;
1	1	1	2024-02-12
2	1	1	2023-09-18
3	2	2	2024-02-12
4	2	1	2023-09-18
\.


--
-- TOC entry 3490 (class 0 OID 16472)
-- Dependencies: 236
-- Data for Name: proyecto_alumno; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.proyecto_alumno (cod_proyecto_alumno, cod_proyecto, cod_alumno, nota) FROM stdin;
1	1	1	t
2	1	2	t
3	1	3	t
4	1	4	t
5	1	5	t
6	1	6	t
7	1	7	f
8	1	9	t
9	1	10	t
10	1	14	t
11	1	15	t
12	1	16	t
13	1	17	t
14	1	20	f
15	1	21	f
16	1	22	t
17	1	25	t
18	8	1	f
19	8	2	f
20	8	3	t
21	8	4	f
22	8	5	f
23	8	6	t
24	8	7	t
25	8	9	t
26	8	10	f
27	8	14	t
28	8	15	t
29	8	16	f
30	8	17	f
31	8	20	t
32	8	21	f
33	8	22	t
34	8	25	t
35	2	1	t
36	2	2	t
37	2	3	t
38	2	4	f
39	2	5	t
40	2	6	t
41	2	7	t
42	2	9	t
43	2	10	t
44	2	14	t
45	2	15	t
46	2	16	f
47	2	17	t
48	2	20	f
49	2	21	t
50	2	22	f
51	2	25	t
52	3	1	t
53	3	2	t
54	3	3	f
55	3	4	t
56	3	5	t
57	3	6	t
58	3	7	t
59	3	9	f
60	3	10	t
61	3	14	t
62	3	15	t
63	3	16	t
64	3	17	t
65	3	20	t
66	3	21	t
67	3	22	t
68	3	25	t
69	9	1	t
70	9	2	t
71	9	3	t
72	9	4	f
73	9	5	t
74	9	6	t
75	9	7	t
76	9	9	t
77	9	10	t
78	9	14	t
79	9	15	t
80	9	16	f
81	9	17	f
82	9	20	t
83	9	21	t
84	9	22	t
85	9	25	t
86	10	27	f
87	10	28	t
88	10	30	t
89	10	31	f
90	10	33	t
91	10	34	f
92	10	36	f
93	10	37	t
94	10	38	t
95	10	39	t
96	10	40	t
97	10	41	t
98	10	42	t
99	10	43	t
100	10	44	f
101	10	45	t
102	10	46	f
103	10	47	f
104	10	48	f
105	10	49	t
106	10	50	f
107	10	51	t
108	10	52	t
109	4	27	f
110	4	28	f
111	4	30	t
112	4	31	f
113	4	33	t
114	4	34	t
115	4	36	t
116	4	37	t
117	4	38	t
118	4	39	t
119	4	40	t
120	4	41	t
121	4	42	t
122	4	43	f
123	4	44	t
124	4	45	t
125	4	46	f
126	4	47	f
127	4	48	f
128	4	49	t
129	4	50	f
130	4	51	t
131	4	52	f
132	5	27	t
133	5	28	t
134	5	30	t
135	5	31	f
136	5	33	f
137	5	34	t
138	5	36	t
139	5	37	t
140	5	38	f
141	5	39	t
142	5	40	t
143	5	41	f
144	5	42	t
145	5	43	f
146	5	44	t
147	5	45	t
148	5	46	f
149	5	47	t
150	5	48	f
151	5	49	f
152	5	50	t
153	5	51	f
154	5	52	f
155	6	27	f
156	6	28	f
157	6	30	t
158	6	31	t
159	6	33	t
160	6	34	t
161	6	36	t
162	6	37	t
163	6	38	f
164	6	39	t
165	6	40	t
166	6	41	t
167	6	42	t
168	6	43	t
169	6	44	t
170	6	45	t
171	6	46	t
172	6	47	f
173	6	48	t
174	6	49	t
175	6	50	f
176	6	51	f
177	6	52	t
178	7	27	t
179	7	28	t
180	7	30	f
181	7	31	f
182	7	33	t
183	7	34	t
184	7	36	t
185	7	37	t
186	7	38	f
187	7	39	t
188	7	40	t
189	7	41	t
190	7	42	t
191	7	43	t
192	7	44	f
193	7	45	t
194	7	46	t
195	7	47	f
196	7	48	t
197	7	49	t
198	7	50	f
199	7	51	t
200	7	52	t
201	3	43	t
202	2	30	t
203	2	48	t
204	2	28	t
205	9	43	t
206	2	8	t
207	3	49	t
208	3	13	t
209	9	49	t
210	9	13	t
211	2	12	f
212	2	50	t
213	3	47	t
214	2	11	t
215	9	47	t
216	3	12	t
217	2	49	t
218	2	13	t
219	9	12	t
220	9	50	t
221	3	11	t
222	3	50	t
223	9	11	t
224	2	47	t
225	9	30	t
226	9	28	t
227	9	48	t
228	3	8	t
229	3	30	t
230	3	48	t
231	9	8	t
232	3	28	t
233	2	43	t
234	3	24	f
235	9	24	t
236	9	19	t
237	3	19	t
238	2	18	t
239	9	23	t
240	3	23	t
241	3	18	t
242	9	18	t
243	2	23	f
244	2	24	f
245	2	19	t
246	10	26	t
247	4	35	t
248	7	32	t
249	7	35	t
250	5	29	t
251	5	6	t
252	4	32	t
253	10	8	t
254	5	10	t
255	10	6	t
256	10	29	t
257	10	10	t
258	5	8	t
259	6	32	t
260	6	35	f
261	5	26	t
262	5	35	t
263	7	29	t
264	7	6	f
265	6	26	t
266	7	10	t
267	4	10	f
268	4	29	f
269	4	6	t
270	6	8	t
271	5	32	t
272	6	6	t
273	6	29	f
274	4	8	t
275	10	32	f
276	7	26	f
277	6	10	f
278	10	35	f
279	4	26	t
280	7	8	t
281	6	5	f
282	5	11	f
283	5	11	t
284	5	2	f
285	7	5	f
286	10	2	f
287	4	5	f
288	10	11	t
289	10	11	f
290	7	2	t
291	4	11	f
292	4	11	f
293	10	5	f
294	4	2	f
295	7	11	t
296	7	11	f
297	6	2	t
298	5	5	t
299	6	11	t
300	6	11	f
\.


--
-- TOC entry 3488 (class 0 OID 16464)
-- Dependencies: 234
-- Data for Name: proyectos; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.proyectos (cod_proyecto, descripcion) FROM stdin;
1	Hundir la Flota
2	BBDD
3	Machine Learning
4	FrontEnd
5	BackEnd
6	REACT
7	FullStack
8	EDA
9	Deployment
10	WebDev
\.


--
-- TOC entry 3486 (class 0 OID 16456)
-- Dependencies: 232
-- Data for Name: rol_profesor; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.rol_profesor (cod_rol_profesor, cod_profesor, cod_rol) FROM stdin;
1	1	1
2	2	1
3	3	1
4	4	1
5	5	1
6	6	1
7	7	1
8	8	2
9	9	2
10	10	2
\.


--
-- TOC entry 3484 (class 0 OID 16448)
-- Dependencies: 230
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: dplauto
--

COPY public.roles (cod_rol, descripcion) FROM stdin;
1	TA
2	LI
\.


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 219
-- Name: alumnos_cod_alumno_seq; Type: SEQUENCE SET; Schema: public; Owner: dplauto
--

SELECT pg_catalog.setval('public.alumnos_cod_alumno_seq', 52, true);


--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 223
-- Name: campus_cod_campus_seq; Type: SEQUENCE SET; Schema: public; Owner: dplauto
--

SELECT pg_catalog.setval('public.campus_cod_campus_seq', 2, true);


--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 221
-- Name: cursos_cod_curso_seq; Type: SEQUENCE SET; Schema: public; Owner: dplauto
--

SELECT pg_catalog.setval('public.cursos_cod_curso_seq', 2, true);


--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 227
-- Name: pro_pro_cod_pro_pro_seq; Type: SEQUENCE SET; Schema: public; Owner: dplauto
--

SELECT pg_catalog.setval('public.pro_pro_cod_pro_pro_seq', 8, true);


--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 225
-- Name: profesores_cod_profesor_seq; Type: SEQUENCE SET; Schema: public; Owner: dplauto
--

SELECT pg_catalog.setval('public.profesores_cod_profesor_seq', 10, true);


--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 243
-- Name: promociones_nueva_cod_promocion_seq; Type: SEQUENCE SET; Schema: public; Owner: dplauto
--

SELECT pg_catalog.setval('public.promociones_nueva_cod_promocion_seq', 4, true);


--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 235
-- Name: proyecto_alumno_cod_proyecto_alumno_seq; Type: SEQUENCE SET; Schema: public; Owner: dplauto
--

SELECT pg_catalog.setval('public.proyecto_alumno_cod_proyecto_alumno_seq', 300, true);


--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 233
-- Name: proyecto_cod_proyecto_seq; Type: SEQUENCE SET; Schema: public; Owner: dplauto
--

SELECT pg_catalog.setval('public.proyecto_cod_proyecto_seq', 10, true);


--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 231
-- Name: rol_profesor_cod_rol_profesor_seq; Type: SEQUENCE SET; Schema: public; Owner: dplauto
--

SELECT pg_catalog.setval('public.rol_profesor_cod_rol_profesor_seq', 10, true);


--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 229
-- Name: roles_cod_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: dplauto
--

SELECT pg_catalog.setval('public.roles_cod_rol_seq', 2, true);


--
-- TOC entry 3323 (class 2606 OID 16584)
-- Name: alumno_promocion alumno_promocion_pkey; Type: CONSTRAINT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.alumno_promocion
    ADD CONSTRAINT alumno_promocion_pkey PRIMARY KEY (cod_alumno, cod_promocion);


--
-- TOC entry 3305 (class 2606 OID 16406)
-- Name: alumnos alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (cod_alumno);


--
-- TOC entry 3309 (class 2606 OID 16422)
-- Name: campus campus_pkey; Type: CONSTRAINT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.campus
    ADD CONSTRAINT campus_pkey PRIMARY KEY (cod_campus);


--
-- TOC entry 3307 (class 2606 OID 16414)
-- Name: cursos cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (cod_curso);


--
-- TOC entry 3313 (class 2606 OID 16446)
-- Name: pro_pro pro_pro_pkey; Type: CONSTRAINT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.pro_pro
    ADD CONSTRAINT pro_pro_pkey PRIMARY KEY (cod_pro_pro);


--
-- TOC entry 3311 (class 2606 OID 16438)
-- Name: profesores profesores_pkey; Type: CONSTRAINT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (cod_profesor);


--
-- TOC entry 3325 (class 2606 OID 16592)
-- Name: promociones promociones_nueva_pkey; Type: CONSTRAINT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.promociones
    ADD CONSTRAINT promociones_nueva_pkey PRIMARY KEY (cod_promocion);


--
-- TOC entry 3321 (class 2606 OID 16478)
-- Name: proyecto_alumno proyecto_alumno_pkey; Type: CONSTRAINT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.proyecto_alumno
    ADD CONSTRAINT proyecto_alumno_pkey PRIMARY KEY (cod_proyecto_alumno);


--
-- TOC entry 3319 (class 2606 OID 16470)
-- Name: proyectos proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.proyectos
    ADD CONSTRAINT proyecto_pkey PRIMARY KEY (cod_proyecto);


--
-- TOC entry 3317 (class 2606 OID 16462)
-- Name: rol_profesor rol_profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.rol_profesor
    ADD CONSTRAINT rol_profesor_pkey PRIMARY KEY (cod_rol_profesor);


--
-- TOC entry 3315 (class 2606 OID 16454)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: dplauto
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (cod_rol);


-- Completed on 2026-05-21 15:55:33

--
-- PostgreSQL database dump complete
--

\unrestrict lesqCdX5DbDTdBD50bOib88bgm9tegR62khKXHD2wNH2sSPdoQT20id8VcTOd5Y

