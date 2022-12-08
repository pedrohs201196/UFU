--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.1
-- Dumped by pg_dump version 9.4.1
-- Started on 2016-10-06 17:38:41

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 7 (class 2615 OID 290193)
-- Name: banco; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA banco;


ALTER SCHEMA banco OWNER TO postgres;

SET search_path = banco, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 173 (class 1259 OID 290194)
-- Name: agencia; Type: TABLE; Schema: banco; Owner: postgres; Tablespace: 
--

CREATE TABLE agencia (
    codigo character(4) NOT NULL,
    nome character varying(60) NOT NULL,
    municipio character varying(50),
    estado character(2)
);


ALTER TABLE agencia OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 290226)
-- Name: cliente; Type: TABLE; Schema: banco; Owner: postgres; Tablespace: 
--

CREATE TABLE cliente (
    id integer NOT NULL,
    nome character varying(250) NOT NULL,
    cpf character(11) NOT NULL,
    data_nasc date NOT NULL,
    endereco character varying(300) NOT NULL,
    cidade character varying(50) NOT NULL,
    estado character(2) NOT NULL,
    gerente integer NOT NULL
);


ALTER TABLE cliente OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 290261)
-- Name: clienteconta; Type: TABLE; Schema: banco; Owner: postgres; Tablespace: 
--

CREATE TABLE clienteconta (
    id_cliente integer NOT NULL,
    cod_agencia character(4) NOT NULL,
    numero_conta integer NOT NULL
);


ALTER TABLE clienteconta OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 290241)
-- Name: conta; Type: TABLE; Schema: banco; Owner: postgres; Tablespace: 
--

CREATE TABLE conta (
    cod_agencia character(4) NOT NULL,
    numero integer NOT NULL,
    saldo numeric(12,2),
    ultimo_acesso date
);


ALTER TABLE conta OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 290216)
-- Name: dependentes; Type: TABLE; Schema: banco; Owner: postgres; Tablespace: 
--

CREATE TABLE dependentes (
    funcionario integer NOT NULL,
    nome_dependente character varying(250) NOT NULL
);


ALTER TABLE dependentes OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 290201)
-- Name: funcionario; Type: TABLE; Schema: banco; Owner: postgres; Tablespace: 
--

CREATE TABLE funcionario (
    num_funcional integer NOT NULL,
    nome character varying(250) NOT NULL,
    telefone character varying(12),
    data_admissao date,
    agencia character(4) NOT NULL,
    supervisor integer
);


ALTER TABLE funcionario OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 290251)
-- Name: operacao; Type: TABLE; Schema: banco; Owner: postgres; Tablespace: 
--

CREATE TABLE operacao (
    cod_agencia character(4) NOT NULL,
    numero_conta integer NOT NULL,
    seq integer NOT NULL,
    tipo character(1) NOT NULL,
    descricao character varying(40) NOT NULL,
    datahora timestamp without time zone NOT NULL,
    valor numeric(12,2) NOT NULL
);


ALTER TABLE operacao OWNER TO postgres;

--
-- TOC entry 2040 (class 0 OID 290194)
-- Dependencies: 173
-- Data for Name: agencia; Type: TABLE DATA; Schema: banco; Owner: postgres
--

INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('0743', 'Agência Amambai', 'Amamba', 'MS');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('3928', 'Agência Anaurilandia', 'Anaurilandia', 'MS');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1323', 'Agência Angelica', 'Angelica', 'MS');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('0706', 'Agência Aparecida Do Taboado', 'Aparecida do Taboado', 'MS');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1324', 'Agência Aquidauana', 'Aquidauana', 'MS');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1792', '001-1792 SHOP METROPOLITANO-RIO-RJ', 'RIO DE JANEIRO', 'RJ');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('3075', '001-3075 PLAT.CORPORATE M/N AV.RIO BRANCO', 'RIO DE JANEIRO', 'RJ');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1797', '001-1797 SELECT BOTAFOGO-RJ', 'RIO DE JANEIRO', 'RJ');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('0775', '001-0775 R D.CAXIAS-TERESOPOLIS-RJ', 'TERESOPOLIS', 'RJ');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1808', '001-1808 SELECT CONDE DE BONFIM-RJ', 'RIO DE JANEIRO', 'RJ');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('5874', 'Avenida João Naves', 'Uberlândia', 'MG');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1001', 'Bairro Martins', 'Uberlândia', 'MG');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1221', 'Carijos', 'Belo Horizonte', 'MG');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('2918', 'Avenida Floriano Peixoto', 'Uberlândia', 'MG');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('3139', 'Halfeld', 'Juiz de Fora', 'MG');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('2794', 'Bairro Anchieta', 'Porto Alegre', 'RS');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('3536', 'Carlos Gomes', 'Porto Alegre', 'RS');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('3534', 'Bairro Boqueirao', 'Passo Fundo', 'RS');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('2692', 'Bento Brasil', 'Passo Fundo', 'RS');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1484', 'Dr.Mariano Da Rocha', 'Santa Maria', 'RS');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('0095', 'banco do brasil', 'blumenau', 'SC');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('0128', 'HSBC', 'blumenau', 'SC');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('0411', 'Caixa Econômica', 'blumenau', 'SC');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('7134', 'Itaú', 'blumenau', 'SC');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1232', 'Santader', 'blumenau', 'SC');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1100', 'Gurupi 1', 'Gurupi', 'TO');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1101', 'Gurupi 2', 'Gurupi', 'TO');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1102', 'Palmas 1', 'Palmas', 'TO');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1103', 'Araguaina 1', 'Araguaina', 'TO');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1104', 'Bernardo Sayao 1', 'Bernardo Sayao', 'TO');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1300', 'Banco do Brasil S.A. - Avenida Amazonas', 'Porto Velho', 'RO');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1301', 'Banco do Brasil S.A. - Porto Velho', 'Porto Velho', 'RO');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1302', 'Banco do Brasil S.A. - Jatuarana', 'Porto Velho', 'RO');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1303', 'Banco do Brasil S.A. - Nacoes Unidas', 'Porto Velho', 'RO');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1304', 'Banco do Brasil S.A. - Nova Porto Velho', 'Porto Velho', 'RO');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1701', 'Agência 0171', 'Itapira', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1707', 'Agência 0054', 'Bebedouro', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1710', 'Agência 0154', 'Ribeirão Bonito', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1708', 'Agência 0987', 'Sertãozinho', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1709', 'Agência 0300', 'Mirandopolis', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1600', 'BANCO DO BRASIL S.A.-SAO PAULO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1601', 'BANCO DO BRASIL S.A.-BARAO DE DUPRAT', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1602', 'BANCO DO BRASIL S.A.-SETE DE ABRIL', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1603', 'BANCO DO BRASIL S.A.-GOVERNO SAO PAULO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1604', 'BANCO DO BRASIL S.A.-MINISTERIO FAZENDA', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1605', 'BANCO DO BRASIL S.A.-PREVIDENCIA', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1606', 'BANCO DO BRASIL S.A.-PCA.DOM JOSE GASPAR', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1607', 'BANCO DO BRASIL S.A.-GECEX SAO PAULO II', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1608', 'BANCO DO BRASIL S.A.-24 DE MAIO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1609', 'BANCO DO BRASIL S.A.-BOULEVARD SAO JOAO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1610', 'BANCO DO BRASIL S.A.-EMPR.CENTRO S.PAULO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1611', 'BANCO DO BRASIL S.A.-PODER JUDICIARIO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1612', 'BANCO DO BRASIL S.A.-XAVIER DE TOLEDO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1613', 'BANCO DO BRASIL S.A.-ESTILO SAO PAULO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1614', 'BANCO DO BRASIL S.A.-CATEDRAL DA SE', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1615', 'BANCO DO BRASIL S.A.-GALERIA OLIDO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1616', 'BANCO DO BRASIL S.A.-EDIFICIO ITALIA', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1617', 'BANCO DO BRASIL S.A.-PRACA DO PATRIARCA', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1618', 'BANCO DO BRASIL S.A.-ESTILO SAO JOAO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1619', 'BANCO DO BRASIL S.A.-PALACIO DA JUSTICA', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1620', 'BANCO DO BRASIL S.A.-PALACIO MAUA', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1621', 'BANCO DO BRASIL S.A.-R.BOA VISTA-S.PAULO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1622', 'BANCO DO BRASIL S.A.-R.DA QUITANDA-S.PAULO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1623', 'BANCO DO BRASIL S.A.-ANHANGABAU-SAO PAULO', 'SAO PAULO', 'SP');
INSERT INTO agencia (codigo, nome, municipio, estado) VALUES ('1624', 'BANCO DO BRASIL S.A.-ESTILO JOAO MENDES', 'SAO PAULO', 'SP');


--
-- TOC entry 2043 (class 0 OID 290226)
-- Dependencies: 176
-- Data for Name: cliente; Type: TABLE DATA; Schema: banco; Owner: postgres
--

INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1, 'Arthur Cesar', '32112354397', '1995-02-20', 'Rua Beija Flor N 341', 'Uberlandia', 'MG', 5);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (2, 'José Marques', '10399599157', '1990-01-10', 'Rua Dolores Duran N 275', 'São Paulo', 'SP', 4);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (3, 'Maria Joaquina', '44599512397', '2002-02-03', 'Avenida Marcos de Freitas N 112', 'Araguari', 'MG', 3);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (4, 'Vitor Borges', '23939997833', '2000-01-01', 'Alameda Mario Cardoso N 174', 'Rio de Janeiro', 'RG', 2);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (5, 'Thais Felipe', '99897738735', '1991-02-07', 'Rua da Maçã N 185', 'Uberlandia', 'MG', 1);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (100, '﻿Matilde Souza', '98151129450', '1930-11-21', 'Rua Ferdinando Mollon 493', 'Santa Bárbara D Oeste', 'SP', 104);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (101, 'Nicolas Cavalcanti', '57069343710', '1983-09-18', 'Rua Rosângela Cunha Redondo 1689', 'Londrina', 'PR', 104);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (102, 'Isabela Dias', '29087694920', '1974-05-08', 'Rua Vereador Ozias Santana 961', 'Guarapari', 'ES', 104);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (103, 'Cauã Pinto', '87329143421', '1998-09-18', 'Travessa Cerqueira Torres 353', 'Salvador', 'BA', 104);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (104, 'Daniel Almeida', '69387268683', '1982-11-12', 'Avenida José Cutrale Junior 521', 'Bebedouro', 'SP', 101);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (701, 'Joao Santana', '86053589047', '1940-10-12', 'Rua dos Bandidos, 89', 'Uberlândia', 'MG', 703);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (702, 'Dilma Lana', '80183783042', '1958-10-02', 'Rua dos Presidiarios, 90', 'Belo Horizonte', 'MG', 702);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (703, 'Luis Inacio', '68055758000', '1956-03-18', 'Rua dos Condenados, 91', 'Uberlândia', 'MG', 700);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (704, 'Aecio Neves', '41626708037', '1969-05-09', 'Rua dos Presos, 92', 'Belo Horizonte', 'MG', 702);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (705, 'Renan Calheiros', '93090394006', '1948-08-02', 'Rua dos Corruptos, 93', 'Uberlandia', 'MG', 701);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (815, 'César De Alencar Sartin', '12345678911', '1966-06-04', 'Rua Castro Alves N 10', 'Porto Alegre', 'Rs', 800);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (816, 'Rodrigo Francisco De Oliveira', '12345678912', '1975-06-07', 'Rua Castro Alves N 20', 'Porto Alegre', 'Rs', 800);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (817, 'Maria Fernanda Ferreira Da Silva', '12345678913', '1990-05-03', 'Rua Castro Alves N 30', 'Porto Alegre', 'Rs', 800);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (818, 'Gabriel Silva De Barros Antunes', '12345678914', '1980-01-11', 'Rua Castro Alves N 40', 'Porto Alegre', 'Rs', 810);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (819, 'Lorena Alves Silva Ottoni', '12345678915', '1987-07-17', 'Rua Castro Alves N 50', 'Porto Alegre', 'Rs', 810);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (820, 'Etiene Borges Silva', '12345678916', '1983-12-30', 'Rua Castro Alves N 60', 'Porto Alegre', 'Rs', 810);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (821, 'Sávio Antunes Maciel Ribeiro', '12345678917', '1984-10-31', 'Rua Castro Alves N 70', 'Porto Alegre', 'Rs', 805);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (822, 'Emiliano Teixeira Martins', '12345678918', '1981-08-01', 'Rua Castro Alves N 80', 'Porto Alegre', 'Rs', 805);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (823, 'Daniela De Oliveira Marques', '12345678919', '1983-03-06', 'Rua Castro Alves N 90', 'Porto Alegre', 'Rs', 805);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (824, 'Rodrigo Soares Siqueira', '12345678920', '1990-03-03', 'Rua Castro Alves N 100', 'Porto Alegre', 'Rs', 805);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (825, 'Isis Cristiane De Camargos Mendes', '12345678921', '1990-04-27', 'Rua Castro Alves N 110', 'Porto Alegre', 'Rs', 801);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (826, 'Diego Gouvêa Couto', '12345678922', '1983-02-13', 'Rua Castro Alves N 120', 'Porto Alegre', 'Rs', 801);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (827, 'Ruan Moraes Cardoso', '12345678923', '1993-09-10', 'Rua Castro Alves N 130', 'Porto Alegre', 'Rs', 801);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (828, 'Litória Maria Alves De Souza Filha', '12345678924', '1997-12-16', 'Rua Castro Alves N 140', 'Porto Alegre', 'Rs', 801);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (829, 'Rayane Ferreira Da Silva', '12345678925', '1991-07-07', 'Rua Castro Alves N 150', 'Porto Alegre', 'Rs', 806);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (830, 'Desirre Tomaz Martins Pereira', '12345678926', '1993-08-27', 'Rua Castro Alves N 160', 'Porto Alegre', 'Rs', 806);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (831, 'Rafael Paulino Silva Sobrinho', '12345678927', '1987-08-19', 'Rua Castro Alves N 170', 'Porto Alegre', 'Rs', 806);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (832, 'Cristiano Almeida Silveira', '12345678928', '1993-01-04', 'Rua Castro Alves N 180', 'Porto Alegre', 'Rs', 806);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (833, 'Lauriane Soares Costa', '12345678929', '1986-06-23', 'Rua Castro Alves N 190', 'Porto Alegre', 'Rs', 811);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (834, 'Carlos De Souza Novais', '12345678930', '1988-11-04', 'Rua Castro Alves N 200', 'Porto Alegre', 'Rs', 811);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (835, 'Diego Rabelo Damasceno', '12345678931', '1988-10-07', 'Avenida Brasil Leste N 1210 ', 'Passo Fundo', 'Rs', 802);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (836, 'Victor Vinicius De Rezende', '12345678932', '1989-07-18', 'Avenida Brasil Leste N 1220 ', 'Passo Fundo', 'Rs', 802);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (837, 'Liana Travaglia De Sousa', '12345678933', '1981-05-04', 'Avenida Brasil Leste N 1230 ', 'Passo Fundo', 'Rs', 802);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (838, 'Tatiana Cristina Silva', '12345678934', '1978-09-29', 'Avenida Brasil Leste N 1240 ', 'Passo Fundo', 'Rs', 802);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (839, 'Marina Barbosa De Freitas Vieira', '12345678935', '1988-03-18', 'Avenida Brasil Leste N 1250 ', 'Passo Fundo', 'Rs', 807);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (840, 'Adriana Santos Farias', '12345678936', '1980-09-18', 'Avenida Brasil Leste N 1260 ', 'Passo Fundo', 'Rs', 807);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (841, 'Fabricio Soares Borges', '12345678937', '1982-06-18', 'Avenida Brasil Leste N 1270 ', 'Passo Fundo', 'Rs', 807);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (842, 'Talita Vieira Barbosa Martins', '12345678938', '1992-08-01', 'Avenida Brasil Leste N 1280 ', 'Passo Fundo', 'Rs', 812);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (843, 'Carlos Henrique De Araujo', '12345678939', '1965-09-25', 'Avenida Brasil Leste N 1290 ', 'Passo Fundo', 'Rs', 812);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (844, 'Angela Aparecida Silva Siqueira', '12345678940', '1980-04-27', 'Avenida Brasil Leste N 1300 ', 'Passo Fundo', 'Rs', 812);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (845, 'Débora Cristina Alves Rita', '12345678941', '1983-11-09', 'Avenida Brasil Leste N 1310 ', 'Passo Fundo', 'Rs', 803);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (846, 'Lorena Fonseca Martins', '12345678942', '1986-04-16', 'Avenida Brasil Leste N 1320 ', 'Passo Fundo', 'Rs', 803);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (847, 'Letícia Maria Rosa Lima', '12345678943', '1989-12-06', 'Avenida Brasil Leste N 1330 ', 'Passo Fundo', 'Rs', 803);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (848, 'Lais Sousa Costa', '12345678944', '1991-03-27', 'Avenida Brasil Leste N 1340 ', 'Passo Fundo', 'Rs', 808);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (849, 'Ludmilla Vilas Boas Simoneti', '12345678945', '1981-05-23', 'Avenida Brasil Leste N 1350 ', 'Passo Fundo', 'Rs', 808);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (850, 'Laiza Marie Roldao', '12345678946', '1983-05-11', 'Avenida Borges de Medeiros N 115', 'Santa Maria', 'Rs', 808);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (851, 'Wanessa Danielly Fernandes', '12345678947', '1983-12-11', 'Avenida Borges de Medeiros N 125', 'Santa Maria', 'Rs', 808);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (852, 'Sandro Mayrink Paula', '12345678948', '1987-05-14', 'Avenida Borges de Medeiros N 135', 'Santa Maria', 'Rs', 813);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (853, 'Duíllio Tomaz Silva', '12345678949', '1987-07-28', 'Avenida Borges de Medeiros N 145', 'Santa Maria', 'Rs', 813);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (854, 'Paulo Victor Machado Prado', '12345678950', '1989-12-16', 'Avenida Borges de Medeiros N 155', 'Santa Maria', 'Rs', 813);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (855, 'Eden Vilarinho Costa Junior', '12345678951', '1993-10-08', 'Avenida Borges de Medeiros N 165', 'Santa Maria', 'Rs', 804);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (856, 'Lidiane Margarida Do Carmo', '12345678952', '1982-05-16', 'Avenida Borges de Medeiros N 175', 'Santa Maria', 'Rs', 804);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (857, 'Ricardo Marcelo Mota Filho', '12345678953', '1990-03-18', 'Avenida Borges de Medeiros N 185', 'Santa Maria', 'Rs', 804);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (858, 'Rafael Henrique Araujo Dos Reis', '12345678954', '1985-02-07', 'Avenida Borges de Medeiros N 195', 'Santa Maria', 'Rs', 809);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (859, 'Amon Ribeiro Lopes', '12345678955', '1990-04-25', 'Avenida Borges de Medeiros N 205', 'Santa Maria', 'Rs', 809);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (860, 'Angelo Alves Ferreira Júnior', '12345678956', '1991-09-04', 'Avenida Borges de Medeiros N 215', 'Santa Maria', 'Rs', 809);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (861, 'Francisco Assis Miguel Jardine', '12345678957', '1994-01-10', 'Avenida Borges de Medeiros N 225', 'Santa Maria', 'Rs', 814);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (862, 'Gledmar Pires De Moura', '12345678958', '1994-05-14', 'Avenida Borges de Medeiros N 235', 'Santa Maria', 'Rs', 814);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (863, 'Wilza Assuncao Braz', '12345678959', '1971-11-15', 'Avenida Borges de Medeiros N 245', 'Santa Maria', 'Rs', 814);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (864, 'Cleo Custodio Ferreira', '12345678960', '1982-08-16', 'Avenida Borges de Medeiros N 255', 'Santa Maria', 'Rs', 814);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (905, 'Laura Luna Oliveira', '22386426920', '1994-07-23', 'Rua Izidoro Cunha', 'Blumenau', 'SC', 900);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (906, 'Isabelle Pietra Pinto', '70573760900', '1989-03-23', 'Rua José Deeke', 'Blumenau', 'SC', 901);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (907, 'Tomás Miguel Rocha', '80078358906', '1964-01-12', 'Rua Benigno Joaquim dos Santos', 'Blumenau', 'SC', 902);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (908, 'Heitor Cauã de Paula', '33739746904', '1991-03-03', 'Rua Nordeste', 'Blumenau', 'SC', 903);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (909, 'Luiza Flávia Rodrigues', '68898220995', '1978-08-16', 'Rua Antônio Pedro Alves', 'Blumenau', 'SC', 904);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1100, 'Neymar Jr', '73405243041', '1986-12-17', 'Rua Santa Catarina', 'Porto Nacional', 'TO', 1100);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1101, 'Luis Suarez', '53467736068', '1988-05-25', 'Rua do Carteiro', 'Palmas', 'TO', 1100);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1102, 'Andres Iniesta', '29984302016', '1987-04-12', 'Rua da Cozinheira', 'Araguaina', 'TO', 1101);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1103, 'Ivan Rakitic', '28839881964', '1990-06-29', 'Rua do Mecanico', 'Gurupi', 'TO', 1101);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1104, 'Jordi Alba', '22267918412', '1980-10-29', 'Rua do Funcionario', 'Colinas do Tocantins', 'TO', 1102);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1105, 'Marc Andre Ter Stegen', '43390845810', '1990-12-01', 'Rua do Cobrador', 'Augustinopolis', 'TO', 1102);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1106, 'Daniel Alves', '38104193970', '1979-01-31', 'Rua do Motorista', 'Axixa do Tocantins', 'TO', 1103);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1107, 'Rafinha', '89917571035', '1989-02-28', 'Rua da Manicure', 'Mateiros', 'TO', 1103);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1108, 'Arda Turan', '01541771990', '1991-03-09', 'Rua do Psicologo', 'Abreulandia', 'TO', 1104);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1109, 'Douglas', '89180090460', '1992-06-26', 'Rua do Psiquiatra', 'Campos Lindos', 'TO', 1104);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1110, 'Marco Reus', '02725651999', '1990-09-26', 'Rua da Faxineira', 'Conceicao do Tocantins', 'TO', 1105);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1111, 'Pierre-Emerick Aubameyang', '08991927777', '1990-06-03', 'Rua do Garcom', 'Cristalandia', 'TO', 1105);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1112, 'Shinji Kagawa', '69780496114', '1987-12-28', 'Rua do Cliente', 'Cariri do Tocantins', 'TO', 1100);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1300, 'Luiz', '07069859406', '1991-01-01', 'Rua', 'Porto Velho', 'RO', 1300);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1301, 'Marcelo', '85117398408', '1992-02-02', 'Rua Dom', 'Porto Velho', 'RO', 1301);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1302, 'Pedro', '52516341610', '1993-03-03', 'Rua Dom Pedro', 'Porto Velho', 'RO', 1302);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1303, 'Steffan', '56641324427', '1994-04-04', 'Rua Dom Pedro I', 'Porto Velho', 'RO', 1303);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1304, 'Heitor', '16581815730', '1995-05-05', 'Rua Dom Pedro II', 'Porto Velho', 'RO', 1304);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1750, 'Carlos Eduardo', '25612054235', '1990-06-21', 'Rua Rezende', 'Sao Paulo', 'SP', 1720);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1751, 'Claudio Nascimento', '20358425120', '1988-04-15', 'Rua do Barreiro', 'Sertaozinho', 'SP', 1721);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1752, 'Alexandre Pereira', '20579635842', '1991-02-03', 'Rua Martinesia', 'Sao Paulo', 'SP', 1722);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1758, 'Isabella Gontijo', '03585695235', '1989-08-06', 'Rua das Palmas', 'Belo Horizonte', 'MG', 1728);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1759, 'Sandra Cristina', '21896358420', '1992-11-25', 'Avenida Joao Naves de Avila', 'Uberlandia', 'MG', 1729);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1600, 'Abílio Guedes', '06041324922', '1981-06-03', 'Rua 1', 'SAO PAULO', 'SP', 1600);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1601, 'Acacio Estrella', '05951323916', '1981-06-27', 'Rua 2', 'SAO PAULO', 'SP', 1601);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1602, 'Acacio Vianna', '00667008098', '1981-07-21', 'Rua 3', 'SAO PAULO', 'SP', 1602);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1603, 'Adelino Benevides', '03846532940', '1982-04-27', 'Rua 4', 'SAO PAULO', 'SP', 1603);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1604, 'Ajuricaba Braga', '05584583944', '1982-10-31', 'Rua 5', 'SAO PAULO', 'SP', 1604);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1605, 'Alarico Vieira', '02256619931', '1982-12-28', 'Rua 6', 'SAO PAULO', 'SP', 1605);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1606, 'Aleixo Moura', '14176777915', '1983-02-07', 'Rua 7', 'SAO PAULO', 'SP', 1606);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1607, 'Almerinda Villar', '39311481068', '1983-05-03', 'Rua 8', 'SAO PAULO', 'SP', 1607);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1608, 'Aluísio Pessanha', '01953352952', '1983-07-09', 'Rua 9', 'SAO PAULO', 'SP', 1608);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1609, 'André Pais', '04788758946', '1983-07-17', 'Rua 10', 'SAO PAULO', 'SP', 1609);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1610, 'Aniano Garrau', '00755634950', '1983-07-29', 'Rua 11', 'SAO PAULO', 'SP', 1610);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1611, 'Augusta Camacho', '00935847928', '1983-09-24', 'Rua 12', 'SAO PAULO', 'SP', 1611);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1612, 'Baltasar Marino', '06126726979', '1983-11-11', 'Rua 13', 'SAO PAULO', 'SP', 1612);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1613, 'Belmiro Prado', '05227932905', '1984-01-13', 'Rua 14', 'SAO PAULO', 'SP', 1613);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1614, 'Bernardete Mourão', '81309368520', '1984-04-18', 'Rua 15', 'SAO PAULO', 'SP', 1614);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1615, 'Bernardina Duarte', '03503396942', '1985-02-25', 'Rua 16', 'SAO PAULO', 'SP', 1615);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1616, 'Blasco Antúnez', '04706362970', '1985-04-22', 'Rua 17', 'SAO PAULO', 'SP', 1616);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1617, 'Branca Diniz', '04821578956', '1985-06-03', 'Rua 18', 'SAO PAULO', 'SP', 1617);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1618, 'Bukake Jesus', '00782528066', '1985-12-04', 'Rua 19', 'SAO PAULO', 'SP', 1618);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1619, 'Carmem Campelo', '04811057945', '1986-01-08', 'Rua 20', 'SAO PAULO', 'SP', 1619);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1620, 'Casimiro Mattos', '05879924920', '1986-01-11', 'Rua 21', 'SAO PAULO', 'SP', 1620);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1621, 'Cauê Cintra', '00483754978', '1986-03-15', 'Rua 22', 'SAO PAULO', 'SP', 1621);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1622, 'Celso Alves', '05469950980', '1986-05-24', 'Rua 23', 'SAO PAULO', 'SP', 1622);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1623, 'Celso Sousa', '48752703053', '1986-07-21', 'Rua 24', 'SAO PAULO', 'SP', 1623);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1624, 'Clotilde Ríos', '06068223990', '1986-08-05', 'Rua 25', 'SAO PAULO', 'SP', 1624);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1625, 'Célia Álvarez', '35305410959', '1981-06-03', 'Rua 26', 'SAO PAULO', 'SP', 1625);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1626, 'Deise Trindade', '00045847916', '1981-06-27', 'Rua 27', 'SAO PAULO', 'SP', 1626);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1627, 'Derli Guerra', '83885099004', '1981-07-21', 'Rua 28', 'SAO PAULO', 'SP', 1627);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1628, 'Diodete Figueiredo', '04910596984', '1982-04-27', 'Rua 29', 'SAO PAULO', 'SP', 1628);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1629, 'Diodete Leça', '06635721932', '1982-10-31', 'Rua 30', 'SAO PAULO', 'SP', 1629);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1630, 'Dulce Chousa', '07084631933', '1982-12-28', 'Rua 31', 'SAO PAULO', 'SP', 1630);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1631, 'Dulce Ferreira', '04669206958', '1983-02-07', 'Rua 32', 'SAO PAULO', 'SP', 1631);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1632, 'Délio Candal', '00646419960', '1983-05-03', 'Rua 33', 'SAO PAULO', 'SP', 1632);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1633, 'Edgar Frois', '04061328956', '1983-07-09', 'Rua 34', 'SAO PAULO', 'SP', 1633);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1634, 'Emília Canejo', '03235925970', '1983-07-17', 'Rua 35', 'SAO PAULO', 'SP', 1634);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1635, 'Eva Bulhão', '04448066959', '1983-07-29', 'Rua 36', 'SAO PAULO', 'SP', 1635);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1636, 'Faustino Pedrozo', '04136509952', '1983-09-24', 'Rua 37', 'SAO PAULO', 'SP', 1636);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1637, 'Feliciano Moutinho', '04764612941', '1983-11-11', 'Rua 38', 'SAO PAULO', 'SP', 1637);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1638, 'Fernão Butantã', '94832480600', '1984-01-13', 'Rua 39', 'SAO PAULO', 'SP', 1638);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1639, 'Filena Guerra', '98109758053', '1984-04-18', 'Rua 40', 'SAO PAULO', 'SP', 1639);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1640, 'Floripes Suaçuna', '53042891968', '1985-02-25', 'Rua 41', 'SAO PAULO', 'SP', 1640);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1641, 'Flávia Pavía', '06318824995', '1985-04-22', 'Rua 42', 'SAO PAULO', 'SP', 1641);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1642, 'Frederica Cabreira', '82840059053', '1985-06-03', 'Rua 43', 'SAO PAULO', 'SP', 1642);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1643, 'Frutuoso Suaçuna', '06439009931', '1985-12-04', 'Rua 44', 'SAO PAULO', 'SP', 1643);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1644, 'Genoveva Uchoa', '04239344905', '1986-01-08', 'Rua 45', 'SAO PAULO', 'SP', 1644);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1645, 'Son Goku', '06616573966', '1986-01-11', 'Rua 46', 'SAO PAULO', 'SP', 1645);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1646, 'Graça Vale', '05850348930', '1986-03-15', 'Rua 47', 'SAO PAULO', 'SP', 1646);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1647, 'Guilherme Antunes', '05441620994', '1986-05-24', 'Rua 48', 'SAO PAULO', 'SP', 1647);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1648, 'Hugo Sosa', '05367539971', '1986-07-21', 'Rua 49', 'SAO PAULO', 'SP', 1648);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1649, 'Hélder Morais', '05099207995', '1986-08-05', 'Rua 50', 'SAO PAULO', 'SP', 1649);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1650, 'Ilídio Bernardes', '00792737938', '1981-06-03', 'Rua 51', 'SAO PAULO', 'SP', 1650);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1651, 'Irene Guerrero', '04791470940', '1981-06-27', 'Rua 52', 'SAO PAULO', 'SP', 1651);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1652, 'Isilda Prado', '92366236972', '1981-07-21', 'Rua 53', 'SAO PAULO', 'SP', 1652);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1653, 'Ivete Rosa', '05362772902', '1982-04-27', 'Rua 54', 'SAO PAULO', 'SP', 1653);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1654, 'Jordana Gaspar', '04325317937', '1982-10-31', 'Rua 55', 'SAO PAULO', 'SP', 1654);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1655, 'Jordana Oliveira', '04588506919', '1982-12-28', 'Rua 56', 'SAO PAULO', 'SP', 1655);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1656, 'Jordão Tabalipa', '04908484945', '1983-02-07', 'Rua 57', 'SAO PAULO', 'SP', 1656);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1657, 'Lineu Mansilla', '30860954072', '1983-05-03', 'Rua 58', 'SAO PAULO', 'SP', 1657);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1658, 'Lopo Vidigal', '05545845909', '1983-07-09', 'Rua 59', 'SAO PAULO', 'SP', 1658);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1659, 'Luzia Ferro', '05250008950', '1983-07-17', 'Rua 60', 'SAO PAULO', 'SP', 1659);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1660, 'Magda Fitas', '02684397961', '1983-07-29', 'Rua 61', 'SAO PAULO', 'SP', 1660);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1661, 'Mamede Saldaña', '04778738985', '1983-09-24', 'Rua 62', 'SAO PAULO', 'SP', 1661);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1662, 'Marli Tupinambá', '95026959920', '1983-11-11', 'Rua 63', 'SAO PAULO', 'SP', 1662);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1663, 'Matias Travassos', '00486693937', '1984-01-13', 'Rua 64', 'SAO PAULO', 'SP', 1663);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1664, 'Melissa Jiménez', '06335200988', '1984-04-18', 'Rua 65', 'SAO PAULO', 'SP', 1664);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1665, 'Micaela Bugallo', '04557798993', '1985-02-25', 'Rua 66', 'SAO PAULO', 'SP', 1665);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1666, 'Micaela Ferrera', '05159721932', '1985-04-22', 'Rua 67', 'SAO PAULO', 'SP', 1666);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1667, 'Milu Diegues', '03276618958', '1985-06-03', 'Rua 68', 'SAO PAULO', 'SP', 1667);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1668, 'Máxima Cotegipe', '05700395924', '1985-12-04', 'Rua 69', 'SAO PAULO', 'SP', 1668);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1669, 'Natália Viveros', '77768035968', '1986-01-08', 'Rua 70', 'SAO PAULO', 'SP', 1669);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1670, 'Nelson Martínez', '29577233953', '1986-01-11', 'Rua 71', 'SAO PAULO', 'SP', 1670);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1671, 'Nilza Freiria', '06462560924', '1986-03-15', 'Rua 72', 'SAO PAULO', 'SP', 1671);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1672, 'Nivaldo Gomes', '04832707922', '1986-05-24', 'Rua 73', 'SAO PAULO', 'SP', 1672);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1673, 'Otília Trindade', '05647675905', '1986-07-21', 'Rua 74', 'SAO PAULO', 'SP', 1673);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1674, 'Paulo Loio', '00991591984', '1986-08-05', 'Rua 75', 'SAO PAULO', 'SP', 1674);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1675, 'Peri Coito', '03132341916', '1981-06-03', 'Rua 76', 'SAO PAULO', 'SP', 1675);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1676, 'Quintiliana Vieira', '05572563994', '1981-06-27', 'Rua 77', 'SAO PAULO', 'SP', 1676);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1677, 'Quintiliano Malheiro', '03655964935', '1981-07-21', 'Rua 78', 'SAO PAULO', 'SP', 1677);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1678, 'Quintilien Chávez', '01226243002', '1982-04-27', 'Rua 79', 'SAO PAULO', 'SP', 1678);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1679, 'Raquel Madureira', '03978509997', '1982-10-31', 'Rua 80', 'SAO PAULO', 'SP', 1679);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1680, 'Raul Varejão', '07274654900', '1982-12-28', 'Rua 81', 'SAO PAULO', 'SP', 1680);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1681, 'Renato Balladares', '85396036915', '1983-02-07', 'Rua 82', 'SAO PAULO', 'SP', 1681);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1682, 'Rodrigo Sabrosa', '07303071903', '1983-05-03', 'Rua 83', 'SAO PAULO', 'SP', 1682);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1683, 'Roquita Ramírez', '67982921949', '1983-07-09', 'Rua 84', 'SAO PAULO', 'SP', 1683);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1684, 'Rui Varanda', '06954374962', '1983-07-17', 'Rua 85', 'SAO PAULO', 'SP', 1684);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1685, 'Sabrina Machado', '54816360930', '1983-07-29', 'Rua 86', 'SAO PAULO', 'SP', 1685);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1686, 'Sidônio Mascarenhas', '03424042960', '1983-09-24', 'Rua 87', 'SAO PAULO', 'SP', 1686);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1687, 'Simone Gameiro', '01854777980', '1983-11-11', 'Rua 88', 'SAO PAULO', 'SP', 1687);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1688, 'Solange Saldanha', '01983609919', '1984-01-13', 'Rua 89', 'SAO PAULO', 'SP', 1688);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1689, 'Solange Sales', '01985066947', '1984-04-18', 'Rua 90', 'SAO PAULO', 'SP', 1689);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1690, 'Teresina Oliveira', '09299878960', '1985-02-25', 'Rua 91', 'SAO PAULO', 'SP', 1690);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1691, 'Tibúrcio Cirne', '03199033970', '1985-04-22', 'Rua 92', 'SAO PAULO', 'SP', 1691);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1692, 'Tobias Belo', '07765605909', '1985-06-03', 'Rua 93', 'SAO PAULO', 'SP', 1692);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1693, 'Tânia Ignacio', '06650278939', '1985-12-04', 'Rua 94', 'SAO PAULO', 'SP', 1693);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1694, 'Valentina Correia', '03088055933', '1986-01-08', 'Rua 95', 'SAO PAULO', 'SP', 1694);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1695, 'Sebastien Lefebvre', '04369835917', '1986-01-11', 'Rua 96', 'SAO PAULO', 'SP', 1695);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1696, 'David Desrosiers', '46852670600', '1986-03-15', 'Rua 97', 'SAO PAULO', 'SP', 1696);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1697, 'Charles Andrea Comeau', '27800866610', '1986-05-24', 'Rua 98', 'SAO PAULO', 'SP', 1697);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1698, 'Jean Francois Stinco', '55734755842', '1986-07-21', 'Rua 99', 'SAO PAULO', 'SP', 1698);
INSERT INTO cliente (id, nome, cpf, data_nasc, endereco, cidade, estado, gerente) VALUES (1699, 'Pierre Bouvier', '23283531692', '1986-08-05', 'Rua 100', 'SAO PAULO', 'SP', 1699);


