PGDMP  
                    }            usuarios    17.4    17.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16397    usuarios    DATABASE     n   CREATE DATABASE usuarios WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt-BR';
    DROP DATABASE usuarios;
                     postgres    false            �            1259    16408    posts    TABLE     �   CREATE TABLE public.posts (
    id integer NOT NULL,
    user_id integer NOT NULL,
    description text NOT NULL,
    add_person character varying(255),
    localization character varying(255)
);
    DROP TABLE public.posts;
       public         heap r       postgres    false            �            1259    16407    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public               postgres    false    220                        0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public               postgres    false    219            �            1259    16399    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    age integer NOT NULL,
    photo text
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16398    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    218                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    217            ]           2604    16411    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            \           2604    16402    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �          0    16408    posts 
   TABLE DATA           S   COPY public.posts (id, user_id, description, add_person, localization) FROM stdin;
    public               postgres    false    220   �       �          0    16399    users 
   TABLE DATA           <   COPY public.users (id, name, email, age, photo) FROM stdin;
    public               postgres    false    218   O                  0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posts_id_seq', 6, true);
          public               postgres    false    219                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 57, true);
          public               postgres    false    217            c           2606    16415    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public                 postgres    false    220            _           2606    16406    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 postgres    false    218            a           2606    16404    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    218            d           2606    16416    posts posts_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_user_id_fkey;
       public               postgres    false    220    4705    218            �   c   x�3�4�L��/J-�t(�/N,�K�����/��2�4�LK,�/�,IU��/�L�tHJ,J����8�9���f$�����O����L*J,������ �3!+      �   �  x�uVKr�6]�O��ğd���J�2�$.٥�lZ��$T �Jf�U�eV��L�r��$�n�b�F�`��,��0{�pp�K�E����7�-j��m�
>�tUB���-z`�;)����9��!����1{��@Uy�Wo�XU^��n��g��)����I}�����ڃ=}A�	�{���׾zE��nm?�>iM��z���W^�����gvcZ���(xrE�W��^��~6�̝=�m��;T��X�t|���C+0�N�g�6���d�����΃����rvў�Y���LcQ�;�9M�SS��zx�����,����d0��=���G�4-_sy��4>������Q�2��_r�R�4J�y)U)�+zT���B��Y���������c0�g�(1N�s�N�v�<㇊�\.`cw���k����Q�nYx;앱aFZAɜT�>=�#d�1�e[���93x�;4+?��S�m�B-xf�?�4^
$V�Y)�a#�2�)���[�����a����װ!)�X�yA	��5��vB�h�}�i�E�Ut����?lt�E�ڇ�F�ni+~ ��,0%H$�!�n�1�ZiVq�����|T=��L�jicN�(� �����$�/A�y.�	��Vw߾�����9�N{�2y*vf��v�>F���_�ͯ{�6�+�f�S��6�ULۙ�b���HS|�H��ȳjuS4�V�4�D���;E�좇���Fl캂���tL�i��	����֨_�vJt�!X�����1Pzi�r�/��|�l�4�K\6]�
y�@OՒ�i�U��E,�pF+ɓz���j#��B|���1��<�ů�7�NS��/��?�MS�a��I|y�2�M��b{ s���޺Ӆ��3��t7�����阀OH�4���%��#m{�/Q�ӄ�Ҭ(t��ujX�ӏ������3o�     