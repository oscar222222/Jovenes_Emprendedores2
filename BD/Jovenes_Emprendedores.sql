toc.dat                                                                                             0000600 0004000 0002000 00000020124 14243564337 0014451 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       #    )                z            jovenes_emprendedores    14.2    14.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    74010    jovenes_emprendedores    DATABASE     t   CREATE DATABASE jovenes_emprendedores WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
 %   DROP DATABASE jovenes_emprendedores;
                postgres    false                     2615    74011    project    SCHEMA        CREATE SCHEMA project;
    DROP SCHEMA project;
                postgres    false         ?            1259    74034 	   idea_user    TABLE     G  CREATE TABLE project.idea_user (
    id_idea integer NOT NULL,
    registred_id text NOT NULL,
    id_user2 integer NOT NULL,
    image_logo text NOT NULL,
    elevator_p text NOT NULL,
    file_idea text NOT NULL,
    date_idea timestamp without time zone NOT NULL,
    name_idea text NOT NULL,
    type_idea text NOT NULL
);
    DROP TABLE project.idea_user;
       project         heap    postgres    false    4         ?            1259    74033    idea_user_id_idea_seq    SEQUENCE     ?   CREATE SEQUENCE project.idea_user_id_idea_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE project.idea_user_id_idea_seq;
       project          postgres    false    4    214         	           0    0    idea_user_id_idea_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE project.idea_user_id_idea_seq OWNED BY project.idea_user.id_idea;
          project          postgres    false    213         ?            1259    74013    role    TABLE     X   CREATE TABLE project.role (
    id_user integer NOT NULL,
    rol_name text NOT NULL
);
    DROP TABLE project.role;
       project         heap    postgres    false    4         ?            1259    74012    role_id_user_seq    SEQUENCE     ?   CREATE SEQUENCE project.role_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE project.role_id_user_seq;
       project          postgres    false    211    4         
           0    0    role_id_user_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE project.role_id_user_seq OWNED BY project.role.id_user;
          project          postgres    false    210         ?            1259    74020    user_information    TABLE     E  CREATE TABLE project.user_information (
    name text NOT NULL,
    surname text NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    email text NOT NULL,
    id_role1 integer NOT NULL,
    date_of_birth timestamp without time zone NOT NULL,
    id_info_user integer NOT NULL,
    condition text NOT NULL
);
 %   DROP TABLE project.user_information;
       project         heap    postgres    false    4         ?            1259    107018 !   user_information_id_info_user_seq    SEQUENCE     ?   CREATE SEQUENCE project.user_information_id_info_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE project.user_information_id_info_user_seq;
       project          postgres    false    212    4                    0    0 !   user_information_id_info_user_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE project.user_information_id_info_user_seq OWNED BY project.user_information.id_info_user;
          project          postgres    false    215         i           2604    74037    idea_user id_idea    DEFAULT     x   ALTER TABLE ONLY project.idea_user ALTER COLUMN id_idea SET DEFAULT nextval('project.idea_user_id_idea_seq'::regclass);
 A   ALTER TABLE project.idea_user ALTER COLUMN id_idea DROP DEFAULT;
       project          postgres    false    213    214    214         g           2604    74016    role id_user    DEFAULT     n   ALTER TABLE ONLY project.role ALTER COLUMN id_user SET DEFAULT nextval('project.role_id_user_seq'::regclass);
 <   ALTER TABLE project.role ALTER COLUMN id_user DROP DEFAULT;
       project          postgres    false    211    210    211         h           2604    107019    user_information id_info_user    DEFAULT     ?   ALTER TABLE ONLY project.user_information ALTER COLUMN id_info_user SET DEFAULT nextval('project.user_information_id_info_user_seq'::regclass);
 M   ALTER TABLE project.user_information ALTER COLUMN id_info_user DROP DEFAULT;
       project          postgres    false    215    212                   0    74034 	   idea_user 
   TABLE DATA           ?   COPY project.idea_user (id_idea, registred_id, id_user2, image_logo, elevator_p, file_idea, date_idea, name_idea, type_idea) FROM stdin;
    project          postgres    false    214       3329.dat ?          0    74013    role 
   TABLE DATA           2   COPY project.role (id_user, rol_name) FROM stdin;
    project          postgres    false    211       3326.dat ?          0    74020    user_information 
   TABLE DATA           ?   COPY project.user_information (name, surname, username, password, email, id_role1, date_of_birth, id_info_user, condition) FROM stdin;
    project          postgres    false    212       3327.dat            0    0    idea_user_id_idea_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('project.idea_user_id_idea_seq', 80, true);
          project          postgres    false    213                    0    0    role_id_user_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('project.role_id_user_seq', 1, false);
          project          postgres    false    210                    0    0 !   user_information_id_info_user_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('project.user_information_id_info_user_seq', 99, true);
          project          postgres    false    215         o           2606    74041    idea_user idea_user_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY project.idea_user
    ADD CONSTRAINT idea_user_pkey PRIMARY KEY (id_idea);
 C   ALTER TABLE ONLY project.idea_user DROP CONSTRAINT idea_user_pkey;
       project            postgres    false    214         k           2606    74018    role role_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY project.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id_user);
 9   ALTER TABLE ONLY project.role DROP CONSTRAINT role_pkey;
       project            postgres    false    211         m           2606    107026 &   user_information user_information_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY project.user_information
    ADD CONSTRAINT user_information_pkey PRIMARY KEY (id_info_user);
 Q   ALTER TABLE ONLY project.user_information DROP CONSTRAINT user_information_pkey;
       project            postgres    false    212         q           2606    107027    idea_user idea_user    FK CONSTRAINT     ?   ALTER TABLE ONLY project.idea_user
    ADD CONSTRAINT idea_user FOREIGN KEY (id_user2) REFERENCES project.user_information(id_info_user) NOT VALID;
 >   ALTER TABLE ONLY project.idea_user DROP CONSTRAINT idea_user;
       project          postgres    false    212    214    3181         p           2606    74047 !   user_information user_information    FK CONSTRAINT     ?   ALTER TABLE ONLY project.user_information
    ADD CONSTRAINT user_information FOREIGN KEY (id_role1) REFERENCES project.role(id_user) NOT VALID;
 L   ALTER TABLE ONLY project.user_information DROP CONSTRAINT user_information;
       project          postgres    false    212    3179    211                                                                                                                                                                                                                                                                                                                                                                                                                                                    3329.dat                                                                                            0000600 0004000 0002000 00000002443 14243564337 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        74	Una tienda de venta de bebidas alcoholicas	89	~\\file_types_section\\image_logo\\.jpg	https://www.youtube.com/watch?v=BeI2unT1RsA	~\\file_types_section\\file_idea\\.jpg	2022-05-24 00:00:00	BARES CAMILA	 -VENTAS
