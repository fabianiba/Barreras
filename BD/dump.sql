--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: alerta_categ; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE alerta_categ (
    id_alert_cat integer NOT NULL,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    id_usu integer NOT NULL
);


ALTER TABLE public.alerta_categ OWNER TO postgres;

--
-- Name: alerta_categ_id_alert_cat_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE alerta_categ_id_alert_cat_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alerta_categ_id_alert_cat_seq OWNER TO postgres;

--
-- Name: alerta_categ_id_alert_cat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE alerta_categ_id_alert_cat_seq OWNED BY alerta_categ.id_alert_cat;


--
-- Name: alerta_ent_barrera; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE alerta_ent_barrera (
    id_alert_entrada integer NOT NULL,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    img character varying(500),
    id_ingreso integer,
    id_usu integer
);


ALTER TABLE public.alerta_ent_barrera OWNER TO postgres;

--
-- Name: alerta_ent_barrera_id_alert_entrada_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE alerta_ent_barrera_id_alert_entrada_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alerta_ent_barrera_id_alert_entrada_seq OWNER TO postgres;

--
-- Name: alerta_ent_barrera_id_alert_entrada_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE alerta_ent_barrera_id_alert_entrada_seq OWNED BY alerta_ent_barrera.id_alert_entrada;


--
-- Name: alerta_salida_barrera; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE alerta_salida_barrera (
    id_sal integer NOT NULL,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    img character varying(500),
    id_egreso integer
);


ALTER TABLE public.alerta_salida_barrera OWNER TO postgres;

--
-- Name: alerta_salida_barrera_id_sal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE alerta_salida_barrera_id_sal_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alerta_salida_barrera_id_sal_seq OWNER TO postgres;

--
-- Name: alerta_salida_barrera_id_sal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE alerta_salida_barrera_id_sal_seq OWNED BY alerta_salida_barrera.id_sal;


--
-- Name: asistencia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE asistencia (
    id_asistencia integer NOT NULL,
    fecha date NOT NULL,
    hs_ingreso time without time zone NOT NULL,
    hs_egreso time without time zone NOT NULL,
    id_usu integer NOT NULL
);


ALTER TABLE public.asistencia OWNER TO postgres;

--
-- Name: asistencia_id_asistencia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE asistencia_id_asistencia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asistencia_id_asistencia_seq OWNER TO postgres;

--
-- Name: asistencia_id_asistencia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE asistencia_id_asistencia_seq OWNED BY asistencia.id_asistencia;