--
-- TOC entry 2046 (class 0 OID 290261)
-- Dependencies: 179
-- Data for Name: clienteconta; Type: TABLE DATA; Schema: banco; Owner: postgres
--

INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1, '1324', 993005);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (2, '0706', 993997);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (3, '1323', 908837);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (4, '3928', 997790);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (5, '0743', 899769);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (100, '1792', 199);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (101, '3075', 198);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (102, '1797', 197);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (103, '0775', 196);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (104, '1808', 195);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (701, '2918', 703);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (702, '1221', 704);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (703, '1001', 701);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (704, '1221', 702);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (705, '5874', 700);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (815, '2794', 27100);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (816, '2794', 27101);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (817, '2794', 27102);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (818, '2794', 27103);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (819, '2794', 27104);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (820, '2794', 27105);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (821, '2794', 27106);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (822, '2794', 27107);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (823, '2794', 27108);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (824, '2794', 27109);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (825, '2794', 27110);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (826, '3536', 35600);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (827, '3536', 35601);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (828, '3536', 35602);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (829, '3536', 35603);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (830, '3536', 35604);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (831, '3536', 35605);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (832, '3536', 35606);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (833, '3536', 35607);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (834, '3536', 35608);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (835, '3536', 35609);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (836, '3536', 35610);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (837, '3536', 35611);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (838, '3534', 35400);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (839, '3534', 35401);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (840, '3534', 35402);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (841, '3534', 35403);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (842, '3534', 35404);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (843, '3534', 35405);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (844, '3534', 35406);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (845, '3534', 35407);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (846, '3534', 35408);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (847, '3534', 35409);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (848, '3534', 35410);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (849, '3534', 35411);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (850, '2692', 26900);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (851, '2692', 26901);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (852, '2692', 26902);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (853, '2692', 26903);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (854, '2692', 26904);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (855, '2692', 26905);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (856, '2692', 26906);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (857, '2692', 26907);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (858, '2692', 26908);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (859, '2692', 26909);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (860, '2692', 26910);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (861, '2692', 26911);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (862, '1484', 14800);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (863, '1484', 14801);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (864, '1484', 14802);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (825, '1484', 14803);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (837, '1484', 14804);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (849, '1484', 14805);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (861, '1484', 14806);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (864, '1484', 14807);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (835, '1484', 14808);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (819, '1484', 14809);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (844, '1484', 14810);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (836, '1484', 14811);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (837, '1484', 14812);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (905, '0095', 123);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (906, '0128', 456);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (907, '0411', 789);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (908, '7134', 321);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (909, '1232', 987);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1100, '1100', 1100);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1100, '1101', 1100);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1101, '1102', 1100);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1101, '1103', 1100);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1102, '1104', 1100);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1102, '1100', 1101);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1103, '1101', 1101);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1103, '1102', 1101);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1104, '1103', 1101);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1104, '1104', 1101);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1105, '1100', 1102);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1105, '1101', 1102);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1106, '1102', 1102);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1106, '1103', 1102);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1107, '1104', 1102);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1107, '1100', 1103);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1108, '1101', 1103);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1108, '1102', 1103);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1109, '1103', 1103);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1109, '1104', 1103);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1110, '1100', 1104);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1110, '1101', 1104);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1111, '1102', 1104);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1111, '1103', 1104);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1112, '1104', 1104);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1300, '1300', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1301, '1301', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1302, '1302', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1303, '1303', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1304, '1304', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1750, '1701', 1789);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1751, '1707', 1799);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1752, '1710', 1788);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1758, '1708', 1798);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1759, '1709', 1777);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1600, '1600', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1601, '1601', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1602, '1602', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1603, '1603', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1604, '1604', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1605, '1605', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1606, '1606', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1607, '1607', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1608, '1608', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1609, '1609', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1610, '1610', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1611, '1611', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1612, '1612', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1613, '1613', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1614, '1614', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1615, '1615', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1616, '1616', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1617, '1617', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1618, '1618', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1619, '1619', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1620, '1620', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1621, '1621', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1622, '1622', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1623, '1623', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1624, '1624', 1);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1625, '1600', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1626, '1601', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1627, '1602', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1628, '1603', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1629, '1604', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1630, '1605', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1631, '1606', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1632, '1607', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1633, '1608', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1634, '1609', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1635, '1610', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1636, '1611', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1637, '1612', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1638, '1613', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1639, '1614', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1640, '1615', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1641, '1616', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1642, '1617', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1643, '1618', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1644, '1619', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1645, '1620', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1646, '1621', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1647, '1622', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1648, '1623', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1649, '1624', 2);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1650, '1600', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1651, '1601', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1652, '1602', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1653, '1603', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1654, '1604', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1655, '1605', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1656, '1606', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1657, '1607', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1658, '1608', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1659, '1609', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1660, '1610', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1661, '1611', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1662, '1612', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1663, '1613', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1664, '1614', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1665, '1615', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1666, '1616', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1667, '1617', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1668, '1618', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1669, '1619', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1670, '1620', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1671, '1621', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1672, '1622', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1673, '1623', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1674, '1624', 3);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1675, '1600', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1676, '1601', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1677, '1602', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1678, '1603', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1679, '1604', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1680, '1605', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1681, '1606', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1682, '1607', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1683, '1608', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1684, '1609', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1685, '1610', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1686, '1611', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1687, '1612', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1688, '1613', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1689, '1614', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1690, '1615', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1691, '1616', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1692, '1617', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1693, '1618', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1694, '1619', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1695, '1620', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1696, '1621', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1697, '1622', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1698, '1623', 4);
INSERT INTO clienteconta (id_cliente, cod_agencia, numero_conta) VALUES (1699, '1624', 4);


