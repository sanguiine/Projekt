PGDMP                           x            Projekt    12.1    12.1 B    z           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            {           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            |           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            }           1262    24766    Projekt    DATABASE     �   CREATE DATABASE "Projekt" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "Projekt";
                postgres    false            �            1259    24767    dzien    TABLE     P   CREATE TABLE public.dzien (
    "Id_dnia" integer NOT NULL,
    "Dzien" text
);
    DROP TABLE public.dzien;
       public         heap    postgres    false            �            1259    24773    events    TABLE     s   CREATE TABLE public.events (
    id_event integer NOT NULL,
    event text,
    data date,
    id_klasy integer
);
    DROP TABLE public.events;
       public         heap    postgres    false            �            1259    24779    godzina    TABLE     �   CREATE TABLE public.godzina (
    "Id_godzina" integer NOT NULL,
    "Id_dnia" integer NOT NULL,
    "Ktora_godzina" text,
    id_godziny integer NOT NULL
);
    DROP TABLE public.godzina;
       public         heap    postgres    false            �            1259    24785    klasa    TABLE     S   CREATE TABLE public.klasa (
    id_klasy integer NOT NULL,
    nazwa_klasy text
);
    DROP TABLE public.klasa;
       public         heap    postgres    false            ~           0    0    TABLE klasa    COMMENT     V   COMMENT ON TABLE public.klasa IS 'zawierająca podstawowe informacje na temat klasy';
          public          postgres    false    205            �            1259    24791    lekcja    TABLE     �   CREATE TABLE public.lekcja (
    id_lekcji integer NOT NULL,
    id_godziny integer,
    id_nauczyciela integer,
    id_przedmiotu integer,
    sala integer,
    id_klasy integer
);
    DROP TABLE public.lekcja;
       public         heap    postgres    false            �            1259    24794    nauczyciele    TABLE     �   CREATE TABLE public.nauczyciele (
    id_nauczyciela integer NOT NULL,
    "imię" text,
    nazwisko text,
    email text,
    "hasło" text,
    id_przedmiotu integer
);
    DROP TABLE public.nauczyciele;
       public         heap    postgres    false            �            1259    24800    oceny    TABLE     �   CREATE TABLE public.oceny (
    id_przedmiotu integer,
    data date,
    id_oceny integer NOT NULL,
    rodzaj_oceny text,
    ocena integer,
    id_ucznia integer,
    semestr integer
);
    DROP TABLE public.oceny;
       public         heap    postgres    false            �            1259    24809 
   przedmioty    TABLE     b   CREATE TABLE public.przedmioty (
    id_przedmiotu integer NOT NULL,
    nazwa_przedmiotu text
);
    DROP TABLE public.przedmioty;
       public         heap    postgres    false            �            1259    24815    relacje    TABLE     a   CREATE TABLE public.relacje (
    id_ucznia integer NOT NULL,
    id_rodzica integer NOT NULL
);
    DROP TABLE public.relacje;
       public         heap    postgres    false            �            1259    24818    rodzice    TABLE     �   CREATE TABLE public.rodzice (
    id_rodzica integer NOT NULL,
    "imię" text,
    nazwisko text,
    email text,
    "hasło" text
);
    DROP TABLE public.rodzice;
       public         heap    postgres    false            �            1259    24824 	   uczniowie    TABLE       CREATE TABLE public.uczniowie (
    "miejsce zamieszkania" text,
    "data urodzenia" date,
    "dojeżdża" boolean,
    id_ucznia integer NOT NULL,
    email text NOT NULL,
    id_klasy integer,
    "miejsce urodzenia" text,
    "imię" text,
    nazwisko text,
    "hasło" text
);
    DROP TABLE public.uczniowie;
       public         heap    postgres    false                       0    0    TABLE uczniowie    COMMENT     J   COMMENT ON TABLE public.uczniowie IS 'do przechowywania danych o uczniu';
          public          postgres    false    212            �            1259    24830    uczy    TABLE     a   CREATE TABLE public.uczy (
    id_nauczyciela integer NOT NULL,
    id_klasy integer NOT NULL
);
    DROP TABLE public.uczy;
       public         heap    postgres    false            �            1259    24833    uwagi    TABLE     �   CREATE TABLE public.uwagi (
    data date,
    id_nauczyciela integer,
    id_ucznia integer,
    id_uwagi integer NOT NULL,
    uwaga text
);
    DROP TABLE public.uwagi;
       public         heap    postgres    false            �            1259    24839 
   wiadomosci    TABLE     �   CREATE TABLE public.wiadomosci (
    id_nauczyciela integer,
    id_rodzica integer,
    wiadomosc text,
    czas time without time zone,
    data date,
    id_wiadomosci integer NOT NULL,
    autor text
);
    DROP TABLE public.wiadomosci;
       public         heap    postgres    false            j          0    24767    dzien 
   TABLE DATA           3   COPY public.dzien ("Id_dnia", "Dzien") FROM stdin;
    public          postgres    false    202   �M       k          0    24773    events 
   TABLE DATA           A   COPY public.events (id_event, event, data, id_klasy) FROM stdin;
    public          postgres    false    203   �M       l          0    24779    godzina 
   TABLE DATA           W   COPY public.godzina ("Id_godzina", "Id_dnia", "Ktora_godzina", id_godziny) FROM stdin;
    public          postgres    false    204   �N       m          0    24785    klasa 
   TABLE DATA           6   COPY public.klasa (id_klasy, nazwa_klasy) FROM stdin;
    public          postgres    false    205   �N       n          0    24791    lekcja 
   TABLE DATA           f   COPY public.lekcja (id_lekcji, id_godziny, id_nauczyciela, id_przedmiotu, sala, id_klasy) FROM stdin;
    public          postgres    false    206   O       o          0    24794    nauczyciele 
   TABLE DATA           h   COPY public.nauczyciele (id_nauczyciela, "imię", nazwisko, email, "hasło", id_przedmiotu) FROM stdin;
    public          postgres    false    207   ]O       p          0    24800    oceny 
   TABLE DATA           g   COPY public.oceny (id_przedmiotu, data, id_oceny, rodzaj_oceny, ocena, id_ucznia, semestr) FROM stdin;
    public          postgres    false    208   �P       q          0    24809 
   przedmioty 
   TABLE DATA           E   COPY public.przedmioty (id_przedmiotu, nazwa_przedmiotu) FROM stdin;
    public          postgres    false    209   �Q       r          0    24815    relacje 
   TABLE DATA           8   COPY public.relacje (id_ucznia, id_rodzica) FROM stdin;
    public          postgres    false    210   IR       s          0    24818    rodzice 
   TABLE DATA           Q   COPY public.rodzice (id_rodzica, "imię", nazwisko, email, "hasło") FROM stdin;
    public          postgres    false    211   jR       t          0    24824 	   uczniowie 
   TABLE DATA           �   COPY public.uczniowie ("miejsce zamieszkania", "data urodzenia", "dojeżdża", id_ucznia, email, id_klasy, "miejsce urodzenia", "imię", nazwisko, "hasło") FROM stdin;
    public          postgres    false    212   �R       u          0    24830    uczy 
   TABLE DATA           8   COPY public.uczy (id_nauczyciela, id_klasy) FROM stdin;
    public          postgres    false    213   �T       v          0    24833    uwagi 
   TABLE DATA           Q   COPY public.uwagi (data, id_nauczyciela, id_ucznia, id_uwagi, uwaga) FROM stdin;
    public          postgres    false    214   �T       w          0    24839 
   wiadomosci 
   TABLE DATA           m   COPY public.wiadomosci (id_nauczyciela, id_rodzica, wiadomosc, czas, data, id_wiadomosci, autor) FROM stdin;
    public          postgres    false    215   +U       �
           2606    24846    dzien Dzien_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.dzien
    ADD CONSTRAINT "Dzien_pkey" PRIMARY KEY ("Id_dnia");
 <   ALTER TABLE ONLY public.dzien DROP CONSTRAINT "Dzien_pkey";
       public            postgres    false    202            �
           2606    24848    klasa Klasa_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.klasa
    ADD CONSTRAINT "Klasa_pkey" PRIMARY KEY (id_klasy) INCLUDE (id_klasy);
 <   ALTER TABLE ONLY public.klasa DROP CONSTRAINT "Klasa_pkey";
       public            postgres    false    205    205            �
           2606    24850    nauczyciele PK_Id_nauczyciela 
   CONSTRAINT     i   ALTER TABLE ONLY public.nauczyciele
    ADD CONSTRAINT "PK_Id_nauczyciela" PRIMARY KEY (id_nauczyciela);
 I   ALTER TABLE ONLY public.nauczyciele DROP CONSTRAINT "PK_Id_nauczyciela";
       public            postgres    false    207            �
           2606    24854    uczniowie U_id_ucznia 
   CONSTRAINT     W   ALTER TABLE ONLY public.uczniowie
    ADD CONSTRAINT "U_id_ucznia" UNIQUE (id_ucznia);
 A   ALTER TABLE ONLY public.uczniowie DROP CONSTRAINT "U_id_ucznia";
       public            postgres    false    212            �
           2606    24856    uczniowie Uczniowie_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.uczniowie
    ADD CONSTRAINT "Uczniowie_pkey" PRIMARY KEY (id_ucznia) INCLUDE (id_ucznia);
 D   ALTER TABLE ONLY public.uczniowie DROP CONSTRAINT "Uczniowie_pkey";
       public            postgres    false    212    212            �
           2606    24858    nauczyciele Uid_nauczyciela 
   CONSTRAINT     b   ALTER TABLE ONLY public.nauczyciele
    ADD CONSTRAINT "Uid_nauczyciela" UNIQUE (id_nauczyciela);
 G   ALTER TABLE ONLY public.nauczyciele DROP CONSTRAINT "Uid_nauczyciela";
       public            postgres    false    207            �
           2606    24860    events events_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id_event);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    203            �
           2606    24862    relacje fk_id_ucznia_id_rodzica 
   CONSTRAINT     p   ALTER TABLE ONLY public.relacje
    ADD CONSTRAINT fk_id_ucznia_id_rodzica PRIMARY KEY (id_ucznia, id_rodzica);
 I   ALTER TABLE ONLY public.relacje DROP CONSTRAINT fk_id_ucznia_id_rodzica;
       public            postgres    false    210    210            �
           2606    24864    lekcja lekcja_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.lekcja
    ADD CONSTRAINT lekcja_pkey PRIMARY KEY (id_lekcji);
 <   ALTER TABLE ONLY public.lekcja DROP CONSTRAINT lekcja_pkey;
       public            postgres    false    206            �
           2606    24866    oceny oceny_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.oceny
    ADD CONSTRAINT oceny_pkey PRIMARY KEY (id_oceny);
 :   ALTER TABLE ONLY public.oceny DROP CONSTRAINT oceny_pkey;
       public            postgres    false    208            �
           2606    24868    godzina pk_id_godzina 
   CONSTRAINT     ]   ALTER TABLE ONLY public.godzina
    ADD CONSTRAINT pk_id_godzina PRIMARY KEY ("Id_godzina");
 ?   ALTER TABLE ONLY public.godzina DROP CONSTRAINT pk_id_godzina;
       public            postgres    false    204            �
           2606    24870    przedmioty pk_id_przedmiotu 
   CONSTRAINT     d   ALTER TABLE ONLY public.przedmioty
    ADD CONSTRAINT pk_id_przedmiotu PRIMARY KEY (id_przedmiotu);
 E   ALTER TABLE ONLY public.przedmioty DROP CONSTRAINT pk_id_przedmiotu;
       public            postgres    false    209            �
           2606    24872    rodzice pk_id_rodzica 
   CONSTRAINT     [   ALTER TABLE ONLY public.rodzice
    ADD CONSTRAINT pk_id_rodzica PRIMARY KEY (id_rodzica);
 ?   ALTER TABLE ONLY public.rodzice DROP CONSTRAINT pk_id_rodzica;
       public            postgres    false    211            �
           2606    24874    uczy uczy_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.uczy
    ADD CONSTRAINT uczy_pkey PRIMARY KEY (id_nauczyciela, id_klasy);
 8   ALTER TABLE ONLY public.uczy DROP CONSTRAINT uczy_pkey;
       public            postgres    false    213    213            �
           2606    24876    uwagi uwagi_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.uwagi
    ADD CONSTRAINT uwagi_pkey PRIMARY KEY (id_uwagi);
 :   ALTER TABLE ONLY public.uwagi DROP CONSTRAINT uwagi_pkey;
       public            postgres    false    214            �
           2606    24878    wiadomosci wiadomosci_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.wiadomosci
    ADD CONSTRAINT wiadomosci_pkey PRIMARY KEY (id_wiadomosci);
 D   ALTER TABLE ONLY public.wiadomosci DROP CONSTRAINT wiadomosci_pkey;
       public            postgres    false    215            �
           1259    24879    fki_fk_id_nauczyciela    INDEX     Q   CREATE INDEX fki_fk_id_nauczyciela ON public.uwagi USING btree (id_nauczyciela);
 )   DROP INDEX public.fki_fk_id_nauczyciela;
       public            postgres    false    214            �
           2606    24880    godzina Godzina_Id_dnia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.godzina
    ADD CONSTRAINT "Godzina_Id_dnia_fkey" FOREIGN KEY ("Id_dnia") REFERENCES public.dzien("Id_dnia") NOT VALID;
 H   ALTER TABLE ONLY public.godzina DROP CONSTRAINT "Godzina_Id_dnia_fkey";
       public          postgres    false    202    204    2749            �
           2606    24930 "   lekcja fk76407sk9vmhvgbbnmmyovuhsh    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekcja
    ADD CONSTRAINT fk76407sk9vmhvgbbnmmyovuhsh FOREIGN KEY (id_godziny) REFERENCES public.godzina("Id_godzina");
 L   ALTER TABLE ONLY public.lekcja DROP CONSTRAINT fk76407sk9vmhvgbbnmmyovuhsh;
       public          postgres    false    204    206    2753            �
           2606    24950 !   uwagi fk88ejycrwqod5lxqat6mo0wsyn    FK CONSTRAINT     �   ALTER TABLE ONLY public.uwagi
    ADD CONSTRAINT fk88ejycrwqod5lxqat6mo0wsyn FOREIGN KEY (id_nauczyciela) REFERENCES public.nauczyciele(id_nauczyciela);
 K   ALTER TABLE ONLY public.uwagi DROP CONSTRAINT fk88ejycrwqod5lxqat6mo0wsyn;
       public          postgres    false    2759    207    214            �
           2606    24890    uczy fk_id_klasy    FK CONSTRAINT     �   ALTER TABLE ONLY public.uczy
    ADD CONSTRAINT fk_id_klasy FOREIGN KEY (id_klasy) REFERENCES public.klasa(id_klasy) NOT VALID;
 :   ALTER TABLE ONLY public.uczy DROP CONSTRAINT fk_id_klasy;
       public          postgres    false    213    205    2755            �
           2606    24895    uczniowie fk_id_klasy    FK CONSTRAINT     �   ALTER TABLE ONLY public.uczniowie
    ADD CONSTRAINT fk_id_klasy FOREIGN KEY (id_klasy) REFERENCES public.klasa(id_klasy) NOT VALID;
 ?   ALTER TABLE ONLY public.uczniowie DROP CONSTRAINT fk_id_klasy;
       public          postgres    false    212    205    2755            �
           2606    24900    events fk_id_klasy    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT fk_id_klasy FOREIGN KEY (id_klasy) REFERENCES public.klasa(id_klasy) NOT VALID;
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT fk_id_klasy;
       public          postgres    false    2755    203    205            �
           2606    24945    lekcja fk_id_klasy    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekcja
    ADD CONSTRAINT fk_id_klasy FOREIGN KEY (id_klasy) REFERENCES public.klasa(id_klasy) NOT VALID;
 <   ALTER TABLE ONLY public.lekcja DROP CONSTRAINT fk_id_klasy;
       public          postgres    false    205    206    2755            �
           2606    24905    uczy fk_id_nauczyciela    FK CONSTRAINT     �   ALTER TABLE ONLY public.uczy
    ADD CONSTRAINT fk_id_nauczyciela FOREIGN KEY (id_nauczyciela) REFERENCES public.nauczyciele(id_nauczyciela);
 @   ALTER TABLE ONLY public.uczy DROP CONSTRAINT fk_id_nauczyciela;
       public          postgres    false    207    213    2759            �
           2606    24910    oceny fk_id_przedmiotu    FK CONSTRAINT     �   ALTER TABLE ONLY public.oceny
    ADD CONSTRAINT fk_id_przedmiotu FOREIGN KEY (id_przedmiotu) REFERENCES public.przedmioty(id_przedmiotu) NOT VALID;
 @   ALTER TABLE ONLY public.oceny DROP CONSTRAINT fk_id_przedmiotu;
       public          postgres    false    209    208    2765            �
           2606    24915    relacje fk_id_rodzica    FK CONSTRAINT     �   ALTER TABLE ONLY public.relacje
    ADD CONSTRAINT fk_id_rodzica FOREIGN KEY (id_rodzica) REFERENCES public.rodzice(id_rodzica) NOT VALID;
 ?   ALTER TABLE ONLY public.relacje DROP CONSTRAINT fk_id_rodzica;
       public          postgres    false    211    210    2769            �
           2606    24920    relacje fk_id_ucznia    FK CONSTRAINT     �   ALTER TABLE ONLY public.relacje
    ADD CONSTRAINT fk_id_ucznia FOREIGN KEY (id_ucznia) REFERENCES public.uczniowie(id_ucznia);
 >   ALTER TABLE ONLY public.relacje DROP CONSTRAINT fk_id_ucznia;
       public          postgres    false    212    210    2771            �
           2606    24925    oceny fk_id_ucznia    FK CONSTRAINT     �   ALTER TABLE ONLY public.oceny
    ADD CONSTRAINT fk_id_ucznia FOREIGN KEY (id_ucznia) REFERENCES public.uczniowie(id_ucznia) NOT VALID;
 <   ALTER TABLE ONLY public.oceny DROP CONSTRAINT fk_id_ucznia;
       public          postgres    false    212    208    2771            �
           2606    24940 "   lekcja fkaj0fikwjt3mq3owkfnto6r3uc    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekcja
    ADD CONSTRAINT fkaj0fikwjt3mq3owkfnto6r3uc FOREIGN KEY (id_przedmiotu) REFERENCES public.przedmioty(id_przedmiotu);
 L   ALTER TABLE ONLY public.lekcja DROP CONSTRAINT fkaj0fikwjt3mq3owkfnto6r3uc;
       public          postgres    false    209    206    2765            �
           2606    24935 "   lekcja fkgqaiip2ie9jawt4g1bacu87ol    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekcja
    ADD CONSTRAINT fkgqaiip2ie9jawt4g1bacu87ol FOREIGN KEY (id_nauczyciela) REFERENCES public.nauczyciele(id_nauczyciela);
 L   ALTER TABLE ONLY public.lekcja DROP CONSTRAINT fkgqaiip2ie9jawt4g1bacu87ol;
       public          postgres    false    207    206    2759            �
           2606    24955 !   uwagi fkjtfebla6elk7jlwvca9fm7v1c    FK CONSTRAINT     �   ALTER TABLE ONLY public.uwagi
    ADD CONSTRAINT fkjtfebla6elk7jlwvca9fm7v1c FOREIGN KEY (id_ucznia) REFERENCES public.uczniowie(id_ucznia);
 K   ALTER TABLE ONLY public.uwagi DROP CONSTRAINT fkjtfebla6elk7jlwvca9fm7v1c;
       public          postgres    false    212    2773    214            j   <   x�3����LM��L�I��2�/�/2�9���S�L8����J�B���� F� u      k   �   x�3���I,>��<;Q!��̪�l�ļ��Ԝ��LN##]#]C#N#.#L����́ʌ�Qf�eB�2c.SN�Ģ�lB� �h�dbZ&Pa"B�(oN�Q�@[-��J����O�Df Ra�l�g^Z~Qnb	��F@U��.�&��b���� �-v�      l   I   x��� 1�b(����_Ǳ��D�p :�0{���Q!�
