toc.dat                                                                                             0000600 0004000 0002000 00000006526 14365631242 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       .    ;    	             {            cadastralDB    14.6    14.6                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    17424    cadastralDB    DATABASE     X   CREATE DATABASE "cadastralDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE "cadastralDB";
                postgres    false         ?            1259    17432    addess    TABLE     ?   CREATE TABLE public.addess (
    id bigint NOT NULL,
    distric character varying NOT NULL,
    province character varying NOT NULL,
    personid bigint
);
    DROP TABLE public.addess;
       public         heap    postgres    false         ?            1259    17431    addess_id_seq    SEQUENCE     ?   ALTER TABLE public.addess ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.addess_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000
    CACHE 1
);
            public          postgres    false    212         ?            1259    17426    persons    TABLE     b   CREATE TABLE public.persons (
    id bigint NOT NULL,
    full_name character varying NOT NULL
);
    DROP TABLE public.persons;
       public         heap    postgres    false         ?            1259    17425    persons_id_seq    SEQUENCE     ?   ALTER TABLE public.persons ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.persons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000
    CACHE 1
);
            public          postgres    false    210         ?          0    17432    addess 
   TABLE DATA           A   COPY public.addess (id, distric, province, personid) FROM stdin;
    public          postgres    false    212       3581.dat ?          0    17426    persons 
   TABLE DATA           0   COPY public.persons (id, full_name) FROM stdin;
    public          postgres    false    210       3579.dat            0    0    addess_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.addess_id_seq', 8, true);
          public          postgres    false    211                    0    0    persons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.persons_id_seq', 26, true);
          public          postgres    false    209         n           2606    17442    addess addess_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.addess
    ADD CONSTRAINT addess_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.addess DROP CONSTRAINT addess_pk;
       public            postgres    false    212         l           2606    17430    persons persons_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.persons DROP CONSTRAINT persons_pk;
       public            postgres    false    210                                                                                                                                                                                  3581.dat                                                                                            0000600 0004000 0002000 00000000117 14365631242 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        6	Thanh oai	Ha Noi	24
7	Yên Phong	Bắc Ninh	25
8	Ý Yên	Nam Định	26
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                 3579.dat                                                                                            0000600 0004000 0002000 00000000112 14365631242 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        24	Phạm Ngọc Sáng
25	Nguyễn Hữu Hải
26	Đỗ Xuân Cảnh
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                      restore.sql                                                                                         0000600 0004000 0002000 00000006550 14365631242 0015400 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 14.6

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

DROP DATABASE "cadastralDB";
--
-- Name: cadastralDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "cadastralDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';


ALTER DATABASE "cadastralDB" OWNER TO postgres;

\connect "cadastralDB"

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
-- Name: addess; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addess (
    id bigint NOT NULL,
    distric character varying NOT NULL,
    province character varying NOT NULL,
    personid bigint
);


ALTER TABLE public.addess OWNER TO postgres;

--
-- Name: addess_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.addess ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.addess_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000
    CACHE 1
);


--
-- Name: persons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persons (
    id bigint NOT NULL,
    full_name character varying NOT NULL
);


ALTER TABLE public.persons OWNER TO postgres;

--
-- Name: persons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.persons ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.persons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000
    CACHE 1
);


--
-- Data for Name: addess; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.addess (id, distric, province, personid) FROM stdin;
\.
COPY public.addess (id, distric, province, personid) FROM '$$PATH$$/3581.dat';

--
-- Data for Name: persons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.persons (id, full_name) FROM stdin;
\.
COPY public.persons (id, full_name) FROM '$$PATH$$/3579.dat';

--
-- Name: addess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addess_id_seq', 8, true);


--
-- Name: persons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persons_id_seq', 26, true);


--
-- Name: addess addess_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addess
    ADD CONSTRAINT addess_pk PRIMARY KEY (id);


--
-- Name: persons persons_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_pk PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        