--
-- TOC entry 2044 (class 0 OID 290241)
-- Dependencies: 177
-- Data for Name: conta; Type: TABLE DATA; Schema: banco; Owner: postgres
--

INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('0743', 899769, 1400.00, '2016-07-05');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3928', 997790, 873.40, '2016-09-23');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1323', 908837, 5239.00, '2015-02-10');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('0706', 993997, 100.00, '2016-09-26');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1324', 993005, 350.00, '2016-09-26');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1792', 199, 6303.17, '2016-09-28');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3075', 198, 6675.36, '2016-08-14');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1797', 197, 5361.79, '2016-12-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('0775', 196, 36.39, '2016-05-23');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1808', 195, 1040.39, '2016-08-22');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('5874', 700, 12000.23, '2016-09-23');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1001', 701, 1000012000.32, '2016-08-19');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1221', 702, 10000000.55, '2016-10-02');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2918', 703, 99999999.99, '2016-10-01');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1221', 704, 120005555.99, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2794', 27100, 123.45, '2016-02-12');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2794', 27101, 154574.12, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2794', 27102, 15479.21, '2016-09-26');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2794', 27103, 154547.66, '2016-09-24');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2794', 27104, 1212121.45, '2016-08-10');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2794', 27105, 152457.32, '2015-01-11');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2794', 27106, 11546.15, '2014-07-22');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2794', 27107, 321584.00, '2014-11-23');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2794', 27108, 154684.32, '2014-07-22');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2794', 27109, 78263.32, '2014-11-23');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2794', 27110, 21256464.14, '2016-02-12');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3536', 35600, 16148.14, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3536', 35601, 14565.32, '2016-09-24');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3536', 35602, 112.23, '2016-08-10');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3536', 35603, 14563.34, '2015-01-11');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3536', 35604, 454.52, '2014-07-22');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3536', 35605, 18466.58, '2014-11-23');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3536', 35606, 2316.26, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3536', 35607, 2215.52, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3536', 35608, 23215936.36, '2016-02-12');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3536', 35609, 123.45, '2014-07-22');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3536', 35610, 154574.12, '2014-11-23');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3536', 35611, 15479.20, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3534', 35400, 154547.66, '2016-09-24');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3534', 35401, 1212121.45, '2016-08-10');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3534', 35402, 152457.32, '2015-01-11');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3534', 35403, 11546.15, '2014-07-22');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3534', 35404, 321584.10, '2014-11-23');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3534', 35405, 154684.32, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3534', 35406, 78263.32, '2016-09-24');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3534', 35407, 21256464.14, '2016-08-10');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3534', 35408, 16148.14, '2015-01-11');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3534', 35409, 14565.32, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3534', 35410, 112.23, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('3534', 35411, 14563.34, '2014-07-22');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2692', 26900, 454.52, '2014-11-23');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2692', 26901, 18466.58, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2692', 26902, 2316.26, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2692', 26903, 2215.52, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2692', 26904, 23215936.36, '2014-07-22');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2692', 26905, 123.45, '2014-11-23');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2692', 26906, 154574.12, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2692', 26907, 15479.29, '2016-09-24');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2692', 26908, 154547.66, '2016-08-10');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2692', 26909, 1212121.45, '2015-01-11');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2692', 26910, 152457.32, '2014-07-22');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('2692', 26911, 11546.15, '2014-11-23');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14800, 321584.00, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14801, 154684.32, '2014-07-22');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14802, 78263.32, '2014-11-23');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14803, 21256464.14, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14804, 16148.14, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14805, 14565.32, '2016-09-24');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14806, 112.23, '2016-08-10');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14807, 14563.34, '2015-01-11');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14808, 454.52, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14809, 18466.58, '2016-09-24');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14810, 2316.26, '2016-08-10');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14811, 2215.52, '2015-01-11');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1484', 14812, 23215936.36, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('0095', 123, 7000.00, '2016-09-28');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('0128', 456, 100.00, '2016-09-27');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('0411', 789, 2000.00, '2016-09-28');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('7134', 321, 469.04, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1232', 987, 982209.95, '2016-09-26');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1100', 1100, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1100', 1101, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1100', 1102, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1100', 1103, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1100', 1104, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1101', 1100, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1101', 1101, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1101', 1102, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1101', 1103, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1101', 1104, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1102', 1100, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1102', 1101, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1102', 1102, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1102', 1103, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1102', 1104, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1103', 1100, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1103', 1101, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1103', 1102, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1103', 1103, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1103', 1104, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1104', 1100, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1104', 1101, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1104', 1102, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1104', 1103, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1104', 1104, 3250.00, '2016-10-06');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1300', 1, 1000000000.00, '1991-01-01');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1301', 1, 1000000000.00, '1992-02-02');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1302', 1, 1000000000.00, '1993-03-03');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1303', 1, 1000000000.00, '1994-04-04');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1304', 1, 1000000000.00, '1995-05-05');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1701', 1789, 400.00, '2016-09-30');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1707', 1799, 498.25, '2016-09-30');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1710', 1788, 322.12, '2016-09-30');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1708', 1798, 500.98, '2016-09-30');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1709', 1777, 798.22, '2016-09-30');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1600', 1, 100.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1601', 1, 200.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1602', 1, 300.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1603', 1, 400.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1604', 1, 500.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1605', 1, 600.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1606', 1, 700.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1607', 1, 800.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1608', 1, 900.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1609', 1, 1000.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1610', 1, 1100.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1611', 1, 1200.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1612', 1, 1300.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1613', 1, 1400.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1614', 1, 1500.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1615', 1, 1600.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1616', 1, 1700.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1617', 1, 1800.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1618', 1, 1900.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1619', 1, 2000.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1620', 1, 2100.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1621', 1, 2200.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1622', 1, 2300.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1623', 1, 2400.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1624', 1, 2500.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1600', 2, 2600.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1601', 2, 2700.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1602', 2, 2800.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1603', 2, 2900.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1604', 2, 3000.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1605', 2, 3100.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1606', 2, 3200.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1607', 2, 3300.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1608', 2, 3400.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1609', 2, 3500.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1610', 2, 3600.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1611', 2, 3700.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1612', 2, 3800.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1613', 2, 3900.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1614', 2, 4000.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1615', 2, 4100.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1616', 2, 4200.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1617', 2, 4300.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1618', 2, 4400.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1619', 2, 4500.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1620', 2, 4600.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1621', 2, 4700.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1622', 2, 4800.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1623', 2, 4900.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1624', 2, 5000.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1600', 3, 5100.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1601', 3, 5200.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1602', 3, 5300.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1603', 3, 5400.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1604', 3, 5500.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1605', 3, 5600.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1606', 3, 5700.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1607', 3, 5800.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1608', 3, 5900.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1609', 3, 6000.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1610', 3, 6100.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1611', 3, 6200.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1612', 3, 6300.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1613', 3, 6400.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1614', 3, 6500.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1615', 3, 6600.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1616', 3, 6700.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1617', 3, 6800.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1618', 3, 6900.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1619', 3, 7000.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1620', 3, 7100.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1621', 3, 7200.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1622', 3, 7300.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1623', 3, 7400.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1624', 3, 7500.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1600', 4, 7600.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1601', 4, 7700.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1602', 4, 7800.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1603', 4, 7900.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1604', 4, 8000.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1605', 4, 8100.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1606', 4, 8200.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1607', 4, 8300.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1608', 4, 8400.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1609', 4, 8500.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1610', 4, 8600.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1611', 4, 8700.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1612', 4, 8800.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1613', 4, 8900.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1614', 4, 9000.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1615', 4, 9100.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1616', 4, 9200.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1617', 4, 9300.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1618', 4, 9400.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1619', 4, 9500.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1620', 4, 9600.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1621', 4, 9700.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1622', 4, 9800.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1623', 4, 9900.00, '2016-09-29');
INSERT INTO conta (cod_agencia, numero, saldo, ultimo_acesso) VALUES ('1624', 4, 10000.00, '2016-09-29');


