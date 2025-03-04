PGDMP     *        	            {            Shop    15.2    15.2 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    57345    Shop    DATABASE     z   CREATE DATABASE "Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Shop";
                postgres    false            �            1259    57347    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    57346    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    57354    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    57353    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    57361    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    57360    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    57368    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    57367    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    57377    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    57387    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    57386    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    57376    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            ~           2604    57350    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    57357    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    57364 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    57371 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    57380 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    57390    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            (          0    57347    category 
   TABLE DATA                 public          postgres    false    215   n9       *          0    57354    image 
   TABLE DATA                 public          postgres    false    217   �9       ,          0    57361    orders 
   TABLE DATA                 public          postgres    false    219   �;       .          0    57368    person 
   TABLE DATA                 public          postgres    false    221   �<       0          0    57377    product 
   TABLE DATA                 public          postgres    false    223   t=       2          0    57387    product_cart 
   TABLE DATA                 public          postgres    false    225   �D       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 15, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 2, true);
          public          postgres    false    218            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 2, true);
          public          postgres    false    220            C           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 3, true);
          public          postgres    false    224            D           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 3, true);
          public          postgres    false    222            �           2606    57352    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    57359    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    57366    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    57375    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    57392    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    57385    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    57394 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    57400 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    221    3212            �           2606    57410 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    223    3206    215            �           2606    57405 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3214    219    223            �           2606    57395 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    3214    223            �           2606    57420 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    225    223    3214            �           2606    57415 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    221    225    3212            (      x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0����x��uMk.OҌ01���ۀ�2�01�b�Ŧ�.l���b����b녽v\�1�� �6VG      *   �  x��Աn�0�����[�hH$e���!�E
4i�@"��E����+w�>�oѢ��:=>=|}�N��_��G{[u^��O���������������}蟗���>{x�n�q��4!��
lN =dF-n	I���כ����="���� b��H
թ@��KHIҌ�i��̺�T��, ��X/��y�k��M5T���1b_��	H���j��>�ĴM��F6�56(�+���*�dNs���t�#�Th5���!*f��#��K�7�v�[<Yl�i��kߞ�s�1_�}a�K<�ɭ��M�5�t�d����C���l���g?�����w��1q� ��KW��K>�ɭ@��ձ��Pxҽ������FY$Iw      ,   �   x����j�0��~��%��_�{�!CH�I{��CbYz��=��ò��|��r��B�~�����9�+��P���j.�-�O�a��cK}�kr)�Ŗ�<ݶ��}*���O_��YE;N� TN���0�R�TT
�+W�sB!	R ����΋El�w�{,�j�S���V����!0`�c����-7��k��X3H����)�C�Z�?���Qm�      .   �   x���Ao�0 �;��4!JP�S'la�yY:�L3��P�����K��&Y�s&����f���R����5?���(�s9��t
m���	�VQ	�!�6ѡ��p�w]_��K�[����v��4�/����˂Te9}>�O^&�����c3p����ewdd���[_y���R�(خ�K�p��w*����W�)�l>}}����[������i?84[�      0   :  x��WMOW��W�]i��&IW]d)J�&�6J��hA����6H!8"]�T)�R7�a���=����G����챡�R��{��w��y���ï��GO�}i6^�VY���\_y��e�TV"��rk��V��U���jy���UY�!2��eY{��������֚������w�_��e9����O/*+w��_<~��3�'�?��m���m��l�U݁�c�r�^���>0KѬk�Ϲ�҂q5ۛ2�W[��¦��m���~��=��g���ɿ�<840l[�׵���M�I��mFo6���6�q�)B���k���;��\�h��ną/Q�:��qĞsk�؁�ro�]\XL�k�U��xO���y1�'c�e�U�'�w�I����P�g�a�.��V�x`4�J$ـe���K˸ ��-�۶-,b�92��%˹l���޴#n
d�Y��T�5H����C|��&[P:��i�8�j�_Wg���TJw�hU�־*o���y�5��mK^	�(fd̎x�?�"��n�in:��o��c�8����t�R�n���F��rӡ�G)���5n��$�$;��J�i�dWz��plʹ)!X2&�O~K�vX*���5�c[bl!��

ڙ+�o�ԑ�I�f۶��k��:���X�Ji`����/����(n�b+bk��� �P����#DrS�F��L��ͻ4j��3�w?�ף �d|Ћ�e�$��@d�7�ZՌbWn�cp��||�������P�������������ϋBW")P�1Ƹ)A0�UؖH����IG]���.��$$q�c�J��5�������CE* >�I���yǀ���ᖉ�1#�GT��8[�4�'[��C*nJxbW���$��&B�g�g�f�ݟ��J�Z,M7������G��������콙E����4�d'�k	8��o{�]�e��N4���և$\�T�Bο�WG��`m��E�$�t=)�H��G�ܶ$��g�Ǿ�d��/4�-)gui��h�f#��g�&&�H�]1u�y�c`�s@����:�X��	̦�1�32QS(8��9ʕ�(�a�� |,c�%�/�ʺ$���3>S
>c��1��;`H��а��H|X�]-����h��?=��t�/_��3�
�I1�n�P ����8��2J�ऒG��ǘ�R�)����F�T5	���v�i�0S,)<ZΩO����:�s�|��=���-��$F��J
�؜B�ƾ�f�ff�xZn�.�����_��d���g�M[�~�qn$0�ㄓ~�Q��ȅ�����֣�U��L˸q��{Ѣh��h��8Ƞ�'խa|{*��	:"��I�Ĝ��.�<̀��Ș|pGQ�4A�Hx�BŢ�!�e�,�'�n��.{�,���h�R��&�Ih���eu��I���n���|���Ɍ'a���@����l9.ɖһ�kĒ���J��ќ��Zi�x��@��3��6F��=�Ev���e�̯�a��І@;�a/�DZ%�U�Z�#���(�w@)���;@�8uU"�1㎨lF���R�Ab�f��)�nOj�@fHN�:�RrL\FF��9�ᛏ�x$��x�p�Q�pN�P��x�I���GX({�)ה�X r�Z˅� ���B�#FT`l����1�:r���d��:x�����3d�"���(Ɓ'|��s˯@;En\�3�1�(��=��1_f�+M?�2f����Wc�5�o���~�.Qύ�T)^�s�J�/��Y�AAP�Ɏx�eEU뮩��v͗u(��,J�=��:=��F�i��嗦�Ұ9П\3bo���3�      2   
   x���         