73	Aplicación para medir el tiempo de uso	89	~\\file_types_section\\image_logo\\.png	https://www.youtube.com/watch?v=BeI2unT1RsA	~\\file_types_section\\file_idea\\.png	2022-05-25 00:00:00	Tempusimp	 -TECNOLOGIA -SOFTWARE -CUIDADO AMBIENTAL
75	plantar 3000 arboles a las afueras de facatativa	92	~\\file_types_section\\image_logo\\.jpg	https://www.youtube.com/watch?v=BeI2unT1RsA	~\\file_types_section\\file_idea\\.jpg	2022-05-25 00:00:00	salvando arboles	 -CUIDADO AMBIENTAL
76	Aplicacion del control del tiempo, control parental	99	~\\file_types_section\\image_logo\\tempus_imperius.png	https://www.youtube.com/watch?v=BeI2unT1RsA	~\\file_types_section\\file_idea\\Infografia Tempus Imperius.pdf	2022-05-25 07:38:38.924079	Tempus Imperius	 -TECNOLOGIA -SOFTWARE -EDUCACIÓN
78	Es una aplicación de ventas en linea que permite modificar en tiempo real 	99	~\\file_types_section\\image_logo\\descarga.jpg		~\\file_types_section\\file_idea\\taller_MatematicasEspeciales_OSCAR_SANCHEZ_YONATAN_CASTAÑEDA_DIEGO_RODRIGUEZ.pdf	2022-05-25 10:12:00.493094	jovenes emprendeddores	 -TECNOLOGIA -SOFTWARE
\.


                                                                                                                                                                                                                             3326.dat                                                                                            0000600 0004000 0002000 00000000051 14243564337 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin
