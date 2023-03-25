--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14 (Ubuntu 12.14-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.14 (Ubuntu 12.14-1.pgdg20.04+1)

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
-- Name: hashtag_posts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hashtag_posts (
    id integer NOT NULL,
    post_id integer NOT NULL,
    hashtag_id integer NOT NULL
);


--
-- Name: hashtag_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.hashtag_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hashtag_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.hashtag_posts_id_seq OWNED BY public.hashtag_posts.id;


--
-- Name: hashtags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hashtags (
    id integer NOT NULL,
    name text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: hashtags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.hashtags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hashtags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.hashtags_id_seq OWNED BY public.hashtags.id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.likes (
    id integer NOT NULL,
    user_id integer NOT NULL,
    post_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    content text NOT NULL,
    shared_url text NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.session (
    id integer NOT NULL,
    user_id integer NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: session_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.session_id_seq OWNED BY public.session.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    picture_url text NOT NULL,
    username text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: hashtag_posts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hashtag_posts ALTER COLUMN id SET DEFAULT nextval('public.hashtag_posts_id_seq'::regclass);


--
-- Name: hashtags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hashtags ALTER COLUMN id SET DEFAULT nextval('public.hashtags_id_seq'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: session id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session ALTER COLUMN id SET DEFAULT nextval('public.session_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: hashtag_posts; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: hashtags; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.session VALUES (1, 1, '4f0d2c34-d953-4c68-a22e-1636403a78a0', '2023-03-24 18:29:11.188856-03');
INSERT INTO public.session VALUES (2, 1, '5ef80700-a870-474a-9329-b4036c7394e3', '2023-03-24 18:29:46.207452-03');
INSERT INTO public.session VALUES (3, 1, '4cf8583a-b535-4f94-a92f-64115c953c03', '2023-03-24 19:03:02.006026-03');
INSERT INTO public.session VALUES (4, 2, '595138b8-96db-4e9d-99fb-20f21410b3d8', '2023-03-24 19:03:56.23669-03');
INSERT INTO public.session VALUES (5, 1, '481243b9-a20e-4b79-89b3-de0fb6fc502f', '2023-03-24 19:05:01.84696-03');
INSERT INTO public.session VALUES (6, 1, 'ad1db879-c9b1-4fbb-982f-b6c742cd4a4d', '2023-03-24 19:07:01.620581-03');
INSERT INTO public.session VALUES (7, 1, 'c3c45c93-e75e-4a07-b1a7-3c084841ed0e', '2023-03-24 19:08:32.048877-03');
INSERT INTO public.session VALUES (8, 1, 'a03d755f-6032-42be-a8e2-e0a24866559f', '2023-03-24 19:09:36.719815-03');
INSERT INTO public.session VALUES (9, 1, 'c2d2d04d-dbef-422a-b026-08319d222e7e', '2023-03-24 19:09:36.931572-03');
INSERT INTO public.session VALUES (10, 1, 'e956704f-5f21-46c0-a6bd-ac0c27f38761', '2023-03-24 19:09:46.285599-03');
INSERT INTO public.session VALUES (11, 1, '73403c2c-194b-4bcd-a715-85051728f944', '2023-03-24 19:09:47.8833-03');
INSERT INTO public.session VALUES (12, 1, '0d50b090-f75d-42cb-ab97-cf603ca6a37b', '2023-03-24 19:09:48.079463-03');
INSERT INTO public.session VALUES (13, 1, 'e887213b-8b01-49c3-8cf7-225512f6c84c', '2023-03-24 19:15:44.722727-03');
INSERT INTO public.session VALUES (14, 1, '91457ea8-7709-4676-aea2-3b473453b697', '2023-03-24 19:15:46.477297-03');
INSERT INTO public.session VALUES (15, 1, 'd06fcd8c-8d58-4e28-b3e3-acbf964ee390', '2023-03-24 19:15:46.71097-03');
INSERT INTO public.session VALUES (16, 1, 'e053df9f-9de3-46f8-82dc-15f1732312e6', '2023-03-24 19:15:57.856113-03');
INSERT INTO public.session VALUES (17, 1, '0a841f40-f173-4bf6-b3ae-4b45667a419a', '2023-03-24 19:15:58.018923-03');
INSERT INTO public.session VALUES (18, 1, '810d1806-be68-433c-a35d-8b4d1b7e1c0b', '2023-03-24 19:16:48.008472-03');
INSERT INTO public.session VALUES (19, 1, '099b5cd6-0acc-40cf-98cc-237ec80a7813', '2023-03-24 19:18:35.80599-03');
INSERT INTO public.session VALUES (20, 1, 'd78d3504-0a0a-4943-9ac8-4ad5b80300a2', '2023-03-24 19:18:52.540091-03');
INSERT INTO public.session VALUES (21, 1, '0364812d-2be5-48d7-902d-3a8c7688a9f2', '2023-03-24 19:18:52.72928-03');
INSERT INTO public.session VALUES (22, 1, 'bb242ddd-6cf9-4c71-9792-c75d9df45fb7', '2023-03-24 19:19:11.08592-03');
INSERT INTO public.session VALUES (23, 1, '5ad2024d-fdff-48cd-8f54-30f445b86544', '2023-03-24 19:19:24.850672-03');
INSERT INTO public.session VALUES (24, 1, 'a33baf2f-ac36-4ea0-80ba-d3b52436204b', '2023-03-24 19:19:25.100261-03');
INSERT INTO public.session VALUES (25, 1, '68038c24-344e-48bf-ace8-f119fffafc5e', '2023-03-24 19:20:16.268151-03');
INSERT INTO public.session VALUES (26, 1, '896bbcd9-5934-4f90-bf38-5c2544ab65c6', '2023-03-24 19:20:16.523451-03');
INSERT INTO public.session VALUES (27, 1, '94822716-f1d9-428b-8530-1d81665db02d', '2023-03-24 19:20:51.005441-03');
INSERT INTO public.session VALUES (28, 1, 'd4b6df6c-484d-45c0-b2df-dc710ffafaf5', '2023-03-24 19:21:02.105512-03');
INSERT INTO public.session VALUES (29, 1, '05103ae5-d7e8-44c1-b896-57ca065c5ae2', '2023-03-24 19:21:02.298012-03');
INSERT INTO public.session VALUES (30, 1, '306e8cfa-e621-4788-a9b2-7f33baa76c7e', '2023-03-24 19:22:44.19004-03');
INSERT INTO public.session VALUES (31, 1, '65a85a87-41bb-4cb2-b91c-b3a7fcd23202', '2023-03-24 19:22:58.733228-03');
INSERT INTO public.session VALUES (32, 1, 'cede873e-e3f8-47c8-a8e5-f62c352253b2', '2023-03-24 19:23:02.173394-03');
INSERT INTO public.session VALUES (33, 1, 'e17aae60-6527-4995-a376-e63b9ed97faf', '2023-03-24 19:23:02.462019-03');
INSERT INTO public.session VALUES (34, 1, '5650ffb7-aad9-4006-b421-7e6be77df96f', '2023-03-24 19:23:57.547824-03');
INSERT INTO public.session VALUES (35, 1, '8cdb0722-d7da-4f38-bae7-9a8515762958', '2023-03-24 19:23:59.170243-03');
INSERT INTO public.session VALUES (36, 1, '1b56dc94-8a03-4448-8f3a-b343ac9d0676', '2023-03-24 19:23:59.356909-03');
INSERT INTO public.session VALUES (37, 1, '77600afb-6b98-4239-b08a-42890a41365b', '2023-03-24 19:24:59.39516-03');
INSERT INTO public.session VALUES (38, 2, 'e68e0ae4-3e2d-4de2-9a44-3304609a0485', '2023-03-24 19:30:56.02014-03');
INSERT INTO public.session VALUES (39, 2, 'ce905afd-d5ed-4cc1-9975-9d6e4a5de089', '2023-03-24 19:30:57.646992-03');
INSERT INTO public.session VALUES (40, 2, '56da4663-1bfe-4485-a0f3-cf3192de806f', '2023-03-24 19:30:57.871604-03');
INSERT INTO public.session VALUES (41, 2, 'e08e66a7-6f9d-428e-b7cb-97bdf1d530ff', '2023-03-24 19:34:36.979183-03');
INSERT INTO public.session VALUES (42, 2, 'ef22a992-c6f1-4bce-89ae-78c6da85eeda', '2023-03-24 19:34:37.2872-03');
INSERT INTO public.session VALUES (43, 1, '37eacf13-f941-40c8-a88e-1153d433b7fc', '2023-03-24 19:41:32.937082-03');
INSERT INTO public.session VALUES (44, 1, 'a91d7d3a-b0b9-43cc-aa4e-abee7be9e633', '2023-03-24 19:41:34.818244-03');
INSERT INTO public.session VALUES (45, 1, '8af79df4-873d-4043-8b49-b49bdf7a83b9', '2023-03-24 19:41:34.998991-03');
INSERT INTO public.session VALUES (46, 1, '7eefd72c-ab69-4eb9-99bb-d1a0a1baf2de', '2023-03-24 19:42:24.613253-03');
INSERT INTO public.session VALUES (47, 1, 'c02c3d67-eb80-41c5-bd38-55efd67f5700', '2023-03-24 19:42:26.312074-03');
INSERT INTO public.session VALUES (48, 1, '2e387309-2882-4ca9-b127-71a2a62b3608', '2023-03-24 19:42:26.49664-03');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'leoadim@email.com', '$2b$10$rjlFVuL28Kupmx5CIdael.COxa4dZ0hJ7r9h0mJ8yJ6cGmdmWifcq', 'https://lumiere-a.akamaihd.net/v1/images/5e94826f7d7499000120d564-image_f9b9d30e.jpeg?region=336%2C0%2C864%2C864', 'leo', '2023-03-10 12:21:10.748388-03');
INSERT INTO public.users VALUES (2, 'leonardomengao70@gmail.com', '$2b$10$j0wu9enViMeHzKcU2ew2ZuyAfnzkjSzquLkoL8CDWCt43h9wGY7KO', 'https://meups.com.br/wp-content/uploads/2023/03/cats-26-900x503.jpg', 'leoadi', '2023-03-10 12:42:28.256291-03');
INSERT INTO public.users VALUES (3, 'leoadiasdm@email.com', '$2b$10$1TWjPAKw.yFxmhFMO8oMVe2igEx34zP.nvVops/G.fHmwUzPBgbxC', 'https://i1.sndcdn.com/avatars-VoyuhbQFYn39mfer-xN7oSA-t500x500.jpg', 'leoaasddim', '2023-03-24 18:18:38.599671-03');
INSERT INTO public.users VALUES (6, 'leonardosdfsdfmengao70@gmail.com', '$2b$10$S857/Rlbi4i82jO5vOlAveR9DwE/aCcFg7/TVgps16Ul/ZBVQss4G', 'https://meups.com.br/wp-content/uploads/2023/03/cats-26-900x503.jpg', 'sdfsdfsdf', '2023-03-24 18:46:01.587977-03');
INSERT INTO public.users VALUES (7, 'leonardomdfgdfgdfengao70@gmail.com', '$2b$10$ok4Hxh88VPnW2ZdFIP9AcO6b/.qRdInGNaG7jO/GItlbYopyuCXCC', 'https://meups.com.br/wp-content/uploads/2023/03/cats-26-900x503.jpg', 'dfgdfgdfgdfg', '2023-03-24 18:49:46.970681-03');
INSERT INTO public.users VALUES (8, 'leonardo_201sdfsdf1sampaioi@hotmail.com', '$2b$10$ODDTwBTrP9a6hZHIGQZodej5O3.vRKVar1c7TqqF3XyWvokDOOTIS', 'https://meups.com.br/wp-content/uploads/2023/03/cats-26-900x503.jpg', 'sdfsdfsdfsdf', '2023-03-24 18:50:45.375461-03');
INSERT INTO public.users VALUES (9, 'admin@admin.com', '$2b$10$tWSLtbah7p9HXUSM/k60iO/r7NvXM9R9mQt5b/879Rw1V/KShVFRa', 'https://meups.com.br/wp-content/uploads/2023/03/cats-26-900x503.jpg', 'asd', '2023-03-24 18:54:27.381444-03');


--
-- Name: hashtag_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.hashtag_posts_id_seq', 1, false);


--
-- Name: hashtags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.hashtags_id_seq', 1, false);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.likes_id_seq', 1, false);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.session_id_seq', 48, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- Name: hashtag_posts hashtag_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hashtag_posts
    ADD CONSTRAINT hashtag_posts_pkey PRIMARY KEY (id);


--
-- Name: hashtags hashtags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hashtags
    ADD CONSTRAINT hashtags_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: hashtag_posts hashtag_posts_hashtag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hashtag_posts
    ADD CONSTRAINT hashtag_posts_hashtag_id_fkey FOREIGN KEY (hashtag_id) REFERENCES public.hashtags(id) ON DELETE CASCADE;


--
-- Name: hashtag_posts hashtag_posts_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hashtag_posts
    ADD CONSTRAINT hashtag_posts_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: likes likes_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: likes likes_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: posts posts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: session session_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

