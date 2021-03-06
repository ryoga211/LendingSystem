toc.dat                                                                                             0000600 0004000 0002000 00000014660 13406346047 0014455 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           *                v            exerdb    9.1.24    9.1.24     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           1262    16447    exerdb    DATABASE     x   CREATE DATABASE exerdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ja_JP.UTF-8' LC_CTYPE = 'ja_JP.UTF-8';
    DROP DATABASE exerdb;
             postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false         �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6         �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                     3079    11680    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false         �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1         �            1259    16489 
   categories    TABLE     w   CREATE TABLE categories (
    category_code character(2) NOT NULL,
    category_name character varying(10) NOT NULL
);
    DROP TABLE public.categories;
       public         engineer    false    6         �            1259    16484    items    TABLE     �   CREATE TABLE items (
    item_code character varying(8) NOT NULL,
    category_code character(2) NOT NULL,
    item_name character varying(50) NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.items;
       public         engineer    false    6         �            1259    16499    members    TABLE     �   CREATE TABLE members (
    member_code character(8) NOT NULL,
    member_name character varying(10) NOT NULL,
    phone character varying(11) NOT NULL
);
    DROP TABLE public.members;
       public         engineer    false    6         �            1259    16479    slips    TABLE     �   CREATE TABLE slips (
    slip_code character(8) NOT NULL,
    member_code character(8) NOT NULL,
    staff_code character(4) NOT NULL,
    create_time timestamp without time zone NOT NULL
);
    DROP TABLE public.slips;
       public         engineer    false    6         �            1259    16494    staff    TABLE     l   CREATE TABLE staff (
    staff_code character(4) NOT NULL,
    staff_name character varying(10) NOT NULL
);
    DROP TABLE public.staff;
       public         engineer    false    6         �            1259    16474    trades    TABLE     �   CREATE TABLE trades (
    item_code character varying(8) NOT NULL,
    item_name character varying(50) NOT NULL,
    category_code character(2) NOT NULL,
    slip_code character(8) NOT NULL,
    status boolean NOT NULL,
    return_date date
);
    DROP TABLE public.trades;
       public         engineer    false    6         �          0    16489 
   categories 
   TABLE DATA               ;   COPY categories (category_code, category_name) FROM stdin;
    public       engineer    false    165    1924       1921.dat �          0    16484    items 
   TABLE DATA               D   COPY items (item_code, category_code, item_name, price) FROM stdin;
    public       engineer    false    164    1924       1920.dat �          0    16499    members 
   TABLE DATA               ;   COPY members (member_code, member_name, phone) FROM stdin;
    public       engineer    false    167    1924       1923.dat           0    16479    slips 
   TABLE DATA               I   COPY slips (slip_code, member_code, staff_code, create_time) FROM stdin;
    public       engineer    false    163    1924       1919.dat �          0    16494    staff 
   TABLE DATA               0   COPY staff (staff_code, staff_name) FROM stdin;
    public       engineer    false    166    1924       1922.dat ~          0    16474    trades 
   TABLE DATA               ^   COPY trades (item_code, item_name, category_code, slip_code, status, return_date) FROM stdin;
    public       engineer    false    162    1924       1918.dat            2606    16493    categories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_code);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public         engineer    false    165    165    1925                    2606    16488 
   items_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY items
    ADD CONSTRAINT items_pkey PRIMARY KEY (item_code);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public         engineer    false    164    164    1925                    2606    16503    members_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_code);
 >   ALTER TABLE ONLY public.members DROP CONSTRAINT members_pkey;
       public         engineer    false    167    167    1925                    2606    16483 
   slips_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY slips
    ADD CONSTRAINT slips_pkey PRIMARY KEY (slip_code);
 :   ALTER TABLE ONLY public.slips DROP CONSTRAINT slips_pkey;
       public         engineer    false    163    163    1925                    2606    16498 
   staff_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_code);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public         engineer    false    166    166    1925                    2606    16478    trades_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY trades
    ADD CONSTRAINT trades_pkey PRIMARY KEY (item_code);
 <   ALTER TABLE ONLY public.trades DROP CONSTRAINT trades_pkey;
       public         engineer    false    162    162    1925                                                                                        1921.dat                                                                                            0000600 0004000 0002000 00000000005 13406346047 0014250 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1920.dat                                                                                            0000600 0004000 0002000 00000000005 13406346047 0014247 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1923.dat                                                                                            0000600 0004000 0002000 00000000005 13406346047 0014252 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1919.dat                                                                                            0000600 0004000 0002000 00000000005 13406346047 0014257 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1922.dat                                                                                            0000600 0004000 0002000 00000000005 13406346047 0014251 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1918.dat                                                                                            0000600 0004000 0002000 00000000005 13406346047 0014256 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000013746 13406346047 0015406 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.trades DROP CONSTRAINT trades_pkey;
ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
ALTER TABLE ONLY public.slips DROP CONSTRAINT slips_pkey;
ALTER TABLE ONLY public.members DROP CONSTRAINT members_pkey;
ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
DROP TABLE public.trades;
DROP TABLE public.staff;
DROP TABLE public.slips;
DROP TABLE public.members;
DROP TABLE public.items;
DROP TABLE public.categories;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: engineer; Tablespace: 
--

