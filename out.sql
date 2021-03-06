PGDMP                         v        	   books_app    10.3    10.3     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    25992 	   books_app    DATABASE     �   CREATE DATABASE books_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE books_app;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �
           0    0    SCHEMA public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    25995    books    TABLE       CREATE TABLE public.books (
    book_id integer NOT NULL,
    title character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    isbn character varying(255) NOT NULL,
    image_url character varying(255),
    description text NOT NULL
);
    DROP TABLE public.books;
       public         postgres    false    6            �            1259    25993    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.books_book_id_seq;
       public       postgres    false    6    197            �
           0    0    books_book_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books.book_id;
            public       postgres    false    196            o
           2604    25998    books book_id    DEFAULT     n   ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_book_id_seq'::regclass);
 <   ALTER TABLE public.books ALTER COLUMN book_id DROP DEFAULT;
       public       postgres    false    197    196    197            �
          0    25995    books 
   TABLE DATA               U   COPY public.books (book_id, title, author, isbn, image_url, description) FROM stdin;
    public       postgres    false    197   �       �
           0    0    books_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.books_book_id_seq', 5, true);
            public       postgres    false    196            q
           2606    26005    books books_author_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_author_key UNIQUE (author);
 @   ALTER TABLE ONLY public.books DROP CONSTRAINT books_author_key;
       public         postgres    false    197            s
           2606    26003    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public         postgres    false    197            �
   �
  x��Xkoܶ�l�
��/��7��:�q�<�i�$N��@AI��.E��k���3Cɏ4)R��K /�+Q�̙3gf��y�)�J�J�FD|��m��ZF���x�bפv��?z��j_=�~�������o��q��+�[�e�\kԲr}�p�r6*����G����緿�H��w�m�:n<VTn��ݷǫ;���Ǉw�K�R�m~��޹�\tr�D��(+��J���(%��.�F�A���w[�����E��U���ֲ����w^��Ҋ�� Ky��m�V�N�*���VH[���r	TD?� ��#��/�E�me�bP��X��v}o5��>
)F�l���-L�pD�B�r�QBz|�q[���蕬� c�G,vְ�x6
؃�E����\��5�$����Ҭ�+V��:,���غ^�{��:"j"8 ����Z����� �@{)^��ut/6d�R��֏���dH��s'J�b�i�r�9Q�*y��Q�-�(�pQ-xu�2�ԓ3��5�����v8�괩;�/��KC���!���m��m�ύ�0L�ǉRX\(��ް�W��uMQ��aH[Ԓ@�ݥ�� nTQ�TC�dD�m@��n]%�Z	\�	�7��lu�x1]�B�[0|��H/"1�4�Ǵu�yM[�`m�NVxb0:t�N�&_�e�Eda������E`��%�Ze�K��t��6�=���m#{����S
C�i��2p>�6�*��C�:$|�56Ƃs ��ٽ��$Y�s�]�gʗ��[*up��[���J}�H�����r�"��V���c�:u�����`��Ax�Z�d��U��!�莄��HJ��m-�4��yQ��.�Zɪˌ��hmUf���&� @�`���e��I\bہ��`o���a&�U�WE���������*�#	�3:?�~mA��>$#ŋ%��[QX�V�ã_���~����ͣ��FN`�I!h?(T���x��IJ�Pi���*�7�jhSyIܳ� ��K$��H�V���@��� ���m�z�I#/�P0��ڇ��̊�/Ȅ���攨�N�@�cVq9?D���J�~���!�Gʜ��SΔ 
�@(�_�ǅ�lDED���E�!'���Y@���k��}#+�G�jV,Hv�p�3�S��C'K�%$+I�*
2��H�k?�����A���4��D5x��Lb3X��6
�n�=� �<x)���x�Pb���r�����6�i�LC�%�Pj�;���Y�ș�F,�
��w��k�2L���� �c�DS��b0�c

��y0�xׂ+�!^Td�vg'oa�g�������u�(	������Ik�	� ��#�s�ːl@�S-!�}j�ab�����%��)�/�l��?�j�|A|�B"l���w(ցkI �����������1�ȴ"jR�����r��0�h"��:�����-Z t��� )�CR5�&�vPe�2��u�@�ө��z^����2��ն��pIY@�m��dl�d(ʄN��pԯ��%���e.<���Tu�f�e�iKk�@�0�G�Dl�$QzÀ��R��f�1Ui�F)�4�/�%�O����a���]�o�4�C��;q�|M{M�ijm��D���f��)#"^�0�w����i��9J�6���K�HOa�[G��8��o���Ƃn��-�����C��� q�O@3��������x��G��|6b���҂�	���ӂ��ř.�78@��ӐEg�m�5�;IlWv��$�{H%w}�L�

H	k�j����]���a��x4�\��Z<����׍�Ou�v�ƕ�-Wv4�>JH�Ub����f��1JV�'0�:&�5�����x;S˓^s��b ��m�VM�N%BI�LR(;�7wF7t#��Yql����^�:rC�'�Oz��R>A|�At��4�5&N3�J��5�rZNw��r� �"�5��y���	*����������B�|;n��z���6��V�t�j^
E�����>����'�Bz���0��HŻ�}���]G$�����I<+*%��L�j�L������FN�Ypq`�`@�h��b�EW�������O�~$�9WjV'��إ=2���Pbuހ�Z�Y+I��H"��svL�2��W�'IW�Ǹ�P`/#<ˌ�闛���o��-$f�����p��LE�������r9�ܐ�W2d�+n�0�!��6���_�D���������4�W��%(��/�f���\�me�OC��!�:D%W�����5#��t/c�/3���8\.{œ%%;���V	��N��J==�^s�q�|���8�-
 �L�Y �t��"�0�-ww>_]v��rUY>1}w�/$�p��3� 8��S�s3��!ꈐ)�ފ���ܷ``���\���	���FG��{�i��T=��z�����)���MU˼���Q�0��']���ÑO-b��'Ѵ���4�W��g&4���!�f�e���@�Q$w��b��A]��y��f�1��"Q�'�y�(z1Hrh��7f��k$u�S��+Ѱqf�֣w R�1�-C����d��P��Є?i�0	l��8ɓȳ�"�&��:q����<PO��ޜ<�*�7����(e%[F*@Cߚ����hr��񋹬���
�q%�c�G�,�0���|y��<_G��#�ב�y������/p�A�     