2	investor
3	young innovate
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3327.dat                                                                                            0000600 0004000 0002000 00000001413 14243564337 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        diego alejandro	rodriguez	bodoque	1234	bodoque@gmail.com	3	0001-01-01 00:00:00	89	ACTIVADO
pepito	perez	perez	1234	kamiloo-525@hotmail.com	3	2022-05-27 00:00:00	92	ACTIVADO
yonatan	castañeda	juancho	1234	ycasta@gmail.com	2	2022-05-03 00:00:00	80	ACTIVADO
Juan Manuel	gomez	juancho33	1234	ssso@gmail.com	3	2022-05-26 00:00:00	98	ACTIVADO
felipe	gutierrez	pipe	1234	pipe@gmail.com	1	0001-01-01 00:00:00	82	ACTIVADO
Natalia	Cruz	nataC2	1234	yamithsanchez16@gmail.com	3	0001-01-01 00:00:00	91	DESACTIVADO
juan daniel	sanchez gutierrez	juanito	1234	ya16@gmail.com	3	2022-05-26 00:00:00	93	ACTIVADO
Juan Manuel	gomez	juancho	1234	yamithsanchez16@gmail.com	3	2022-05-26 00:00:00	94	ACTIVADO
Diego	Rodriguez	wills	1234	willslipknotpsico@gmail.com	3	2021-10-25 00:00:00	99	ACTIVADO
\.


                                                                                                                                                                                                                                                     restore.sql                                                                                         0000600 0004000 0002000 00000016142 14243564337 0015403 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

DROP DATABASE jovenes_emprendedores;
--
-- Name: jovenes_emprendedores; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE jovenes_emprendedores WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE jovenes_emprendedores OWNER TO postgres;

\connect jovenes_emprendedores

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

--
-- Name: project; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA project;


ALTER SCHEMA project OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: idea_user; Type: TABLE; Schema: project; Owner: postgres
--

CREATE TABLE project.idea_user (
    id_idea integer NOT NULL,
    registred_id text NOT NULL,
    id_user2 integer NOT NULL,
    image_logo text NOT NULL,
    elevator_p text NOT NULL,
    file_idea text NOT NULL,
    date_idea timestamp without time zone NOT NULL,
    name_idea text NOT NULL,
    type_idea text NOT NULL
);


ALTER TABLE project.idea_user OWNER TO postgres;

--
-- Name: idea_user_id_idea_seq; Type: SEQUENCE; Schema: project; Owner: postgres
--

CREATE SEQUENCE project.idea_user_id_idea_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE project.idea_user_id_idea_seq OWNER TO postgres;

--
-- Name: idea_user_id_idea_seq; Type: SEQUENCE OWNED BY; Schema: project; Owner: postgres
--

ALTER SEQUENCE project.idea_user_id_idea_seq OWNED BY project.idea_user.id_idea;


--
-- Name: role; Type: TABLE; Schema: project; Owner: postgres
--

CREATE TABLE project.role (
    id_user integer NOT NULL,
    rol_name text NOT NULL
);


ALTER TABLE project.role OWNER TO postgres;

--
-- Name: role_id_user_seq; Type: SEQUENCE; Schema: project; Owner: postgres
--

CREATE SEQUENCE project.role_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE project.role_id_user_seq OWNER TO postgres;

--
-- Name: role_id_user_seq; Type: SEQUENCE OWNED BY; Schema: project; Owner: postgres
--

ALTER SEQUENCE project.role_id_user_seq OWNED BY project.role.id_user;


--
-- Name: user_information; Type: TABLE; Schema: project; Owner: postgres
--

CREATE TABLE project.user_information (
    name text NOT NULL,
    surname text NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    email text NOT NULL,
    id_role1 integer NOT NULL,
    date_of_birth timestamp without time zone NOT NULL,
    id_info_user integer NOT NULL,
    condition text NOT NULL
);


ALTER TABLE project.user_information OWNER TO postgres;