CREATE TABLE categories (
    category_code character(2) NOT NULL,
    category_name character varying(10) NOT NULL
);


ALTER TABLE public.categories OWNER TO engineer;

--
-- Name: items; Type: TABLE; Schema: public; Owner: engineer; Tablespace: 
--

CREATE TABLE items (
    item_code character varying(8) NOT NULL,
    category_code character(2) NOT NULL,
    item_name character varying(50) NOT NULL,
    price integer NOT NULL
);


ALTER TABLE public.items OWNER TO engineer;

--
-- Name: members; Type: TABLE; Schema: public; Owner: engineer; Tablespace: 
--

CREATE TABLE members (
    member_code character(8) NOT NULL,
    member_name character varying(10) NOT NULL,
    phone character varying(11) NOT NULL
);


ALTER TABLE public.members OWNER TO engineer;

--
-- Name: slips; Type: TABLE; Schema: public; Owner: engineer; Tablespace: 
--

CREATE TABLE slips (
    slip_code character(8) NOT NULL,
    member_code character(8) NOT NULL,
    staff_code character(4) NOT NULL,
    create_time timestamp without time zone NOT NULL
);


ALTER TABLE public.slips OWNER TO engineer;

--
-- Name: staff; Type: TABLE; Schema: public; Owner: engineer; Tablespace: 
--

CREATE TABLE staff (
    staff_code character(4) NOT NULL,
    staff_name character varying(10) NOT NULL
);


ALTER TABLE public.staff OWNER TO engineer;

--
-- Name: trades; Type: TABLE; Schema: public; Owner: engineer; Tablespace: 
--

CREATE TABLE trades (
    item_code character varying(8) NOT NULL,
    item_name character varying(50) NOT NULL,
    category_code character(2) NOT NULL,
    slip_code character(8) NOT NULL,
    status boolean NOT NULL,
    return_date date
);


ALTER TABLE public.trades OWNER TO engineer;

--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: engineer
--

COPY categories (category_code, category_name) FROM stdin;
\.
COPY categories (category_code, category_name) FROM '$$PATH$$/1921.dat';

--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: engineer
--

COPY items (item_code, category_code, item_name, price) FROM stdin;
\.
COPY items (item_code, category_code, item_name, price) FROM '$$PATH$$/1920.dat';

--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: engineer
--

COPY members (member_code, member_name, phone) FROM stdin;
\.
COPY members (member_code, member_name, phone) FROM '$$PATH$$/1923.dat';

--
-- Data for Name: slips; Type: TABLE DATA; Schema: public; Owner: engineer
--

COPY slips (slip_code, member_code, staff_code, create_time) FROM stdin;
\.
COPY slips (slip_code, member_code, staff_code, create_time) FROM '$$PATH$$/1919.dat';

--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: engineer
--

COPY staff (staff_code, staff_name) FROM stdin;
\.
COPY staff (staff_code, staff_name) FROM '$$PATH$$/1922.dat';

--
-- Data for Name: trades; Type: TABLE DATA; Schema: public; Owner: engineer
--

COPY trades (item_code, item_name, category_code, slip_code, status, return_date) FROM stdin;
\.
COPY trades (item_code, item_name, category_code, slip_code, status, return_date) FROM '$$PATH$$/1918.dat';

--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: engineer; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_code);


--
-- Name: items_pkey; Type: CONSTRAINT; Schema: public; Owner: engineer; Tablespace: 
--

ALTER TABLE ONLY items
    ADD CONSTRAINT items_pkey PRIMARY KEY (item_code);


--
-- Name: members_pkey; Type: CONSTRAINT; Schema: public; Owner: engineer; Tablespace: 
--

ALTER TABLE ONLY members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_code);


--
-- Name: slips_pkey; Type: CONSTRAINT; Schema: public; Owner: engineer; Tablespace: 
--

ALTER TABLE ONLY slips
    ADD CONSTRAINT slips_pkey PRIMARY KEY (slip_code);


--
-- Name: staff_pkey; Type: CONSTRAINT; Schema: public; Owner: engineer; Tablespace: 
--

ALTER TABLE ONLY staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_code);


--
-- Name: trades_pkey; Type: CONSTRAINT; Schema: public; Owner: engineer; Tablespace: 
--

ALTER TABLE ONLY trades
    ADD CONSTRAINT trades_pkey PRIMARY KEY (item_code);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          