crUt,n8��/��s�&5��Mb�e���E�      m      x�3�4q�2�4q�2�4u����� |�      n   4   x�3�4�@NC.#N# Ә��Ȁӈ˘��6�4I��T���r1z\\\ �v�      o   8  x�eQMK�0=O�� �n��͊�� � ���	�&m��k ��K^�I���օ,^���<�7ꝳn��1�v��0-�67�=j�[ׯ�(6e�PQ�Y�6:�����H��eԪ��V�v>`p��p�����bȈ({=Т
�����Մ��a>�0e���@w�S�x��Z= 4������qs�2���]BݣT)�&�Mǒ�N��WB���+x!�c2	[gܪZC�#u��<�)��,���|YH����l�!<@��y����5�����ܤ֞,���I�6t=��`;y�Y���W���`��1����      p   ,  x�e�AN�0E��)����N��,� ��(�Q#�`��"����l*�:�;�x�|"���=��}��:��G��:��[y-۵|�Gq�!�G�?����FHO�{^?����~�^`�E���>�� u.����I����s_Ͻ
nu��&+�Q�k�J�7��ӦI28	脂U��2��,���,Z��~�0���'HU}X�<�@*`�2�t`t�kZ��b-/8_64��B�R�eH5�py�h6Yyp���+c�
D�q�2F��qf*�HD�U4�:�]m���gS�����o�      q   X   x�3��:2��2[! ?�8;�˔�)3?'?=3�ˌ�-(��e�陗�_��X�r�&��B9F���%�E@�&0���3S����qqq b� W      r      x�3�4����� o       s   2   x�3���M���M,I�J�,qr�l��������\NC#cS�=... ���      t   �  x�m��n�0���S�a�4��ܺ���6�*U�L�m\�k@n��-�1z��vd�l�����g����=�>�G�"��!��r�M�2���9J=ImN�7���-,3��׌�AwD%a4#F(+̥>�p��$��a��M��^�BiK�>��ow��Uu����q%�th)^��z8���	W�

B�Tbp<t��C�5��Jk��gAP�W4�\�'4^���I'9�a�,��W`l�JW
�����_�^��疒���Y��i��E�OU�E'l��׷�%Y��&^�)r4�ZF��P�?���`7�X�%½����a[)f�dC��$q�J��+g�Î�����I��Ӣ-�p0?g�6���ɔ]t8,ý�>Ȕ�_5��a�Ѩs?�4��mr�Y|w�Y_�-�����y=z��}4���0e��R��M�Z�¿x�B�rX��q����� ��/L      u      x�3�4�2�4�2cc 6����� '��      v   f   x�3202�50�50�4�4b���l�����J�������,=.#dE��F��«��Ą3(�*7�<3Q!/Q!'5;9+���R��H�� �Ę��I1z\\\ �]1      w   �   x�M�1
�0 ������O�]��*�..�fH��4"��%���K�|x$l���^�M��x)S�!q�mh@�jM�V�HQE��5(8p0w&���MN.�0�}ⱼ��88'�9f��߲�5��"a3���nc���M�B| �+H     