--
-- Name: user_information_id_info_user_seq; Type: SEQUENCE; Schema: project; Owner: postgres
--

CREATE SEQUENCE project.user_information_id_info_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE project.user_information_id_info_user_seq OWNER TO postgres;

--
-- Name: user_information_id_info_user_seq; Type: SEQUENCE OWNED BY; Schema: project; Owner: postgres
--

ALTER SEQUENCE project.user_information_id_info_user_seq OWNED BY project.user_information.id_info_user;


--
-- Name: idea_user id_idea; Type: DEFAULT; Schema: project; Owner: postgres
--

ALTER TABLE ONLY project.idea_user ALTER COLUMN id_idea SET DEFAULT nextval('project.idea_user_id_idea_seq'::regclass);


--
-- Name: role id_user; Type: DEFAULT; Schema: project; Owner: postgres
--

ALTER TABLE ONLY project.role ALTER COLUMN id_user SET DEFAULT nextval('project.role_id_user_seq'::regclass);


--
-- Name: user_information id_info_user; Type: DEFAULT; Schema: project; Owner: postgres
--

ALTER TABLE ONLY project.user_information ALTER COLUMN id_info_user SET DEFAULT nextval('project.user_information_id_info_user_seq'::regclass);


--
-- Data for Name: idea_user; Type: TABLE DATA; Schema: project; Owner: postgres
--

COPY project.idea_user (id_idea, registred_id, id_user2, image_logo, elevator_p, file_idea, date_idea, name_idea, type_idea) FROM stdin;
\.
COPY project.idea_user (id_idea, registred_id, id_user2, image_logo, elevator_p, file_idea, date_idea, name_idea, type_idea) FROM '$$PATH$$/3329.dat';

--
-- Data for Name: role; Type: TABLE DATA; Schema: project; Owner: postgres
--

COPY project.role (id_user, rol_name) FROM stdin;
\.
COPY project.role (id_user, rol_name) FROM '$$PATH$$/3326.dat';

--
-- Data for Name: user_information; Type: TABLE DATA; Schema: project; Owner: postgres
--

COPY project.user_information (name, surname, username, password, email, id_role1, date_of_birth, id_info_user, condition) FROM stdin;
\.
COPY project.user_information (name, surname, username, password, email, id_role1, date_of_birth, id_info_user, condition) FROM '$$PATH$$/3327.dat';

--
-- Name: idea_user_id_idea_seq; Type: SEQUENCE SET; Schema: project; Owner: postgres
--

SELECT pg_catalog.setval('project.idea_user_id_idea_seq', 80, true);


--
-- Name: role_id_user_seq; Type: SEQUENCE SET; Schema: project; Owner: postgres
--

SELECT pg_catalog.setval('project.role_id_user_seq', 1, false);


--
-- Name: user_information_id_info_user_seq; Type: SEQUENCE SET; Schema: project; Owner: postgres
--

SELECT pg_catalog.setval('project.user_information_id_info_user_seq', 99, true);


--
-- Name: idea_user idea_user_pkey; Type: CONSTRAINT; Schema: project; Owner: postgres
--

ALTER TABLE ONLY project.idea_user
    ADD CONSTRAINT idea_user_pkey PRIMARY KEY (id_idea);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: project; Owner: postgres
--

ALTER TABLE ONLY project.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id_user);


--
-- Name: user_information user_information_pkey; Type: CONSTRAINT; Schema: project; Owner: postgres
--

ALTER TABLE ONLY project.user_information
    ADD CONSTRAINT user_information_pkey PRIMARY KEY (id_info_user);


--
-- Name: idea_user idea_user; Type: FK CONSTRAINT; Schema: project; Owner: postgres
--

ALTER TABLE ONLY project.idea_user
    ADD CONSTRAINT idea_user FOREIGN KEY (id_user2) REFERENCES project.user_information(id_info_user) NOT VALID;


--
-- Name: user_information user_information; Type: FK CONSTRAINT; Schema: project; Owner: postgres
--

ALTER TABLE ONLY project.user_information
    ADD CONSTRAINT user_information FOREIGN KEY (id_role1) REFERENCES project.role(id_user) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              