--
-- TOC entry 2042 (class 0 OID 290216)
-- Dependencies: 175
-- Data for Name: dependentes; Type: TABLE DATA; Schema: banco; Owner: postgres
--

INSERT INTO dependentes (funcionario, nome_dependente) VALUES (3, 'Rodney Alves');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (2, 'Mateus Felipe');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (5, 'Carlos Eduardo');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1, 'Jonas Augusto');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (4, 'Danilo Borges');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (100, '﻿Diego Castro');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (101, 'Laura Martins');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (102, 'Maria Cavalcanti');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (103, 'Gabrielle Barros');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (104, 'Amanda Fernandes');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (700, 'Camila Almeida');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (701, 'Vanessa Tavares');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (702, 'Felipe Amaral');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (703, 'Joao do Pulo');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (704, 'Willian Alves');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (800, 'Mariana Oliveira');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (801, 'Kauã Naves');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (802, 'Eliane Aparecida');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (802, 'Pedro Dias');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (804, 'Ana Laura de Almeida');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (900, 'Elisa Caroline Araújo');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (901, 'Lara Juliana Lorena de Paula');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (902, 'Nicole Brenda Barros');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (903, 'Heloisa Juliana da Silva');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (904, 'Julia Mirella Souza');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1100, 'Kevin De Bruyne');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1100, 'David Silva');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1101, 'Joe Hart');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1101, 'Vincent Kompany');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1102, 'Nicolas Otamendi');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1102, 'Bacary Sagna');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1103, 'Gael Clichy');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1103, 'Fernandinho');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1104, 'Yaya Toure');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1104, 'Sergio Aguero');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1105, 'Kelechi Iheanacho');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1105, 'Ikay Gundogan');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1300, 'Caio');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1301, 'Rafael');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1302, 'Josino');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1303, 'Gabriel');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1304, 'Thiago');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1720, 'Roberto Alvarez');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1721, 'Paula Siqueira');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1722, 'Igor Motta');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1728, 'Bruno Roberto');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1729, 'Matheus Dias');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1600, 'Abigail Casalinho');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1601, 'Adelaide Barroqueiro');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1602, 'Adosindo Alancastro');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1603, 'Aida Zagalo');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1604, 'Alcides Gentil');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1605, 'Aleixo Herrera');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1606, 'Aniana Cachão');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1607, 'Antão Soeiro');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1608, 'Aníbal Silva');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1609, 'Apoena Villar');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1610, 'Augusta Fonseca');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1611, 'Baltasar Carneiro');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1612, 'Bernardino Otero');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1613, 'Blasco Cesário');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1614, 'Boaventura Rodrigues');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1615, 'Burtira Pereira');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1616, 'Bárbara Vellozo');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1617, 'Capitolina Louzada');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1618, 'Catarino Almeida');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1619, 'Cecília Villar');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1620, 'Comecus Vasconcellos');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1621, 'Dinarte Espírito Santo');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1622, 'Dorindo Villela');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1623, 'Dulce Palha');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1624, 'Elba Lobato');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1625, 'Eládio Ornelas');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1626, 'Emílio Taperebá');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1627, 'Ernesto Pozas');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1628, 'Eunice Torrado');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1629, 'Evangelista Antas');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1630, 'Ezequiel Portela');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1631, 'Fabiano Grangeia');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1632, 'Feliciano Palmeira');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1633, 'Filipa Amarante');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1634, 'Florbela Gracia');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1635, 'Genoveva García');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1636, 'Gertrudes Marcondes');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1637, 'Giovana Quinterno');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1638, 'Honorina Ventura');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1639, 'Horácio Quinzeiro');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1640, 'Ilídio Ataí');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1641, 'Iraci Vilhena');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1642, 'Jadir Vega');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1643, 'Jamari Meirelles');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1644, 'Juliano Pamplona');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1645, 'Laura Tavera');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1646, 'Laurinda Carvalhaes');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1647, 'Leopoldina Morais');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1648, 'Lina Quadros');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1649, 'Lídia Castello Branco');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1650, 'Lígia Garcez');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1625, 'Efraim Ornelas');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1626, 'Jakquelini Taperebá');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1627, 'Ricardo Pozas');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1628, 'Vanderlei Torrado');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1629, 'Ana Paula Antas');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1630, 'Debora Portela');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1631, 'Monalisa Grangeia');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1632, 'Geraldo Palmeira');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1633, 'Juliana Amarante');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1634, 'Nayani Gracia');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1635, 'Aniangeles García');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1636, 'Leila Marcondes');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1637, 'José Quinterno');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1638, 'Paulo Ventura');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1639, 'Wander Quinzeiro');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1640, 'Mariana Ataí');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1641, 'Jule Vilhena');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1642, 'Jéssica Vega');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1643, 'Jéssyca Meirelles');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1644, 'Lorena Pamplona');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1645, 'Fernanda Tavera');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1646, 'Horácio Carvalhaes');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1647, 'Daniel Morais');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1648, 'Lino Quadros');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1649, 'Matthew Castello Branco');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1650, 'Dominic Garcez');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1651, 'Lília Paranaguá');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1652, 'Marlene Anlicoara');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1653, 'Matias Villas Boas');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1654, 'Maíra Dutra');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1655, 'Melissa Lima');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1656, 'Mem Domingos');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1657, 'Miguelina Brites');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1658, 'Mileide Mortágua');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1659, 'Minervina Toledo');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1660, 'Moaci Chousa');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1661, 'Márcia Mangueira');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1662, 'Máxima Reyes');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1663, 'Máximo Arantes');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1664, 'Neuza Travassos');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1665, 'Nídia Cavadas');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1666, 'Oriana Monforte');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1667, 'Palmira Negromonte');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1668, 'Piedade Jucá');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1669, 'Piedade Lira');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1670, 'Piedade Garcés');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1671, 'Plácido Brião');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1672, 'Potira Valido');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1673, 'Querubim Moita');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1674, 'Raimundo Caminha');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1651, 'Anderson Paranaguá');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1652, 'Lélio Anlicoara');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1653, 'Tainá Villas Boas');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1654, 'Analinda Dutra');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1655, 'Cássia Lima');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1656, 'Christopher Domingos');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1657, 'Dom Brites');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1658, 'Chris Mortágua');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1659, 'Matt Toledo');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1660, 'Hector Chousa');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1661, 'Fabrício Mangueira');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1662, 'Neuler Reyes');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1663, 'Neuber Arantes');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1664, 'Gislaine Travassos');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1665, 'Rodolfo Cavadas');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1666, 'Kleverson Monforte');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1667, 'Paula Negromonte');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1668, 'Jussara Jucá');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1669, 'Moisés Lira');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1670, 'Renato Garcés');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1671, 'Fausto Brião');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1672, 'Nikolas Valido');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1673, 'Diogo Moita');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1674, 'Matheus Caminha');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1651, 'Eli Paranaguá');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1652, 'Célia Anlicoara');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1653, 'Marta Villas Boas');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1654, 'Carlos Dutra');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1655, 'Joana Lima');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1656, 'Ephram Domingos');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1657, 'Kal-El Brites');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1658, 'Kárita Mortágua');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1659, 'Harry Toledo');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1660, 'Pedro Chousa');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1661, 'Marcelo Mangueira');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1662, 'Arthur Reyes');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1663, 'Sheila Arantes');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1664, 'Patrícia Travassos');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1665, 'Neide Cavadas');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1666, 'Cleber Monforte');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1667, 'Bruno Negromonte');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1668, 'Bruno Jucá');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1669, 'Bruno Lira');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1670, 'Bruna Garcés');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1671, 'Giselle Brião');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1672, 'Juliette Valido');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1673, 'Jefferson Moita');
INSERT INTO dependentes (funcionario, nome_dependente) VALUES (1674, 'Jordan Caminha');