--
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE categoria (
    id_categoria integer NOT NULL,
    monto numeric(5,3) NOT NULL,
    tipo_vehiculo character varying(70) NOT NULL,
    forma_pago boolean NOT NULL
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categoria_id_categoria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_categoria_seq OWNER TO postgres;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE categoria_id_categoria_seq OWNED BY categoria.id_categoria;


--
-- Name: cuentasxautos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cuentasxautos (
    patente character varying(12) NOT NULL,
    id_empresa integer NOT NULL
);


ALTER TABLE public.cuentasxautos OWNER TO postgres;

--
-- Name: egreso; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE egreso (
    id_egreso integer NOT NULL,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    img character varying(500) NOT NULL,
    patente character varying(12) NOT NULL,
    id_pago integer
);


ALTER TABLE public.egreso OWNER TO postgres;

--
-- Name: egreso_id_egreso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE egreso_id_egreso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.egreso_id_egreso_seq OWNER TO postgres;

--
-- Name: egreso_id_egreso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE egreso_id_egreso_seq OWNED BY egreso.id_egreso;


--
-- Name: empresa_ctacte; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE empresa_ctacte (
    id_empresa integer NOT NULL,
    nombre character varying(20) NOT NULL,
    monto numeric(10,0)
);


ALTER TABLE public.empresa_ctacte OWNER TO postgres;

--
-- Name: empresa_ctacte_id_empresa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE empresa_ctacte_id_empresa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empresa_ctacte_id_empresa_seq OWNER TO postgres;

--
-- Name: empresa_ctacte_id_empresa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE empresa_ctacte_id_empresa_seq OWNED BY empresa_ctacte.id_empresa;


--
-- Name: ingreso; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ingreso (
    id_ingreso integer NOT NULL,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    img character varying(500) NOT NULL,
    patente character varying(12) NOT NULL
);


ALTER TABLE public.ingreso OWNER TO postgres;

--
-- Name: ingreso_id_ingreso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ingreso_id_ingreso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingreso_id_ingreso_seq OWNER TO postgres;

--
-- Name: ingreso_id_ingreso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ingreso_id_ingreso_seq OWNED BY ingreso.id_ingreso;


--
-- Name: pago; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pago (
    id_pago integer NOT NULL,
    monto numeric(5,3),
    id_cambio integer
);


ALTER TABLE public.pago OWNER TO postgres;

--
-- Name: pago_id_pago_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pago_id_pago_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pago_id_pago_seq OWNER TO postgres;

--
-- Name: pago_id_pago_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pago_id_pago_seq OWNED BY pago.id_pago;


--
-- Name: tipo_cambio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_cambio (
    id_cambio integer NOT NULL,
    descripcion_moneda character varying(25) NOT NULL,
    cambio numeric(5,3)
);


ALTER TABLE public.tipo_cambio OWNER TO postgres;

--
-- Name: tipo_cambio_id_cambio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_cambio_id_cambio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_cambio_id_cambio_seq OWNER TO postgres;

--
-- Name: tipo_cambio_id_cambio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_cambio_id_cambio_seq OWNED BY tipo_cambio.id_cambio;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    id_usuario integer NOT NULL,
    nombre character varying(25) NOT NULL,
    apellido character varying(20),
    usu character varying(15) NOT NULL,
    contra character varying(15) NOT NULL,
    fecha_ultima_conec date,
    fecha_ult_contra date,
    celu integer,
    direccion character varying(50)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;


--
-- Name: vehiculo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vehiculo (
    patente character varying(12) NOT NULL,
    cambio_cat boolean,
    estado boolean,
    id_cat integer NOT NULL
);


ALTER TABLE public.vehiculo OWNER TO postgres;

--
-- Name: id_alert_cat; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY alerta_categ ALTER COLUMN id_alert_cat SET DEFAULT nextval('alerta_categ_id_alert_cat_seq'::regclass);


--
-- Name: id_alert_entrada; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY alerta_ent_barrera ALTER COLUMN id_alert_entrada SET DEFAULT nextval('alerta_ent_barrera_id_alert_entrada_seq'::regclass);


--
-- Name: id_sal; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY alerta_salida_barrera ALTER COLUMN id_sal SET DEFAULT nextval('alerta_salida_barrera_id_sal_seq'::regclass);


--
-- Name: id_asistencia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asistencia ALTER COLUMN id_asistencia SET DEFAULT nextval('asistencia_id_asistencia_seq'::regclass);


--
-- Name: id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categoria ALTER COLUMN id_categoria SET DEFAULT nextval('categoria_id_categoria_seq'::regclass);


--
-- Name: id_egreso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY egreso ALTER COLUMN id_egreso SET DEFAULT nextval('egreso_id_egreso_seq'::regclass);


--
-- Name: id_empresa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empresa_ctacte ALTER COLUMN id_empresa SET DEFAULT nextval('empresa_ctacte_id_empresa_seq'::regclass);


--
-- Name: id_ingreso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ingreso ALTER COLUMN id_ingreso SET DEFAULT nextval('ingreso_id_ingreso_seq'::regclass);


--
-- Name: id_pago; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pago ALTER COLUMN id_pago SET DEFAULT nextval('pago_id_pago_seq'::regclass);


--
-- Name: id_cambio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_cambio ALTER COLUMN id_cambio SET DEFAULT nextval('tipo_cambio_id_cambio_seq'::regclass);


--
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);


--
-- Data for Name: alerta_categ; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alerta_categ_id_alert_cat_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('alerta_categ_id_alert_cat_seq', 1, false);


--
-- Data for Name: alerta_ent_barrera; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alerta_ent_barrera_id_alert_entrada_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('alerta_ent_barrera_id_alert_entrada_seq', 1, false);


--
-- Data for Name: alerta_salida_barrera; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alerta_salida_barrera_id_sal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('alerta_salida_barrera_id_sal_seq', 1, false);


--
-- Data for Name: asistencia; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: asistencia_id_asistencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('asistencia_id_asistencia_seq', 1, false);


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categoria_id_categoria_seq', 1, false);


--
-- Data for Name: cuentasxautos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: egreso; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: egreso_id_egreso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('egreso_id_egreso_seq', 1, false);


--
-- Data for Name: empresa_ctacte; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: empresa_ctacte_id_empresa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empresa_ctacte_id_empresa_seq', 1, false);


--
-- Data for Name: ingreso; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: ingreso_id_ingreso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ingreso_id_ingreso_seq', 1, false);


--
-- Data for Name: pago; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: pago_id_pago_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pago_id_pago_seq', 1, false);


--
-- Data for Name: tipo_cambio; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: tipo_cambio_id_cambio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_cambio_id_cambio_seq', 1, false);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 1, false);


--
-- Data for Name: vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: PK_id_alert_cat; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY alerta_categ
    ADD CONSTRAINT "PK_id_alert_cat" PRIMARY KEY (id_alert_cat);


--
-- Name: PK_id_alert_entrada; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY alerta_ent_barrera
    ADD CONSTRAINT "PK_id_alert_entrada" PRIMARY KEY (id_alert_entrada);


--
-- Name: PK_id_alert_salida; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY alerta_salida_barrera
    ADD CONSTRAINT "PK_id_alert_salida" PRIMARY KEY (id_sal);


--
-- Name: PK_id_asistencia; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY asistencia
    ADD CONSTRAINT "PK_id_asistencia" PRIMARY KEY (id_asistencia);