--
-- TOC entry 2041 (class 0 OID 290201)
-- Dependencies: 174
-- Data for Name: funcionario; Type: TABLE DATA; Schema: banco; Owner: postgres
--

INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1, 'Thiago Moreira Borges', '3499696-5715', '1992-10-02', '1324', 4);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (2, 'Fabricio Ismael', '343213-3654', '2002-03-08', '0706', 3);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (3, 'Daniel Dias Alves', '3499191-5559', '2012-04-05', '1323', 2);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (4, 'Johnata Ferreira', '1699199-9965', '2016-03-12', '3928', 1);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (5, 'Jose Roberto', '1998884-1122', '2015-02-12', '0743', 5);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (100, '﻿Brenda Melo', '(81)47106478', '2003-05-14', '1792', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (101, 'Leonor Goncalves', '(11)38462353', '2009-06-14', '3075', 100);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (102, 'Luiz Cunha', '(16)42467196', '1996-05-04', '1797', 100);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (103, 'Carlos Sousa', '(11)68784656', '2008-02-15', '0775', 100);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (104, 'Paulo Barbosa', '(61)36375500', '2009-11-11', '1808', 100);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (700, 'Joao da Silva', '3236-6666', '2008-04-05', '1001', 700);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (701, 'Jose da Costa', '3236-6661', '2008-04-06', '5874', 701);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (702, 'Joaquim Nascimento', '3236-6662', '2009-03-12', '1221', 702);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (703, 'Francisco da Silva', '3236-6663', '2011-09-01', '2918', 703);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (704, 'Jair das Couves', '3236-6664', '1998-10-01', '2918', 703);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (800, 'Antonio Oliveira', '5133731888', '2004-05-01', '2794', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (801, 'Cesar Naves', '5133733488', '2004-05-01', '3536', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (802, 'Maria Aparecida', '5133731824', '2004-05-01', '3534', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (803, 'Evandro Santos', '5136731964', '2004-05-01', '2692', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (804, 'Flavia de Almeida', '51337457269', '2004-05-01', '1484', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (805, 'Gustavo Dias', '5133331211', '2004-05-01', '2794', 800);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (806, 'Sebastião José', '5138731954', '2004-05-01', '3536', 801);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (807, 'Ana Maria Matias', '5133761788', '2004-05-01', '3534', 802);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (808, 'Bruna Castro', '5133741898', '2004-05-01', '2692', 803);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (809, 'Hiago Cintra', '5133731883', '2004-05-01', '1484', 804);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (810, 'Thiago Nunes', '5133771866', '2004-05-01', '2794', 800);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (811, 'Alisson dos Reis', '5133741928', '2004-05-01', '3536', 801);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (812, 'Eduardo Oliveira', '5131733808', '2004-05-01', '3534', 802);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (813, 'Josiane Silva', '5133761180', '2004-05-01', '2692', 803);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (814, 'Natalia Araujo', '5133734981', '2004-05-01', '1484', 804);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (900, 'Lorenzo Breno Cauê Almeida', '2879-4480', '2010-07-23', '0095', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (901, 'Cauê Davi Enrico da Silva', '2920-3197', '2008-09-12', '0128', 900);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (902, 'Julio Igor Cauã Campos', '2815-0172', '2007-04-12', '0411', 900);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (903, 'Nicolas Breno Luan Moura', '2677-9919', '2006-06-12', '7134', 900);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (904, 'Miguel Ricardo Costa', '2867-3831', '2005-02-12', '1232', 900);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1100, 'Caio', '034984054487', '2016-10-06', '1100', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1101, 'Luiz', '034998765432', '2016-10-06', '1104', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1103, 'Carlos', '011965460653', '2016-10-06', '1103', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1105, 'Jose Roberto', '034991345263', '2016-10-06', '1101', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1104, 'Lionel Messi', '033984273847', '2016-10-06', '1102', 1100);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1102, 'Rafael', '064996782648', '2016-10-06', '1104', 1101);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1300, 'Arthur', '069911112222', '1991-01-01', '1300', 1304);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1301, 'Rhaniel', '069922223333', '1992-02-02', '1301', 1304);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1302, 'Jean', '069933334444', '1993-03-03', '1302', 1304);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1303, 'Sandro', '069944445555', '1994-04-04', '1303', 1304);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1304, 'Augusto', '069955556666', '1995-05-05', '1304', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1720, 'Lucas Rezende', '(34)32173342', '2016-01-08', '1701', 1720);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1721, 'Cristiane Dias', '(34)32509110', '2016-08-09', '1707', 1721);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1722, 'Paulo Roberto', '(34)99918275', '2015-01-12', '1710', 1722);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1728, 'Ricardo Filho', '(34)98562084', '2015-03-01', '1708', 1728);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1729, 'Maria da Silva', '(34)88452620', '2014-02-02', '1709', 1729);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1600, 'Adão Casalinho', '011999999900', '2011-06-03', '1600', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1601, 'Adélia Barroqueiro', '011999999901', '2011-06-27', '1601', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1602, 'Alarico Alancastro', '011999999902', '2011-07-21', '1602', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1603, 'Alcides Zagalo', '011999999903', '2012-04-27', '1603', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1604, 'Aluísio Gentil', '011999999904', '2012-10-31', '1604', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1605, 'Aluísio Herrera', '011999999905', '2012-12-28', '1605', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1606, 'Alvito Cachão', '011999999906', '2013-02-07', '1606', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1607, 'Amílcar Soeiro', '011999999907', '2013-05-03', '1607', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1608, 'Anhangüera Silva', '011999999908', '2013-07-09', '1608', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1609, 'Apoena Villar', '011999999909', '2013-07-17', '1609', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1610, 'Arcidres Fonseca', '011999999910', '2013-07-29', '1610', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1611, 'Arminda Carneiro', '011999999911', '2013-09-24', '1611', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1612, 'Baltasar Otero', '011999999912', '2013-11-11', '1612', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1613, 'Barnabé Cesário', '011999999913', '2014-01-13', '1613', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1614, 'Belmira Rodrigues', '011999999914', '2014-04-18', '1614', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1615, 'Bernardina Pereira', '011999999915', '2015-02-25', '1615', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1616, 'Bernardo Vellozo', '011999999916', '2015-04-22', '1616', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1617, 'Caetano Louzada', '011999999917', '2015-06-03', '1617', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1618, 'Camila Almeida', '011999999918', '2015-12-04', '1618', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1619, 'Caubi Villar', '011999999919', '2016-01-08', '1619', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1620, 'Celso Vasconcellos', '011999999920', '2016-01-11', '1620', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1621, 'Clarisse Espírito Santo', '011999999921', '2016-03-15', '1621', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1622, 'Claudemira Villela', '011999999922', '2016-05-24', '1622', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1623, 'Cosme Palha', '011999999923', '2016-07-21', '1623', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1624, 'Célia Lobato', '011999999924', '2016-08-05', '1624', NULL);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1625, 'Delfina Ornelas', '011999999925', '2011-06-03', '1600', 1600);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1626, 'Denise Taperebá', '011999999926', '2011-06-27', '1601', 1601);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1627, 'Diamantino Pozas', '011999999927', '2011-07-21', '1602', 1602);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1628, 'Dinarte Torrado', '011999999928', '2012-04-27', '1603', 1603);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1629, 'Domingos Antas', '011999999929', '2012-10-31', '1604', 1604);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1630, 'Dorindo Portela', '011999999930', '2012-12-28', '1605', 1605);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1631, 'Délio Grangeia', '011999999931', '2013-02-07', '1606', 1606);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1632, 'Eduardo Palmeira', '011999999932', '2013-05-03', '1607', 1607);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1633, 'Eloi Amarante', '011999999933', '2013-07-09', '1608', 1608);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1634, 'Emiliano Gracia', '011999999934', '2013-07-17', '1609', 1609);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1635, 'Emílio García', '011999999935', '2013-07-29', '1610', 1610);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1636, 'Epaminondas Marcondes', '011999999936', '2013-09-24', '1611', 1611);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1637, 'Eva Quinterno', '011999999937', '2013-11-11', '1612', 1612);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1638, 'Feliciana Ventura', '011999999938', '2014-01-13', '1613', 1613);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1639, 'Felícia Quinzeiro', '011999999939', '2014-04-18', '1614', 1614);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1640, 'Fernão Ataí', '011999999940', '2015-02-25', '1615', 1615);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1641, 'Filena Vilhena', '011999999941', '2015-04-22', '1616', 1616);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1642, 'Flamínia Vega', '011999999942', '2015-06-03', '1617', 1617);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1643, 'Flávia Meirelles', '011999999943', '2015-12-04', '1618', 1618);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1644, 'Fábio Pamplona', '011999999944', '2016-01-08', '1619', 1619);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1645, 'Gaspar Tavera', '011999999945', '2016-01-11', '1620', 1620);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1646, 'Gonçalo Carvalhaes', '011999999946', '2016-03-15', '1621', 1621);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1647, 'Guido Morais', '011999999947', '2016-05-24', '1622', 1622);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1648, 'Hipólito Quadros', '011999999948', '2016-07-21', '1623', 1623);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1649, 'Ildefonso Castello Branco', '011999999949', '2016-08-05', '1624', 1624);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1650, 'Jacinto Garcez', '011999999950', '2011-06-03', '1600', 1600);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1651, 'Janaína Paranaguá', '011999999951', '2011-06-27', '1601', 1601);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1652, 'Jorgina Anlicoara', '011999999952', '2011-07-21', '1602', 1602);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1653, 'Julieta Villas Boas', '011999999953', '2012-04-27', '1603', 1603);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1654, 'Laurinda Dutra', '011999999954', '2012-10-31', '1604', 1604);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1655, 'Laurinda Lima', '011999999955', '2012-12-28', '1605', 1605);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1656, 'Liedson Domingos', '011999999956', '2013-02-07', '1606', 1606);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1657, 'Liliana Brites', '011999999957', '2013-05-03', '1607', 1607);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1658, 'Marco Mortágua', '011999999958', '2013-07-09', '1608', 1608);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1659, 'Marilda Toledo', '011999999959', '2013-07-17', '1609', 1609);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1660, 'Melissa Chousa', '011999999960', '2013-07-29', '1610', 1610);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1661, 'Mem Mangueira', '011999999961', '2013-09-24', '1611', 1611);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1662, 'Natália Reyes', '011999999962', '2013-11-11', '1612', 1612);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1663, 'Nazaré Arantes', '011999999963', '2014-01-13', '1613', 1613);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1664, 'Nicolau Travassos', '011999999964', '2014-04-18', '1614', 1614);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1665, 'Noémia Cavadas', '011999999965', '2015-02-25', '1615', 1615);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1666, 'Nádia Monforte', '011999999966', '2015-04-22', '1616', 1616);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1667, 'Olavo Negromonte', '011999999967', '2015-06-03', '1617', 1617);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1668, 'Olga Jucá', '011999999968', '2015-12-04', '1618', 1618);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1669, 'Ordonho Lira', '011999999969', '2016-01-08', '1619', 1619);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1670, 'Palmira Garcés', '011999999970', '2016-01-11', '1620', 1620);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1671, 'Paulino Brião', '011999999971', '2016-03-15', '1621', 1621);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1672, 'Pedro Valido', '011999999972', '2016-05-24', '1622', 1622);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1673, 'Plínio Moita', '011999999973', '2016-07-21', '1623', 1623);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1674, 'Potira Caminha', '011999999974', '2016-08-05', '1624', 1624);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1675, 'Quitério Tabajara', '011999999975', '2011-06-03', '1600', 1600);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1676, 'Ricardina Soares', '011999999976', '2011-06-27', '1601', 1601);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1677, 'Roque Alancastre', '011999999977', '2011-07-21', '1602', 1602);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1678, 'Rui Lucas', '011999999978', '2012-04-27', '1603', 1603);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1679, 'Rúben Figueroa', '011999999979', '2012-10-31', '1604', 1604);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1680, 'Salomé Valentín', '011999999980', '2012-12-28', '1605', 1605);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1681, 'Santiago Caballero', '011999999981', '2013-02-07', '1606', 1606);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1682, 'Sarita Taborda', '011999999982', '2013-05-03', '1607', 1607);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1683, 'Silvana Magallanes', '011999999983', '2013-07-09', '1608', 1608);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1684, 'Socorro Quadros', '011999999984', '2013-07-17', '1609', 1609);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1685, 'Sonás Teles', '011999999985', '2013-07-29', '1610', 1610);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1686, 'Sílvio Hierro', '011999999986', '2013-09-24', '1611', 1611);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1687, 'Tadeu Monforte', '011999999987', '2013-11-11', '1612', 1612);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1688, 'Teresina Varella', '011999999988', '2014-01-13', '1613', 1613);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1689, 'Ubaldo Thamily', '011999999989', '2014-04-18', '1614', 1614);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1690, 'Ubiratã Lucas', '011999999990', '2015-02-25', '1615', 1615);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1691, 'Ulisses Canejo', '011999999991', '2015-04-22', '1616', 1616);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1692, 'Valentim Themes', '011999999992', '2015-06-03', '1617', 1617);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1693, 'Vanda Tabajara', '011999999993', '2015-12-04', '1618', 1618);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1694, 'Verónica Eiró', '011999999994', '2016-01-08', '1619', 1619);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1695, 'Xavier Balladares', '011999999995', '2016-01-11', '1620', 1620);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1696, 'Xavier Vázquez', '011999999996', '2016-03-15', '1621', 1621);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1697, 'Zacarias Tupinambá', '011999999997', '2016-05-24', '1622', 1622);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1698, 'Zoraide Patrício', '011999999998', '2016-07-21', '1623', 1623);
INSERT INTO funcionario (num_funcional, nome, telefone, data_admissao, agencia, supervisor) VALUES (1699, 'Énia Leiria ', '011999999999', '2016-08-05', '1624', 1624);


--
-- TOC entry 2045 (class 0 OID 290251)
-- Dependencies: 178
-- Data for Name: operacao; Type: TABLE DATA; Schema: banco; Owner: postgres
--

INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('0743', 899769, 1, 'S', 'Saque', '2016-07-02 00:00:00', 200.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('3928', 997790, 2, 'D', 'Depósito', '2016-10-03 00:00:00', 100.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1323', 908837, 3, 'D', 'Depósito', '2016-03-28 00:00:00', 600.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('0706', 993997, 4, 'T', 'Transferência', '2016-09-18 00:00:00', 1200.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1324', 993005, 5, 'T', 'Transferência', '2016-07-12 00:00:00', 2700.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1792', 199, 1, 'D', 'Supermercado', '2016-01-08 16:05:06', 500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('3075', 198, 2, 'C', 'Salário', '2016-02-01 07:00:00', 2500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1797', 197, 3, 'D', 'Loja de Sapatos', '2016-03-20 21:15:58', 250.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('0775', 196, 4, 'C', 'Transferencia', '2016-04-10 15:25:36', 3500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1808', 195, 5, 'D', 'Estacionamento', '2016-02-14 14:05:06', 5.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('5874', 700, 5, 'd', 'compra sanduiche', '2016-10-01 08:15:23', 12.45);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1001', 701, 6, 'c', 'salário', '2016-10-01 07:02:29', 10212.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1221', 702, 7, 'd', 'churrasco', '2016-10-01 10:09:08', 412.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('2918', 703, 5, 'c', 'inquilino', '2016-10-03 12:59:55', 2612.23);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1221', 704, 6, 'd', 'compra de bacon', '2016-10-02 15:26:12', 212.50);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('2794', 27100, 1, '1', 'saque', '2016-10-06 13:59:56.776', 20.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('2794', 27100, 2, '2', 'deposito', '2016-10-06 13:59:56.776', 300.23);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('3536', 35600, 1, '1', 'saque', '2016-10-06 13:59:56.776', 34.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('3536', 35600, 2, '2', 'deposito', '2016-10-06 13:59:56.776', 7430.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('3536', 35600, 3, '1', 'saque', '2016-10-06 13:59:56.776', 640.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('3534', 35400, 1, '2', 'deposito', '2016-10-06 13:59:56.776', 300.23);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('3534', 35400, 2, '2', 'deposito', '2016-10-06 13:59:56.776', 547.23);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('2692', 26901, 1, '1', 'saque', '2016-10-06 13:59:56.776', 320.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('2692', 26901, 2, '1', 'saque', '2016-10-06 13:59:56.776', 56.43);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('2692', 26901, 3, '2', 'deposito', '2016-10-06 13:59:56.776', 275.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('2692', 26901, 4, '3', 'tranferencia', '2016-10-06 13:59:56.776', 144.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1484', 14800, 1, '2', 'deposito', '2016-10-06 13:59:56.776', 300.23);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('0095', 123, 1111, 's', 'saque', '2016-09-28 10:45:34', 10.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('0128', 456, 2222, 's', 'saque', '2016-09-29 09:15:34', 5.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('0411', 789, 3333, 's', 'saque', '2016-09-27 23:25:34', 40.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('7134', 321, 4444, 's', 'saque', '2016-09-28 19:55:34', 20.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1232', 987, 5555, 's', 'saque', '2016-09-29 11:05:34', 3000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1100', 1100, 1175, 'C', 'Padaria', '2016-09-01 14:00:00', 15.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1100', 1101, 1176, 'D', 'Conta de Luz', '2016-09-02 14:00:00', 123.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1100', 1102, 1177, 'C', 'Padaria', '2016-09-02 14:00:00', 7.26);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1100', 1103, 1178, 'D', 'Conta de Agua', '2016-09-02 14:00:00', 53.23);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1100', 1104, 1179, 'C', 'Bar Carioca', '2016-09-03 14:00:00', 42.75);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1101', 1100, 1180, 'D', 'Supermercado', '2016-09-04 14:00:00', 540.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1101', 1101, 1181, 'C', 'Bar do Andre', '2016-09-04 14:00:00', 25.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1101', 1102, 1182, 'D', 'Restaurante', '2016-09-05 13:00:00', 15.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1101', 1103, 1183, 'C', 'Deposito', '2016-09-07 14:00:00', 50.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1101', 1104, 1184, 'D', 'Posto', '2016-09-05 19:00:00', 75.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1102', 1100, 1185, 'C', 'Restaurante', '2016-09-06 13:00:00', 15.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1102', 1101, 1186, 'D', 'McDonalds', '2016-09-06 17:00:00', 23.40);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1102', 1102, 1187, 'C', 'Burger King', '2016-09-10 20:30:00', 27.85);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1102', 1103, 1188, 'D', 'Boleto Faculdade', '2016-09-05 14:00:00', 717.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1102', 1104, 1189, 'C', 'Restaurante', '2016-09-07 13:00:00', 15.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1103', 1100, 1190, 'D', 'Deposito', '2016-09-27 14:00:00', 50.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1103', 1101, 1191, 'C', 'Restaurante', '2016-09-08 13:00:00', 15.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1103', 1102, 1192, 'D', 'Netshoes', '2016-09-27 14:00:00', 250.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1103', 1103, 1193, 'C', 'Restaurante', '2016-09-09 13:00:00', 15.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1103', 1104, 1194, 'D', 'Submarino', '2016-09-27 14:00:00', 950.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1104', 1100, 1195, 'C', 'Restaurante', '2016-09-10 13:00:00', 15.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1104', 1101, 1196, 'D', 'Pagamento Internet', '2016-09-27 14:00:00', 113.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1104', 1102, 1197, 'C', 'Restaurante', '2016-09-11 13:00:00', 15.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1104', 1103, 1198, 'D', 'Posto', '2016-09-27 14:00:00', 75.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1104', 1104, 1199, 'C', 'Restaurante', '2016-09-12 13:00:00', 15.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1300', 1, 1, 'D', 'Pagamento', '1991-01-01 01:01:01', 1000000000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1301', 1, 1, 'D', 'Saque', '1992-02-02 02:02:02', 1000000000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1302', 1, 1, 'C', 'Deposito', '1993-03-03 03:03:03', 1000000000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1303', 1, 1, 'C', 'Transferencia', '1994-04-04 04:04:04', 1000000000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1304', 1, 1, 'D', 'Transferencia', '1995-05-05 05:05:05', 1000000000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1701', 1789, 1730, 'C', 'deposito especie', '2016-02-12 12:32:00', 300.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1707', 1799, 1731, 'D', 'debito automatico conta', '2016-04-28 14:12:00', 687.55);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1710', 1788, 1732, 'C', 'deposito cheque', '2016-05-05 09:02:00', 250.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1708', 1798, 1733, 'C', 'transferencia', '2016-08-25 16:30:00', 30.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1709', 1777, 1734, 'D', 'debito cartao', '2016-09-12 21:42:00', 50.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1600', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:01', 100.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1601', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:02', 200.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1602', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:03', 300.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1603', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:04', 400.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1604', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:05', 500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1605', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:06', 600.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1606', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:07', 700.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1607', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:08', 800.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1608', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:09', 900.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1609', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:10', 1000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1610', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:11', 1100.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1611', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:12', 1200.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1612', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:13', 1300.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1613', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:14', 1400.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1614', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:15', 1500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1615', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:16', 1600.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1616', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:17', 1700.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1617', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:18', 1800.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1618', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:19', 1900.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1619', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:20', 2000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1620', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:21', 2100.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1621', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:22', 2200.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1622', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:23', 2300.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1623', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:24', 2400.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1624', 1, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:25', 2500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1600', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:26', 2600.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1601', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:27', 2700.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1602', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:28', 2800.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1603', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:29', 2900.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1604', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:30', 3000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1605', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:31', 3100.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1606', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:32', 3200.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1607', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:33', 3300.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1608', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:34', 3400.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1609', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:35', 3500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1610', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:36', 3600.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1611', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:37', 3700.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1612', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:38', 3800.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1613', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:39', 3900.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1614', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:40', 4000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1615', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:41', 4100.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1616', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:42', 4200.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1617', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:43', 4300.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1618', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:44', 4400.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1619', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:45', 4500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1620', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:46', 4600.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1621', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:47', 4700.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1622', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:48', 4800.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1623', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:49', 4900.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1624', 2, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:50', 5000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1600', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:51', 5100.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1601', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:52', 5200.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1602', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:53', 5300.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1603', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:54', 5400.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1604', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:55', 5500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1605', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:56', 5600.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1606', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:57', 5700.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1607', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:58', 5800.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1608', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:00:59', 5900.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1609', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:00', 6000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1610', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:01', 6100.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1611', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:02', 6200.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1612', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:03', 6300.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1613', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:04', 6400.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1614', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:05', 6500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1615', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:06', 6600.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1616', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:07', 6700.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1617', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:08', 6800.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1618', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:09', 6900.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1619', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:10', 7000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1620', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:11', 7100.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1621', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:12', 7200.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1622', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:13', 7300.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1623', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:14', 7400.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1624', 3, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:15', 7500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1600', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:16', 7600.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1601', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:17', 7700.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1602', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:18', 7800.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1603', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:19', 7900.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1604', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:20', 8000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1605', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:21', 8100.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1606', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:22', 8200.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1607', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:23', 8300.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1608', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:24', 8400.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1609', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:25', 8500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1610', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:26', 8600.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1611', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:27', 8700.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1612', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:28', 8800.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1613', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:29', 8900.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1614', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:30', 9000.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1615', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:31', 9100.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1616', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:32', 9200.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1617', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:33', 9300.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1618', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:34', 9400.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1619', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:35', 9500.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1620', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:36', 9600.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1621', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:37', 9700.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1622', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:38', 9800.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1623', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:39', 9900.00);
INSERT INTO operacao (cod_agencia, numero_conta, seq, tipo, descricao, datahora, valor) VALUES ('1624', 4, 1, 'C', 'Dep. Abertura de Conta', '2016-09-29 12:01:40', 10000.00);


--
-- TOC entry 1906 (class 2606 OID 290198)
-- Name: pkagencia; Type: CONSTRAINT; Schema: banco; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY agencia
    ADD CONSTRAINT pkagencia PRIMARY KEY (codigo);


--
-- TOC entry 1914 (class 2606 OID 290233)
-- Name: pkcliente; Type: CONSTRAINT; Schema: banco; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT pkcliente PRIMARY KEY (id);


--
-- TOC entry 1922 (class 2606 OID 290265)
-- Name: pkclienteconta; Type: CONSTRAINT; Schema: banco; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY clienteconta
    ADD CONSTRAINT pkclienteconta PRIMARY KEY (id_cliente, cod_agencia, numero_conta);


--
-- TOC entry 1918 (class 2606 OID 290245)
-- Name: pkconta; Type: CONSTRAINT; Schema: banco; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY conta
    ADD CONSTRAINT pkconta PRIMARY KEY (cod_agencia, numero);


--
-- TOC entry 1912 (class 2606 OID 290220)
-- Name: pkdependentes; Type: CONSTRAINT; Schema: banco; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dependentes
    ADD CONSTRAINT pkdependentes PRIMARY KEY (funcionario, nome_dependente);


--
-- TOC entry 1910 (class 2606 OID 290205)
-- Name: pkfuncionario; Type: CONSTRAINT; Schema: banco; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY funcionario
    ADD CONSTRAINT pkfuncionario PRIMARY KEY (num_funcional);


--
-- TOC entry 1920 (class 2606 OID 290255)
-- Name: pkoperacao; Type: CONSTRAINT; Schema: banco; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY operacao
    ADD CONSTRAINT pkoperacao PRIMARY KEY (cod_agencia, numero_conta, seq);


--
-- TOC entry 1916 (class 2606 OID 290235)
-- Name: uqcpf; Type: CONSTRAINT; Schema: banco; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT uqcpf UNIQUE (cpf);


--
-- TOC entry 1908 (class 2606 OID 290200)
-- Name: uqnome; Type: CONSTRAINT; Schema: banco; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY agencia
    ADD CONSTRAINT uqnome UNIQUE (nome);


--
-- TOC entry 1923 (class 2606 OID 290206)
-- Name: fkagencia; Type: FK CONSTRAINT; Schema: banco; Owner: postgres
--

ALTER TABLE ONLY funcionario
    ADD CONSTRAINT fkagencia FOREIGN KEY (agencia) REFERENCES agencia(codigo);


--
-- TOC entry 1929 (class 2606 OID 290266)
-- Name: fkcliente; Type: FK CONSTRAINT; Schema: banco; Owner: postgres
--

ALTER TABLE ONLY clienteconta
    ADD CONSTRAINT fkcliente FOREIGN KEY (id_cliente) REFERENCES cliente(id);


--
-- TOC entry 1927 (class 2606 OID 290246)
-- Name: fkcod_agencia; Type: FK CONSTRAINT; Schema: banco; Owner: postgres
--

ALTER TABLE ONLY conta
    ADD CONSTRAINT fkcod_agencia FOREIGN KEY (cod_agencia) REFERENCES agencia(codigo);


--
-- TOC entry 1928 (class 2606 OID 290256)
-- Name: fkconta; Type: FK CONSTRAINT; Schema: banco; Owner: postgres
--

ALTER TABLE ONLY operacao
    ADD CONSTRAINT fkconta FOREIGN KEY (cod_agencia, numero_conta) REFERENCES conta(cod_agencia, numero);


--
-- TOC entry 1930 (class 2606 OID 290271)
-- Name: fkconta; Type: FK CONSTRAINT; Schema: banco; Owner: postgres
--

ALTER TABLE ONLY clienteconta
    ADD CONSTRAINT fkconta FOREIGN KEY (cod_agencia, numero_conta) REFERENCES conta(cod_agencia, numero);


--
-- TOC entry 1925 (class 2606 OID 290221)
-- Name: fkfuncionario; Type: FK CONSTRAINT; Schema: banco; Owner: postgres
--

ALTER TABLE ONLY dependentes
    ADD CONSTRAINT fkfuncionario FOREIGN KEY (funcionario) REFERENCES funcionario(num_funcional);


--
-- TOC entry 1926 (class 2606 OID 290236)
-- Name: fkgerente; Type: FK CONSTRAINT; Schema: banco; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT fkgerente FOREIGN KEY (gerente) REFERENCES funcionario(num_funcional);


--
-- TOC entry 1924 (class 2606 OID 290211)
-- Name: fksupervisor; Type: FK CONSTRAINT; Schema: banco; Owner: postgres
--

ALTER TABLE ONLY funcionario
    ADD CONSTRAINT fksupervisor FOREIGN KEY (supervisor) REFERENCES funcionario(num_funcional);


-- Completed on 2016-10-06 17:38:41

--
-- PostgreSQL database dump complete
--