--
-- Name: PK_id_cambio; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_cambio
    ADD CONSTRAINT "PK_id_cambio" PRIMARY KEY (id_cambio);


--
-- Name: PK_id_categoria; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT "PK_id_categoria" PRIMARY KEY (id_categoria);


--
-- Name: PK_id_ctasXauto; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cuentasxautos
    ADD CONSTRAINT "PK_id_ctasXauto" PRIMARY KEY (patente, id_empresa);


--
-- Name: PK_id_egreso; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY egreso
    ADD CONSTRAINT "PK_id_egreso" PRIMARY KEY (id_egreso);


--
-- Name: PK_id_empresa; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empresa_ctacte
    ADD CONSTRAINT "PK_id_empresa" PRIMARY KEY (id_empresa);


--
-- Name: PK_id_ingreso; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ingreso
    ADD CONSTRAINT "PK_id_ingreso" PRIMARY KEY (id_ingreso);


--
-- Name: PK_id_pago; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pago
    ADD CONSTRAINT "PK_id_pago" PRIMARY KEY (id_pago);


--
-- Name: PK_id_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT "PK_id_usuario" PRIMARY KEY (id_usuario);


--
-- Name: PK_patente; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT "PK_patente" PRIMARY KEY (patente);


--
-- Name: idx_alert_categ; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_alert_categ ON alerta_categ USING btree (id_usu);


--
-- Name: idx_alert_ent_id_ing; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_alert_ent_id_ing ON alerta_ent_barrera USING btree (id_ingreso);


--
-- Name: idx_alert_ent_id_usu; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_alert_ent_id_usu ON alerta_ent_barrera USING btree (id_usu);


--
-- Name: idx_alert_sal_id_egre; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_alert_sal_id_egre ON alerta_salida_barrera USING btree (id_egreso);


--
-- Name: idx_asist_id_usu; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_asist_id_usu ON asistencia USING btree (id_usu);


--
-- Name: idx_ctas_id_emp; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_ctas_id_emp ON cuentasxautos USING btree (id_empresa);


--
-- Name: idx_ctas_pat; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_ctas_pat ON cuentasxautos USING btree (patente);


--
-- Name: idx_egre_id_pago; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_egre_id_pago ON egreso USING btree (id_pago);


--
-- Name: idx_egre_pat; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_egre_pat ON egreso USING btree (patente);


--
-- Name: idx_ing_pat; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_ing_pat ON ingreso USING btree (patente);


--
-- Name: idx_pago_id_cam; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_pago_id_cam ON pago USING btree (id_cambio);


--
-- Name: idx_vehic_id_cat; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_vehic_id_cat ON vehiculo USING btree (id_cat);


--
-- Name: fk_id_categoria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT fk_id_categoria FOREIGN KEY (id_cat) REFERENCES categoria(id_categoria);


--
-- Name: fk_id_eg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY alerta_salida_barrera
    ADD CONSTRAINT fk_id_eg FOREIGN KEY (id_egreso) REFERENCES egreso(id_egreso);


--
-- Name: fk_id_empresa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cuentasxautos
    ADD CONSTRAINT fk_id_empresa FOREIGN KEY (id_empresa) REFERENCES empresa_ctacte(id_empresa);


--
-- Name: fk_id_ingreso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY alerta_ent_barrera
    ADD CONSTRAINT fk_id_ingreso FOREIGN KEY (id_ingreso) REFERENCES ingreso(id_ingreso);


--
-- Name: fk_id_pago; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY egreso
    ADD CONSTRAINT fk_id_pago FOREIGN KEY (id_pago) REFERENCES pago(id_pago);


--
-- Name: fk_id_usu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY alerta_categ
    ADD CONSTRAINT fk_id_usu FOREIGN KEY (id_usu) REFERENCES usuario(id_usuario);


--
-- Name: fk_id_usu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asistencia
    ADD CONSTRAINT fk_id_usu FOREIGN KEY (id_usu) REFERENCES usuario(id_usuario);


--
-- Name: fk_id_usua; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY alerta_ent_barrera
    ADD CONSTRAINT fk_id_usua FOREIGN KEY (id_usu) REFERENCES usuario(id_usuario);


--
-- Name: fk_ing_patente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ingreso
    ADD CONSTRAINT fk_ing_patente FOREIGN KEY (patente) REFERENCES vehiculo(patente);


--
-- Name: fk_pago_id_cambio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pago
    ADD CONSTRAINT fk_pago_id_cambio FOREIGN KEY (id_cambio) REFERENCES tipo_cambio(id_cambio);


--
-- Name: fk_patente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cuentasxautos
    ADD CONSTRAINT fk_patente FOREIGN KEY (patente) REFERENCES vehiculo(patente);


--
-- Name: fk_patente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY egreso
    ADD CONSTRAINT fk_patente FOREIGN KEY (patente) REFERENCES vehiculo(patente);


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

