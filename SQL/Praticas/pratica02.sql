--Pedro Henrique da Silva 11511BSI257
--Carolina Alves da Silva 11411BSI234

--DROP SCHEMA UNIVERSIDADE CASCADE;

-----------------------
-- CRIANDO o ESQUEMA
-----------------------
DROP SCHEMA IF EXISTS UNIVERSIDADE CASCADE;

CREATE SCHEMA UNIVERSIDADE;

SET SEARCH_PATH TO UNIVERSIDADE;

SET DATESTYLE TO 'dmy'; 

-----------------------
-- CRIANDO AS SEQUENCIAS:
-----------------------
CREATE SEQUENCE seq_professor
START WITH 121 
INCREMENT BY 1; 

CREATE SEQUENCE seq_departamento
START WITH 121 
INCREMENT BY 1; 

CREATE SEQUENCE seq_projeto
START WITH 121 
INCREMENT BY 1; 

CREATE SEQUENCE seq_estudante
START WITH 121 
INCREMENT BY 1; 


CREATE SEQUENCE prof_seq START WITH 31;
CREATE SEQUENCE depto_seq START WITH 31;
CREATE SEQUENCE proj_seq START WITH 31;
CREATE SEQUENCE estud_seq START WITH 31;

create sequence numFunc_seq
INCREMENT 1
MINVALUE 1
START 11;

create sequence dep_seq
INCREMENT 1
MINVALUE 1
START 11;

create sequence num_projeto_seq
INCREMENT 1
MINVALUE 1
START 11;

create sequence num_estudante_seq
INCREMENT 1
MINVALUE 1
START 11;

CREATE SEQUENCE PROFESSOR_numFunc
	INCREMENT BY 1
	START WITH 61;

CREATE SEQUENCE DEPARTAMENTO_numDepto
	INCREMENT BY 1
	START WITH 61;

CREATE SEQUENCE PROJETO_numDepto
	INCREMENT BY 1
	START WITH 61;

CREATE SEQUENCE ESTUDANTE_matricula
	INCREMENT BY 1
	START WITH 61;

CREATE SEQUENCE numFunc_Sequence START WITH 41 INCREMENT BY 1;
CREATE SEQUENCE numDepto_Sequence START WITH 41 INCREMENT BY 1;
CREATE SEQUENCE numProjeto_Sequence START WITH 41 INCREMENT BY 1;
CREATE SEQUENCE matriculaSequence START WITH 41 INCREMENT BY 1;

-----------------------
-- CRIANDO AS TABELAS:
-----------------------

CREATE TABLE PROFESSOR(
numFunc integer,
nomeProf varchar(40),
cpf varchar(11),
idade Integer,
dataNascimento date,
ramal varchar(5), 
posicao varchar(10) default 'ADJUNTO 1', 
area varchar(100),
CONSTRAINT pk_professor PRIMARY KEY(numFunc)
);

CREATE TABLE DEPARTAMENTO(
numDepto integer, 
sigla varchar(6),
nomeDepto varchar(40), 
endereco varchar(100), 
chefeDepto integer,
CONSTRAINT pk_departamento PRIMARY KEY(numDepto),
CONSTRAINT fk_departamento_professor FOREIGN KEY(chefeDepto) REFERENCES PROFESSOR(numFunc)
);

CREATE TABLE PROJETO(
numProjeto integer, 
nomeAgencia varchar(30) CONSTRAINT nomes_agencia CHECK (nomeAgencia in ('FAPEMIG', 'CAPES', 'CNPQ')),
dataInicial date, 
dataFinal date, 
orcamento numeric(10,2), 
pesquisadorPrincipal integer,
CONSTRAINT pk_projeto PRIMARY KEY(numProjeto),
CONSTRAINT fk_projeto_professor FOREIGN KEY(pesquisadorPrincipal) REFERENCES PROFESSOR(numFunc)
);

CREATE TABLE ESTUDANTE(
matricula integer, 
nomeAluno varchar(40), 
cpf varchar(11), 
dataNascimento date,
idade integer, 
programa varchar(10) CONSTRAINT tipo_programa CHECK (programa in ('MESTRADO','DOUTORADO')), 
conselheiro integer, 
departamento integer,
CONSTRAINT pk_estudante PRIMARY KEY(matricula),
CONSTRAINT fk_estudante_estudante FOREIGN KEY(conselheiro) REFERENCES ESTUDANTE(matricula),
CONSTRAINT fk_estudante_departamento FOREIGN KEY(departamento) REFERENCES DEPARTAMENTO(numDepto)
);

CREATE TABLE TRABALHA(
professor integer,
departamento integer, 
horasTrab integer,
CONSTRAINT pk_trabalha PRIMARY KEY(professor, departamento),
CONSTRAINT fk_trabalha_professor FOREIGN KEY(professor) REFERENCES PROFESSOR(numFunc),
CONSTRAINT fk_trabalha_departamento FOREIGN KEY(departamento) REFERENCES DEPARTAMENTO(numDepto)
);

CREATE TABLE CONDUZ(
colaborador integer,
projeto integer,
CONSTRAINT pk_conduz PRIMARY KEY(colaborador, projeto),
CONSTRAINT fk_conduz_professor FOREIGN KEY(colaborador) REFERENCES PROFESSOR(numFunc),
CONSTRAINT fk_conduz_projeto FOREIGN KEY(projeto) REFERENCES PROJETO(numProjeto)
);

CREATE TABLE PESQUISA(
projeto integer,
assistente integer,
supervisor integer,
CONSTRAINT pk_pesquisa PRIMARY KEY(projeto, assistente),
CONSTRAINT fk_pesquisa_projeto FOREIGN KEY(projeto) REFERENCES PROJETO(numProjeto),
CONSTRAINT fk_pesquisa_estudante FOREIGN KEY(assistente) REFERENCES ESTUDANTE(matricula),
CONSTRAINT fk_pesquisa_professor FOREIGN KEY(supervisor) REFERENCES PROFESSOR(numFunc)
);

------------------------
-- POVOANDO AS TABELAS:
------------------------

-- Povoando tabela professor
INSERT INTO professor (numFunc, nomeProf, cpf, idade, ramal, posicao, area) VALUES (NEXTVAL('seq_professor'),'Aleandra da Silva Sampaio','68036527855',42, '3447', 'ADJUNTO','Administracao Publica');
INSERT INTO professor (numFunc, nomeProf, cpf, idade, ramal, posicao, area) VALUES (NEXTVAL('seq_professor'),'Ananda Silva Singh','52963097824', 38,'3456', 'ASSOCIADO','Marketing');
INSERT INTO professor (numFunc, nomeProf, cpf, idade, ramal, posicao, area) VALUES (NEXTVAL('seq_professor'),'Andre Carlos Menck','02316841775',59, '3451', 'ADJUNTO', 'Recursos Humanos');
INSERT INTO professor (numFunc, nomeProf, cpf, idade, ramal, posicao, area) VALUES (NEXTVAL('seq_professor'),'Antonio Sergio Penedo','69640480061',35, '3439','ADJUNTO', 'Gestao Financeira');

INSERT INTO PROFESSOR (numFunc,nomeProf, cpf, dataNascimento, idade, ramal, posicao, area) VALUES (NEXTVAL('prof_seq'), 'Girafales','98739822900','1985-07-19', 29, '5321', 'EFETIVO','Biologia Marinha');

INSERT INTO PROFESSOR (numFunc,nomeProf, cpf, dataNascimento, idade, ramal, posicao, area) VALUES (NEXTVAL('prof_seq'),'Tarcisio','11111111111','1984-07-19', 30, '0506', 'EFETIVO','Biologia Marinha');

INSERT INTO PROFESSOR (numFunc,nomeProf, cpf, dataNascimento, idade, ramal, posicao, area) VALUES (NEXTVAL('prof_seq'),'Marielza','98022233984','1974-07-19', 40, '4561', 'EFETIVO','Biologia Marinha');

INSERT INTO PROFESSOR (numFunc,nomeProf, cpf, dataNascimento, idade, ramal, posicao, area) VALUES (NEXTVAL('prof_seq'),'Charles Xavier','09123987391','1986-07-19', 28, '1234', 'EFETIVO','Biologia Marinha');

INSERT INTO professor VALUES(111, 'Marcelo da Silva', '13232443205', 31, '10/2/1983', 'FEMC', 'ADJUNTO1', 'Mecatronica');
INSERT INTO professor VALUES(112, 'Maria Costa', '18032443505', 28, '8/5/1986', 'FEMC', 'ADJUNTO2', 'Mecatronica');
INSERT INTO professor VALUES(113, 'Joao Fernandez', '13532743008', 35, '21/1/1979','FEMC', 'ADJUNTO3', 'Mecatronica');
INSERT INTO professor VALUES(114, 'Pedro Coelho', '12222443200', 34, '25/10/1980', 'FEMC', 'ADJUNTO4', 'Mecatronica');

INSERT INTO PROFESSOR (  numFunc,nomeProf,cpf,dataNascimento,idade,ramal,area)  VALUES(nextval ('numFunc_seq'), 'MARIA CAMILA','09765842154','04/07/1980', 34, '4286','PESQUISA');
  INSERT INTO PROFESSOR (  numFunc,nomeProf,cpf,dataNascimento,idade,ramal,area)  VALUES(nextval ('numFunc_seq'), 'ALESSANDRA SANTOS','09754784211','02/03/1991', 23, '4280','PESQUISA');
  INSERT INTO PROFESSOR (  numFunc,nomeProf,cpf,dataNascimento,idade,ramal,area)  VALUES(nextval ('numFunc_seq'), 'ISRAEL RODRIGUES','09758412354','06/06/1966', 65, '4281','PESQUISA');
  INSERT INTO PROFESSOR (  numFunc,nomeProf,cpf,dataNascimento,idade,ramal,area)  VALUES(nextval ('numFunc_seq'), 'RENATO TEIXEIRA','09642587911','01/01/1990', 24, '4285','DESENVOLVIMENTO');

INSERT INTO PROFESSOR VALUES (NEXTVAL('PROFESSOR_numFunc'), 'JOAQUIM CARMELITO DE ANDRADE', '0011112223',40, '10/03/1974', '234', DEFAULT , 'PDI');

INSERT INTO PROFESSOR VALUES (NEXTVAL('PROFESSOR_numFunc'), 'JOSELITO DOS REIS', '11156822345',33, '22/08/1981', '235', DEFAULT , 'ALA');

INSERT INTO PROFESSOR VALUES (NEXTVAL('PROFESSOR_numFunc'), 'JOSEMAR ARMANDO BRAGA', '21415694734',28, '13/04/1986', '236', DEFAULT , 'IGI');

INSERT INTO PROFESSOR VALUES (NEXTVAL('PROFESSOR_numFunc'), 'JOANESCLEIDE CAMARGOS BARBOSA', '81455645704',28, '03/01/1986', '237', DEFAULT , 'PGE');

INSERT INTO PROFESSOR (numFunc, nomeProf, cpf, idade, ramal, posicao, area) values (NEXTVAL('numFunc_Sequence'),'Ben Hur Braga Taliberti', '231245124', '103', '432', 'Titular', 'Reumatologia');
INSERT INTO PROFESSOR (numFunc, nomeProf, cpf, idade, ramal, posicao, area) values (NEXTVAL('numFunc_Sequence'),'Abadia Gilda Buso Matoso', '3123412', '32', '873', 'Assistente', 'Gastroenterologia');
INSERT INTO PROFESSOR (numFunc, nomeProf, cpf, idade, ramal, posicao, area) values (NEXTVAL('numFunc_Sequence'),'Aércio Sebastião Borges', '381231923', '89', '271', 'Assistente', 'Residência Médica');
INSERT INTO PROFESSOR (numFunc, nomeProf, cpf, idade, ramal, posicao, area) values (NEXTVAL('numFunc_Sequence'),'Alberto Oliveira Barbosa', '821398123', '88', '212', 'Aux. Ens.', 'Anestesiologia');


-- Povoando tabela departamento
INSERT INTO departamento (numDepto, sigla, nomeDepto, endereco, chefeDepto) VALUES (NEXTVAL('seq_departamento'),'FAGEN','Faculdade de Gestao e Negocios','Av. João Naves de Ávila, 2121 - Santa Monica, Uberlandia - MG',121);
INSERT INTO DEPARTAMENTO (numDepto ,sigla,nomeDepto ,endereco,chefeDepto) VALUES (NEXTVAL('depto_seq'), 'BIOMAR','Faculdade de Biologia Marinha', 'Rua: Amazonas n:1160 Bairro: Brasil', 32);
INSERT INTO departamento VALUES(111, 'FEMEC', 'Faculdade de Engenharia Mecatronica','Av. João Naves de Ávila, 2121 - Santa Monica, Uberlandia - MG', 111);
INSERT INTO DEPARTAMENTO (numDepto,sigla,nomeDepto,endereco, chefeDepto) VALUES(nextval ('dep_seq'), 'FQ', 'FACULDADE DE QUÍMICA', 'Av. João Naves de Ávila, 2121, Bairro Sta Mônica', 11);
INSERT INTO DEPARTAMENTO VALUES(61,'FALE','FACULDADE DE LETRAS','Rua das flores, 189',61);
INSERT INTO DEPARTAMENTO values(NEXTVAL('numDepto_Sequence'),'FAMED', 'FACULDADE DE MEDICINA', 'CAMPUS UMUARAMA - BLOCO 2U - SALA 23 AV. PARÁ, 1720 - BAIRRO UMUARAMA', '41');


-- Povoando tabela projeto
INSERT INTO projeto(numProjeto, nomeAgencia, dataInicial, dataFinal, orcamento,pesquisadorPrincipal) VALUES (NEXTVAL('seq_projeto'),'FAPEMIG','01-01-2013','31-12-2014',10000,121 );
INSERT INTO projeto(numProjeto, nomeAgencia, dataInicial, dataFinal, orcamento,pesquisadorPrincipal) VALUES (NEXTVAL('seq_projeto'),'FAPEMIG','10-01-2014','31-12-2016',100000,123 );
INSERT INTO projeto(numProjeto, nomeAgencia, dataInicial, dataFinal, orcamento,pesquisadorPrincipal) VALUES (NEXTVAL('seq_projeto'), 'CNPQ','01-07-2010','31-05-2015',2000000,123);
INSERT INTO projeto(numProjeto, nomeAgencia, dataInicial, dataFinal, orcamento,pesquisadorPrincipal) VALUES (NEXTVAL('seq_projeto'),'CNPQ','25-07-2014','31-05-2018',2500000,124 );
INSERT INTO projeto(numProjeto, nomeAgencia, dataInicial, dataFinal, orcamento,pesquisadorPrincipal) VALUES (NEXTVAL('seq_projeto'),'CAPES','03-01-2013','30-06-2014',50000,122 );
INSERT INTO projeto(numProjeto, nomeAgencia, dataInicial, dataFinal, orcamento,pesquisadorPrincipal) VALUES (NEXTVAL('seq_projeto'),'CAPES','01-01-2012','31-12-2014',280000,121 );

INSERT INTO PROJETO (numProjeto, nomeAgencia,dataInicial, dataFinal, orcamento, pesquisadorPrincipal) VALUES (NEXTVAL('proj_seq'), 'FAPEMIG', '01/01/2014', '01/01/2015', 30000.00, 32);
	
INSERT INTO PROJETO (numProjeto, nomeAgencia,dataInicial, dataFinal, orcamento, pesquisadorPrincipal) VALUES (NEXTVAL('proj_seq'), 'FAPEMIG', '01/10/2014', '01/05/2015', 39000.00, 32) ;
	
INSERT INTO PROJETO (numProjeto, nomeAgencia,dataInicial, dataFinal, orcamento, pesquisadorPrincipal) VALUES (NEXTVAL('proj_seq'), 'FAPEMIG', '01/05/2014', '01/01/2015', 20000.00, 32) ;
	
INSERT INTO PROJETO (numProjeto, nomeAgencia,dataInicial, dataFinal, orcamento, pesquisadorPrincipal) VALUES (NEXTVAL('proj_seq'), 'FAPEMIG', '23/05/2014', '23/01/2015', 32000.00, 32) ;
	
INSERT INTO PROJETO (numProjeto, nomeAgencia,dataInicial, dataFinal, orcamento, pesquisadorPrincipal) VALUES (NEXTVAL('proj_seq'), 'FAPEMIG', '01/10/2014', '12/01/2015', 100000.00, 34); 
	
INSERT INTO PROJETO (numProjeto, nomeAgencia,dataInicial, dataFinal, orcamento, pesquisadorPrincipal) VALUES (NEXTVAL('proj_seq'), 'FAPEMIG', '01/11/2014', '31/01/2015', 3000.00, 33) ;
	
INSERT INTO PROJETO (numProjeto, nomeAgencia,dataInicial, dataFinal, orcamento, pesquisadorPrincipal) VALUES (NEXTVAL('proj_seq'), 'FAPEMIG', '01/01/2015', '03/07/2015', 30000.00, 33) ;

INSERT INTO projeto VALUES(111, 'FAPEMIG', '2/10/2011', '10/2/2013', 2000.00, 111);
INSERT INTO projeto VALUES(112, 'FAPEMIG', '10/3/2012', '5/10/2013', 2500.00, 112);
INSERT INTO projeto VALUES(113, 'CAPES', '25/2/2012', '25/2/2013', 5000.00, 112);
INSERT INTO projeto VALUES(114, 'CAPES', '15/6/2012', '10/8/2013', 10000.00, 113);
INSERT INTO projeto VALUES(115, 'CNPQ', '20/1/2013', '10/6/2014', 25000.00, 114);
INSERT INTO projeto VALUES(116, 'CNPQ', '2/10/2014', '10/11/2015', 1000.00, 114);

INSERT INTO PROJETO(  numProjeto,nomeAgencia ,dataInicial ,dataFinal,orcamento,pesquisadorPrincipal) VALUES(nextval ('num_projeto_seq'), 'FAPEMIG', '13/01/2014', '13/01/2015', 1000.00, 11); 
  INSERT INTO PROJETO(  numProjeto,nomeAgencia ,dataInicial ,dataFinal,orcamento,pesquisadorPrincipal) VALUES(nextval ('num_projeto_seq'), 'CAPES', '10/01/2014', '10/01/2015', 25000.00, 12); 
  INSERT INTO PROJETO(  numProjeto,nomeAgencia ,dataInicial ,dataFinal,orcamento,pesquisadorPrincipal) VALUES(nextval ('num_projeto_seq'), 'CAPES', '02/01/2014', '02/01/2015', 25000.00, 13); 
  INSERT INTO PROJETO(  numProjeto,nomeAgencia ,dataInicial ,dataFinal,orcamento,pesquisadorPrincipal) VALUES(nextval ('num_projeto_seq'), 'CAPES', '05/01/2014', '05/01/2015', 25000.00, 14); 
  INSERT INTO PROJETO(  numProjeto,nomeAgencia ,dataInicial ,dataFinal,orcamento,pesquisadorPrincipal) VALUES(nextval ('num_projeto_seq'), 'FAPEMIG', '09/01/2014', '09/01/2015', 1000.00, 11); 
  INSERT INTO PROJETO(  numProjeto,nomeAgencia ,dataInicial ,dataFinal,orcamento,pesquisadorPrincipal) VALUES(nextval ('num_projeto_seq'), 'CAPES', '19/01/2014', '19/01/2015', 25000.00, 12); 

INSERT INTO PROJETO VALUES (NEXTVAL('PROJETO_numDepto'), 'FAPEMIG', '10/12/2002', '10/12/2005', 20.00, 61);
INSERT INTO PROJETO VALUES (NEXTVAL('PROJETO_numDepto'), 'CAPES', '05/09/2001', '05/09/2002', 50.00, 62);
INSERT INTO PROJETO VALUES (NEXTVAL('PROJETO_numDepto'), 'FAPEMIG', '07/10/2003', '07/10/2004', 70.00,63 );
INSERT INTO PROJETO VALUES (NEXTVAL('PROJETO_numDepto'), 'CNPQ', '01/12/2001', '01/12/2007', 80.00, 61);
INSERT INTO PROJETO VALUES (NEXTVAL('PROJETO_numDepto'), 'FAPEMIG', '12/01/2001', '12/01/2005', 40.00,64 );
INSERT INTO PROJETO VALUES (NEXTVAL('PROJETO_numDepto'), 'CAPES', '02/11/2005', '10/12/2006', 30.00, 62);

INSERT INTO PROJETO values (NEXTVAL('numProjeto_Sequence'), 'CNPQ', '08/01/2014', '08/01/2015', 25000.00, 41);
INSERT INTO PROJETO values (NEXTVAL('numProjeto_Sequence'), 'FAPEMIG', '09/02/2014', '09/02/2015', 150000.00, 42);
INSERT INTO PROJETO values (NEXTVAL('numProjeto_Sequence'), 'CNPQ', '13/04/2014', '13/12/2014', 200000.00, 43);
INSERT INTO PROJETO values (NEXTVAL('numProjeto_Sequence'), 'FAPEMIG', '01/01/2014', '31/12/2014', 10000.00, 44);
INSERT INTO PROJETO values (NEXTVAL('numProjeto_Sequence'), 'FAPEMIG', '22/10/2014', '22/07/2015', 2000.00, 41);
INSERT INTO PROJETO values (NEXTVAL('numProjeto_Sequence'), 'CNPQ', '14/02/2014', '14/12/2014', 13000.00, 42);


-- Povoando tabela estudante
INSERT INTO estudante(matricula, nomeAluno, cpf, idade, programa,conselheiro) VALUES (NEXTVAL('seq_estudante'), 'Marcela Betina Marina Moura', '17693414398', 32, 'DOUTORADO',NULL);
INSERT INTO estudante(matricula, nomeAluno, cpf, idade, programa,conselheiro) VALUES (NEXTVAL('seq_estudante'), 'Hugo Samuel Gabriel Oliveira', '24338345039', 29, 'DOUTORADO',NULL);
INSERT INTO estudante(matricula, nomeAluno, cpf, idade, programa,conselheiro) VALUES (NEXTVAL('seq_estudante'), 'Isabel Catarina LÃ­via Gomes', '62375877560', 27, 'DOUTORADO',NULL);
INSERT INTO estudante(matricula, nomeAluno, cpf, idade, programa,conselheiro) VALUES (NEXTVAL('seq_estudante'), 'Brenda Bianca Rocha', '84430554803', 26, 'DOUTORADO',122);
INSERT INTO estudante(matricula, nomeAluno, cpf, idade, programa,conselheiro) VALUES (NEXTVAL('seq_estudante'), 'Luana Isadora LaÃ­s Martins', '93618852606', 25, 'MESTRADO',121);
INSERT INTO estudante(matricula, nomeAluno, cpf, idade, programa,conselheiro) VALUES (NEXTVAL('seq_estudante'), 'CÃ©sar Paulo Rodrigues', '91214428436', 23, 'MESTRADO',123);
INSERT INTO estudante(matricula, nomeAluno, cpf, idade, programa,conselheiro) VALUES (NEXTVAL('seq_estudante'), 'Kevin Caio Campos', '16264114502', 24, 'MESTRADO',121);
INSERT INTO estudante(matricula, nomeAluno, cpf, idade, programa,conselheiro) VALUES (NEXTVAL('seq_estudante'), 'Elisa Giovanna Martins', '76482335845', 22, 'MESTRADO',125);
INSERT INTO estudante(matricula, nomeAluno, cpf, idade, programa,conselheiro) VALUES (NEXTVAL('seq_estudante'), 'Nathan Filipe Ian Moura ','76904057386', 27, 'MESTRADO',124);

INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf,dataNascimento, programa, conselheiro, departamento ) VALUES (NEXTVAL('estud_seq'), 'Marco Túlio', '09487399383', '03/07/1990', 'MESTRADO', NULL, 31);
	
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf,dataNascimento, programa, conselheiro, departamento ) VALUES (NEXTVAL('estud_seq'), 'Breno', '85763874898', '08/07/1996', 'DOUTORADO', 31, 31);
	
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf,dataNascimento, programa, conselheiro, departamento ) VALUES (NEXTVAL('estud_seq'), 'Marcio Neto', '8746523419', '03/05/1993', 'MESTRADO', 32, 31);
	
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf,dataNascimento, programa, conselheiro, departamento ) VALUES (NEXTVAL('estud_seq'), 'Lucas', '09487399383', '03/07/1989', 'DOUTORADO', 32, 31);
	
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf,dataNascimento, programa, conselheiro, departamento )	VALUES (NEXTVAL('estud_seq'), 'Adriano', '2344323422', '03/07/1989', 'MESTRADO', 32, 31);
	
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf,dataNascimento, programa, conselheiro, departamento )	VALUES (NEXTVAL('estud_seq'), 'Pedro', '98748938471', '01/01/1988', 'DOUTORADO', 34, 31);
	
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf,dataNascimento, programa, conselheiro, departamento )	VALUES (NEXTVAL('estud_seq'), 'Karine', '09487399456', '14/04/1993', 'MESTRADO', 34, 31);
	
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf,dataNascimento, programa, conselheiro, departamento ) VALUES (NEXTVAL('estud_seq'), 'Rafaela', '34567898765', '13/11/1990', 'DOUTORADO', 31, 31);
	
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf,dataNascimento, programa, conselheiro, departamento )	VALUES (NEXTVAL('estud_seq'), 'Marco Túlio', '78365478399', '23/12/1990', 'MESTRADO', 33, 31);

INSERT INTO estudante VALUES(111, 'Pedro Silva', 01324618697, '15/2/1990', 21, 'MESTRADO', 111, NULL);
INSERT INTO estudante VALUES(112, 'Gabriel da Silva', 12324688092, '10/5/1989', 21, 'MESTRADO', 112, 111);
INSERT INTO estudante VALUES(113, 'Lucaz Menezes', 11354818995, '11/7/1988', 21, 'DOUTORADO', 111, 111);
INSERT INTO estudante VALUES(114, 'Raif Cerveny', 015246185497, '2/1/1989', 21, 'DOUTORADO', 114, 111);
INSERT INTO estudante VALUES(115, 'Jordan Pacheco', 02324648390, '10/10/1990', 21, 'MESTRADO', 113, 111);
INSERT INTO estudante VALUES(116, 'Luiz Fahd', 17424612293, '1/4/1991', 21, 'MESTRADO', 112, 111);
INSERT INTO estudante VALUES(117, 'Pablo Leyes', 09344418097, '10/12/1991', 21, 'MESTRADO', 115, 111);
INSERT INTO estudante VALUES(118, 'Joao Guerra', 13324610094, '28/2/1990', 21, 'MESTRADO', 113, 111);
INSERT INTO estudante VALUES(119, 'Cassiano Pitolas', 02344315096, '27/5/1989', 21, 'DOUTORADO', 114, 111);

 INSERT INTO ESTUDANTE( matricula,nomeAluno, cpf, dataNascimento, idade, programa, conselheiro, departamento) VALUES (nextval('num_estudante_seq'),'Joao Silva Nunes','08723455561','05/01/1988',26,'MESTRADO',null,11);
 INSERT INTO ESTUDANTE( matricula,nomeAluno, cpf, dataNascimento, idade, programa, conselheiro, departamento) VALUES (nextval('num_estudante_seq'),'Maria Carvalho','09122345553','05/01/1988',26,'MESTRADO',11,11);
 INSERT INTO ESTUDANTE( matricula,nomeAluno, cpf, dataNascimento, idade, programa, conselheiro, departamento) VALUES (nextval('num_estudante_seq'),'Jose Carlos Barreto','13413455771','05/01/1990',24,'MESTRADO',12,11);
 INSERT INTO ESTUDANTE( matricula,nomeAluno, cpf, dataNascimento, idade, programa, conselheiro, departamento) VALUES (nextval('num_estudante_seq'),'Roberto Loureiro','08723414287','05/01/1987',27,'MESTRADO',13,11);
 INSERT INTO ESTUDANTE( matricula,nomeAluno, cpf, dataNascimento, idade, programa, conselheiro, departamento) VALUES (nextval('num_estudante_seq'),'Marina Silva Carvalho','18718715599','05/01/1988',26,'MESTRADO',14,11);
 INSERT INTO ESTUDANTE( matricula,nomeAluno, cpf, dataNascimento, idade, programa, conselheiro, departamento) VALUES (nextval('num_estudante_seq'),'Thais Pacheco','08733561562','05/01/1988',26,'MESTRADO',15,11);
 INSERT INTO ESTUDANTE( matricula,nomeAluno, cpf, dataNascimento, idade, programa, conselheiro, departamento) VALUES (nextval('num_estudante_seq'),'Bruna Rodrigues','09734561561','05/01/1987',27,'MESTRADO',16,11);
 INSERT INTO ESTUDANTE( matricula,nomeAluno, cpf, dataNascimento, idade, programa, conselheiro, departamento) VALUES (nextval('num_estudante_seq'),'Daniela Mineiro','12365455522','05/01/1988',26,'MESTRADO',17,11);
 INSERT INTO ESTUDANTE( matricula,nomeAluno, cpf, dataNascimento, idade, programa, conselheiro, departamento) VALUES (nextval('num_estudante_seq'),'Helena Magalhaes','08723422341','05/01/1990',24,'MESTRADO',18,11);

INSERT INTO ESTUDANTE VALUES (NEXTVAL('ESTUDANTE_matricula'), 'Joselito Marcones de Araújo', '66554696270', '07/12/1992', 22,'MESTRADO',61,61 );
INSERT INTO ESTUDANTE VALUES (NEXTVAL('ESTUDANTE_matricula'), 'Armandito das Coves Neves', '43128654506', '11/09/1990', 24,'DOUTORADO',61,61 );
INSERT INTO ESTUDANTE VALUES (NEXTVAL('ESTUDANTE_matricula'), 'Joao Aparecido da Silva', '34818701599', '01/07/1990', 24,'DOUTORADO',62,61 );
INSERT INTO ESTUDANTE VALUES (NEXTVAL('ESTUDANTE_matricula'), 'Rafael Carmelitano Oliveira', '15444666928', '05/06/1987', 27,'MESTRADO',63,61 );
INSERT INTO ESTUDANTE VALUES (NEXTVAL('ESTUDANTE_matricula'), 'Bruno Jacó da Silva', '17793561457', '11/08/1990', 24,'DOUTORADO',64,61 );
INSERT INTO ESTUDANTE VALUES (NEXTVAL('ESTUDANTE_matricula'), 'Felipe Sertanejo Castro', '51392846420', '06/12/1990', 24,'MESTRADO',65,61 );
INSERT INTO ESTUDANTE VALUES (NEXTVAL('ESTUDANTE_matricula'), 'Juberson Arlindo Menezes', '43300674476', '01/01/1982', 32, 'MESTRADO',66,61);
INSERT INTO ESTUDANTE VALUES (NEXTVAL('ESTUDANTE_matricula'), 'Emanoel da Silva Xavier', '58041584144', '12/10/1989', 25,'DOUTORADO',67,61 );
INSERT INTO ESTUDANTE VALUES (NEXTVAL('ESTUDANTE_matricula'), 'Gabriel Antunes Franco', '47444617350', '09/08/1993', 21, 'MESTRADO',68,61);

INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf, dataNascimento, idade, departamento) values (NEXTVAL('matriculaSequence'), 'João Pereira Neto', '21345781242', '08/09/1996', 18, 41);
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf, dataNascimento, idade, departamento) values (NEXTVAL('matriculaSequence'), 'Antônio Silva', '21346783242', '12/09/1996', 18, 41);
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf, dataNascimento, idade, departamento) values (NEXTVAL('matriculaSequence'), 'Jonas Matias Alves', '21315781242', '13/01/1996', 18, 41);
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf, dataNascimento, idade, departamento) values (NEXTVAL('matriculaSequence'), 'Fabiano Pereira Mendes', '21445781242', '22/04/1996', 18, 41);
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf, dataNascimento, idade, departamento) values (NEXTVAL('matriculaSequence'), 'Manuel Miranda Medeiros', '21345681242', '18/02/1996', 18, 41);
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf, dataNascimento, idade, departamento) values (NEXTVAL('matriculaSequence'), 'Jéssica Santos', '21345781249', '29/03/1996', 18, 41);
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf, dataNascimento, idade, departamento) values (NEXTVAL('matriculaSequence'), 'Adriana Batista Filho', '21345381242', '17/08/1996', 18, 41);
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf, dataNascimento, idade, departamento) values (NEXTVAL('matriculaSequence'), 'Beatriz Siqueira Cardoso', '21341781242', '08/09/1996', 18, 41);
INSERT INTO ESTUDANTE (matricula, nomeAluno, cpf, dataNascimento, idade, departamento) values (NEXTVAL('matriculaSequence'), 'Fernanda Médici Barbosa', '21345681242', '09/08/1996', 18, 41);
 
-- Povoando tabela trabalha
INSERT INTO trabalha(professor, departamento, horasTrab) VALUES (121, 121, 8); 
INSERT INTO trabalha(professor, departamento, horasTrab) VALUES (122, 121, 8);
INSERT INTO trabalha(professor, departamento, horasTrab) VALUES (123, 121, 8);
INSERT INTO trabalha(professor, departamento, horasTrab) VALUES (124, 121, 8);

INSERT INTO TRABALHA (professor, departamento, horasTrab) VALUES (34, 31, 40);
	
INSERT INTO TRABALHA (professor, departamento, horasTrab) VALUES (33, 31, 40);

INSERT INTO TRABALHA (professor, departamento, horasTrab) VALUES (32, 31, 20);
	
INSERT INTO TRABALHA (professor, departamento, horasTrab) VALUES (31, 31, 36);

INSERT INTO trabalha VALUES(111, 111, 30);
INSERT INTO trabalha VALUES(112, 111, 20);
INSERT INTO trabalha VALUES(113, 111, 32);
INSERT INTO trabalha VALUES(114, 111, 27);

INSERT INTO TRABALHA(professor, departamento, horasTrab) VALUES(11, 11, 10);
 INSERT INTO TRABALHA(professor, departamento, horasTrab) VALUES(12, 11, 8);
 INSERT INTO TRABALHA(professor, departamento, horasTrab) VALUES(13, 11, 10);
 INSERT INTO TRABALHA(professor, departamento, horasTrab) VALUES(14, 11, 8);

INSERT INTO TRABALHA VALUES(61,61,40);
INSERT INTO TRABALHA VALUES(62,61,40);
INSERT INTO TRABALHA VALUES(63,61,40);
INSERT INTO TRABALHA VALUES(64,61,40);

INSERT INTO TRABALHA values ('41', '41', '40');
INSERT INTO TRABALHA values ('42', '41', '40');
INSERT INTO TRABALHA values ('43', '41', '40');
INSERT INTO TRABALHA values ('44', '41', '40');


-- Povoando tabela conduz

INSERT INTO conduz (colaborador, projeto) VALUES (124, 121); 
INSERT INTO conduz (colaborador, projeto) VALUES (123, 122); 
INSERT INTO conduz (colaborador, projeto) VALUES (122, 123); 
INSERT INTO conduz (colaborador, projeto) VALUES (121, 124); 
INSERT INTO conduz (colaborador, projeto) VALUES (121, 125); 
INSERT INTO conduz (colaborador, projeto) VALUES (122, 126); 
INSERT INTO conduz (colaborador, projeto) VALUES (123, 126); 
INSERT INTO conduz (colaborador, projeto) VALUES (124, 125); 
INSERT INTO conduz (colaborador, projeto) VALUES (124, 123); 
INSERT INTO conduz (colaborador, projeto) VALUES (123, 121); 

INSERT INTO CONDUZ (colaborador , projeto) VALUES (31, 31);
	
INSERT INTO CONDUZ (colaborador , projeto) VALUES (32, 32);
	
INSERT INTO CONDUZ (colaborador , projeto) VALUES (33, 33);
	
INSERT INTO CONDUZ (colaborador , projeto) VALUES (34, 34);
	
INSERT INTO CONDUZ (colaborador , projeto) VALUES (31, 35);
	
INSERT INTO CONDUZ (colaborador , projeto) VALUES (33, 36);
	
INSERT INTO CONDUZ (colaborador , projeto) VALUES (32, 37);
	
INSERT INTO CONDUZ (colaborador , projeto) VALUES (34, 37);
	
INSERT INTO CONDUZ (colaborador , projeto) VALUES (32, 36);
	
INSERT INTO CONDUZ (colaborador , projeto) VALUES (33, 31);

INSERT INTO conduz VALUES(111,112);
INSERT INTO conduz VALUES(111,113);
INSERT INTO conduz VALUES(112,111);
INSERT INTO conduz VALUES(112,113);
INSERT INTO conduz VALUES(112,114);
INSERT INTO conduz VALUES(113,115);
INSERT INTO conduz VALUES(113,116);
INSERT INTO conduz VALUES(113,112);
INSERT INTO conduz VALUES(114,115);
INSERT INTO conduz VALUES(114,111);
	
INSERT INTO CONDUZ VALUES(11, 16);
 INSERT INTO CONDUZ VALUES(12, 15);
 INSERT INTO CONDUZ VALUES(13, 14);
 INSERT INTO CONDUZ VALUES(14, 13);
 INSERT INTO CONDUZ VALUES(11, 12);
 INSERT INTO CONDUZ VALUES(12, 11);
 INSERT INTO CONDUZ VALUES(13, 16);
 INSERT INTO CONDUZ VALUES(14, 15);
 INSERT INTO CONDUZ VALUES(11, 14);
 INSERT INTO CONDUZ VALUES(12, 13);

INSERT INTO CONDUZ VALUES (64,66);
INSERT INTO CONDUZ VALUES (62,62);
INSERT INTO CONDUZ VALUES (63,63);
INSERT INTO CONDUZ VALUES (61,62);
INSERT INTO CONDUZ VALUES (61,66);
INSERT INTO CONDUZ VALUES (64,63);
INSERT INTO CONDUZ VALUES (63,64);
INSERT INTO CONDUZ VALUES (62,61);
INSERT INTO CONDUZ VALUES (61,65);
INSERT INTO CONDUZ VALUES (64,65);

INSERT INTO CONDUZ values ('41', '41');
INSERT INTO CONDUZ values ('42', '41');
INSERT INTO CONDUZ values ('43', '42');
INSERT INTO CONDUZ values ('41', '42');
INSERT INTO CONDUZ values ('44', '43');
INSERT INTO CONDUZ values ('41', '43');
INSERT INTO CONDUZ values ('41', '44');
INSERT INTO CONDUZ values ('42', '44');
INSERT INTO CONDUZ values ('41', '45');
INSERT INTO CONDUZ values ('42', '45');
INSERT INTO CONDUZ values ('43', '45');


-- Povoando a tabela pesquisa
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (121, 129, 121); 
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (122, 128, 121);
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (123, 127, 122);
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (124, 126, 123);
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (125, 125, 124);
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (125, 124, 124);
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (124, 123, 123);
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (123, 122, 122);
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (122, 121, 121);
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (121, 122, 121);
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (122, 123, 122);
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (123, 124, 123);
INSERT INTO pesquisa(projeto, assistente, supervisor) VALUES (124, 125, 124);

INSERT INTO PESQUISA (projeto, assistente, supervisor) VALUES (31,38,31);
	
INSERT INTO PESQUISA (projeto, assistente, supervisor) VALUES (32,32,32);
	
INSERT INTO PESQUISA (projeto, assistente, supervisor) VALUES (33,33,33);
	
INSERT INTO PESQUISA (projeto, assistente, supervisor) VALUES (34,34,34);
	
INSERT INTO PESQUISA (projeto, assistente, supervisor) VALUES (33,31,34);
	
INSERT INTO PESQUISA (projeto, assistente, supervisor) VALUES (31,34,32);
	
INSERT INTO PESQUISA (projeto, assistente, supervisor) VALUES (35,33,31);
	
INSERT INTO PESQUISA (projeto, assistente, supervisor) VALUES (36,37,32);
	
INSERT INTO PESQUISA (projeto, assistente, supervisor) VALUES (32,36,33);
	
INSERT INTO pesquisa VALUES(111,112,112);
INSERT INTO pesquisa VALUES(111,117,113);
INSERT INTO pesquisa VALUES(112,114,111);
INSERT INTO pesquisa VALUES(112,111,113);
INSERT INTO pesquisa VALUES(112,118,114);
INSERT INTO pesquisa VALUES(113,116,112);
INSERT INTO pesquisa VALUES(114,112,111);

INSERT INTO PESQUISA(assistente, supervisor, projeto) VALUES (11,11,11);
INSERT INTO PESQUISA(assistente, supervisor, projeto) VALUES (12,11,11);
INSERT INTO PESQUISA(assistente, supervisor, projeto) VALUES (13,12,11);
INSERT INTO PESQUISA(assistente, supervisor, projeto) VALUES (14,12,12);
INSERT INTO PESQUISA(assistente, supervisor, projeto) VALUES (15,13,12);
INSERT INTO PESQUISA(assistente, supervisor, projeto) VALUES (16,13,15);
INSERT INTO PESQUISA(assistente, supervisor, projeto) VALUES (17,14,11);
INSERT INTO PESQUISA(assistente, supervisor, projeto) VALUES (18,14,14);
INSERT INTO PESQUISA(assistente, supervisor, projeto) VALUES (19,11,15);
INSERT INTO PESQUISA(assistente, supervisor, projeto) VALUES (19,12,14);

INSERT INTO PESQUISA VALUES (64,65,61);
INSERT INTO PESQUISA VALUES (66,65,64);
INSERT INTO PESQUISA VALUES (61,67,63);
INSERT INTO PESQUISA VALUES (65,68,62);
INSERT INTO PESQUISA VALUES (63,69,61);
INSERT INTO PESQUISA VALUES (62,61,64);
INSERT INTO PESQUISA VALUES (63,64,63);
INSERT INTO PESQUISA VALUES (65,61,62);
INSERT INTO PESQUISA VALUES (66,62,61);
INSERT INTO PESQUISA VALUES (61,63,64);

INSERT INTO PESQUISA values ('41', '42', '41'); 
INSERT INTO PESQUISA values ('42', '41', '42'); 
INSERT INTO PESQUISA values ('43', '44', '43'); 
INSERT INTO PESQUISA values ('44', '43', '44'); 
INSERT INTO PESQUISA values ('45', '46', '41'); 
INSERT INTO PESQUISA values ('45', '48', '42'); 
INSERT INTO PESQUISA values ('41', '47', '43'); 
INSERT INTO PESQUISA values ('42', '48', '44'); 
INSERT INTO PESQUISA values ('43', '49', '41'); 
INSERT INTO PESQUISA values ('44', '41', '42'); 

--Exercício 2

----------------------------------------------------------------------------------------------------------------------
--a) Selecionar o número funcional, o nome e a posição dos professores que tem mais do que 35 anos em ordem alfabética
----------------------------------------------------------------------------------------------------------------------

SELECT numFunc, nomeProf, posicao 
FROM professor
WHERE idade > 35
ORDER BY nomeProf;

/*
43;"Aércio Sebastião Borges";"Assistente"
44;"Alberto Oliveira Barbosa";"Aux. Ens."
121;"Aleandra da Silva Sampaio";"ADJUNTO"
122;"Ananda Silva Singh";"ASSOCIADO"
123;"Andre Carlos Menck";"ADJUNTO"
41;"Ben Hur Braga Taliberti";"Titular"
13;"ISRAEL RODRIGUES";"ADJUNTO 1"
61;"JOAQUIM CARMELITO DE ANDRADE";"ADJUNTO 1"
33;"Marielza";"EFETIVO"
*/

-----------------------------------------------------------------------------------------------------
--b) Selecionar o nome dos chefes de departamento cujo endereço do departamento inclua ‘João Naves’. 
-----------------------------------------------------------------------------------------------------

INSERT INTO PROFESSOR (numFunc,nomeProf, cpf, dataNascimento, idade, ramal, posicao, area) VALUES (NEXTVAL('prof_seq'), 'Girafales','98739822900','1985-07-19', 29, '5321', 'EFETIVO','Biologia Marinha');
INSERT INTO departamento (numDepto, sigla, nomeDepto, endereco, chefeDepto) VALUES (NEXTVAL('seq_departamento'),'FAGEN','Faculdade de Gestao e Negocios','Av. João Naves de Ávila, 2121 - Santa Monica, Uberlandia - MG',121);

--where
SELECT p.nomeProf
FROM professor p
WHERE p.numFunc IN (
SELECT d.chefeDepto
FROM departamento d
WHERE d.endereco LIKE '%João Naves%');

--from
SELECT p.nomeProf
FROM professor p
INNER JOIN departamento d
ON p.numFunc = d.chefeDepto
WHERE d.endereco LIKE '%João Naves%';

--resposta
/*
"Aleandra da Silva Sampaio";"Av. João Naves de Ávila, 2121 - Santa Monica, Uberlandia - MG"
"Marcelo da Silva";"Av. João Naves de Ávila, 2121 - Santa Monica, Uberlandia - MG"
"MARIA CAMILA";"Av. João Naves de Ávila, 2121, Bairro Sta Mônica"
*/

-----------------------------------------------------------------------------------------------------------------------------------------
--c) Selecionar o nome de todos os professores que trabalham no departamento chefiado pela professora ‘Maria Camila’ em ordem alfabética.
-----------------------------------------------------------------------------------------------------------------------------------------

--where
SELECT p.nomeProf
FROM professor P
WHERE p.numFunc IN (
SELECT t.professor
FROM trabalha t
WHERE t.departamento IN (
SELECT d.numDepto
FROM departamento d
WHERE chefeDepto IN(
SELECT numFunc
FROM professor
WHERE nomeProf = 'MARIA CAMILA') ) );

--from
SELECT p.nomeProf
FROM professor p
INNER JOIN trabalha t
ON t.professor = p.numFunc
INNER JOIN departamento d
ON d.numDepto = t.departamento
WHERE chefeDepto IN(
SELECT numFunc
FROM professor
WHERE nomeProf = 'MARIA CAMILA');

/*
"MARIA CAMILA"
"ALESSANDRA SANTOS"
"ISRAEL RODRIGUES"
"RENATO TEIXEIRA"
*/

-----------------------------------------------------------------------------------------------------------------------
--d) Selecionar o nome do departamento e o nome do pesquisador principal do projeto cujo número de identificação é 121. 
-----------------------------------------------------------------------------------------------------------------------

--where
SELECT d.nomeDepto, p.nomeProf
FROM professor p, departamento d
WHERE p.numFunc IN (
SELECT prj.pesquisadorPrincipal
FROM projeto prj
WHERE prj.numProjeto = 121)
AND (p.numFunc, d.numDepto) IN (
SELECT t.professor, t.departamento
FROM trabalha t)

--from
SELECT  d.nomeDepto, p.nomeProf
FROM professor p
INNER JOIN projeto prj
ON prj.pesquisadorPrincipal = p.numFunc
INNER JOIN trabalha t
ON t.professor = p.numFunc
INNER JOIN departamento d
ON d.numDepto = t.departamento
WHERE prj.numProjeto = 121;

/*
"Faculdade de Gestao e Negocios";"Aleandra da Silva Sampaio"
*/

--------------------------------------------------------------------------------------------------------------
--e) Selecionar o nome dos colaboradores do projeto chefiado pelo pesquisador principal chamado ‘Maria Costa’.
--------------------------------------------------------------------------------------------------------------

--where 
SELECT DISTINCT p.nomeProf
FROM professor p
WHERE p.numFunc IN (
SELECT c.colaborador
FROM conduz c
WHERE c.projeto IN (
SELECT prj.numProjeto
FROM projeto prj
WHERE prj.pesquisadorPrincipal IN (
SELECT numFunc
FROM professor
WHERE nomeProf = 'Maria Costa') ) );

--from
SELECT DISTINCT p.nomeProf
FROM professor p
INNER JOIN conduz c
ON c.colaborador = p.numFunc
INNER JOIN projeto prj
ON prj.numProjeto = c.projeto
WHERE prj.pesquisadorPrincipal IN (
SELECT numFunc
FROM professor
WHERE nomeProf = 'Maria Costa');

/*
"Joao Fernandez"
"Marcelo da Silva"
"Maria Costa"
*/

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--f)  Selecionar os nomes dos supervisores dos alunos que participam da pesquisa do projeto cujo número de identificação é 122. Se mais de um aluno for supervisionado pelo mesmo professor o nome do professor deve aparecer apenas uma vez. 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--where
SELECT DISTINCT prof.nomeProf
FROM professor prof
WHERE prof.numFunc IN (
SELECT pes.supervisor
FROM pesquisa pes
WHERE pes.assistente IN (
SELECT e.matricula
FROM estudante e )
AND pes.projeto IN (
SELECT prj.numProjeto
FROM projeto prj
WHERE prj.numProjeto = 122));

--from
SELECT DISTINCT prof.nomeProf
FROM professor prof
INNER JOIN pesquisa pes
ON pes.supervisor = prof.numFunc
INNER JOIN estudante e
ON e.matricula = pes.assistente
INNER JOIN projeto prj
ON prj.numProjeto = pes.projeto
WHERE prj.numProjeto = 122

/*
"Aleandra da Silva Sampaio"
"Ananda Silva Singh"
*/

----------------------------------------------------------------------------------------------------------------------------------
--g) Selecionar os nomes dos supervisores e os nomes dos alunos que participam da pesquisa de projetos financiados pela ‘FAPEMIG’.
----------------------------------------------------------------------------------------------------------------------------------

--where
SELECT DISTINCT sup.nomeProf, es.nomeAluno
FROM professor sup, estudante es
WHERE sup.numFunc IN (
SELECT pes.supervisor
FROM pesquisa pes
WHERE pes.projeto IN (
SELECT prj.numProjeto
FROM projeto prj
WHERE prj.nomeAgencia = 'FAPEMIG') AND
pes.assistente = es.matricula)


--from
SELECT DISTINCT sup.nomeProf, es.nomeAluno
FROM professor sup
INNER JOIN pesquisa pes
ON pes.supervisor = sup.numFunc
INNER JOIN projeto prj
ON prj.numProjeto = pes.projeto
INNER JOIN estudante es
ON es.matricula = pes.assistente
WHERE prj.nomeAgencia = 'FAPEMIG'
ORDER BY sup.nomeProf

/*
"Alberto Oliveira Barbosa";"Beatriz Siqueira Cardoso"
"Ananda Silva Singh";"Isabel Catarina LÃ­via Gomes"
"JOAQUIM CARMELITO DE ANDRADE";"Gabriel Antunes Franco"
"Pedro Coelho";"Joao Guerra"
"Girafales";"Rafaela"
"Charles Xavier";"Marco Túlio"
"Tarcisio";"Breno"
"Aleandra da Silva Sampaio";"Hugo Samuel Gabriel Oliveira"
"Aleandra da Silva Sampaio";"Nathan Filipe Ian Moura "
"JOSELITO DOS REIS";"Joselito Marcones de Araújo"
"Abadia Gilda Buso Matoso";"João Pereira Neto"
"JOSEMAR ARMANDO BRAGA";"Juberson Arlindo Menezes"
"Girafales";"Marcio Neto"
"Marcelo da Silva";"Raif Cerveny"
"MARIA CAMILA";"Maria Carvalho"
"MARIA CAMILA";"Helena Magalhaes"
"ISRAEL RODRIGUES";"Thais Pacheco"
"Marielza";"Pedro"
"Ben Hur Braga Taliberti";"Jéssica Santos"
"Tarcisio";"Karine"
"RENATO TEIXEIRA";"Bruna Rodrigues"
"Maria Costa";"Gabriel da Silva"
"JOSELITO DOS REIS";"Emanoel da Silva Xavier"
"JOSEMAR ARMANDO BRAGA";"Rafael Carmelitano Oliveira"
"Charles Xavier";"Lucas"
"Tarcisio";"Lucas"
"Aleandra da Silva Sampaio";"Elisa Giovanna Martins"
"Marielza";"Marcio Neto"
"ALESSANDRA SANTOS";"Jose Carlos Barreto"
"Joao Fernandez";"Pablo Leyes"
"JOANESCLEIDE CAMARGOS BARBOSA";"Joao Aparecido da Silva"
"Abadia Gilda Buso Matoso";"Beatriz Siqueira Cardoso"
"Joao Fernandez";"Pedro Silva"
"Alberto Oliveira Barbosa";"Jonas Matias Alves"
"MARIA CAMILA";"Joao Silva Nunes"
"Aleandra da Silva Sampaio";"Marcela Betina Marina Moura"
*/

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--h)Selecionar o nome dos colaboradores de projetos e o número de identificação dos projetos em que eles colaboram apenas de projetos cujo orçamento seja superior a R$20.000,00.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--where
SELECT prof.nomeProf, prj.numProjeto
FROM professor prof, projeto prj
WHERE (prof.numFunc, prj.numProjeto) IN (
SELECT con.colaborador, con.projeto
FROM conduz con
WHERE con.projeto IN (
SELECT prj.numProjeto
FROM projeto prj
WHERE prj.orcamento > 20000.00 ))

--from
SELECT prof.nomeProf, prj.numProjeto
FROM professor prof
INNER JOIN conduz con
ON con.colaborador = prof.numFunc
INNER JOIN projeto prj
ON prj.numProjeto = con.projeto
WHERE prj.orcamento > 20000.00

/*
"Aleandra da Silva Sampaio";125
"Aleandra da Silva Sampaio";124
"Ananda Silva Singh";126
"Ananda Silva Singh";123
"Andre Carlos Menck";126
"Andre Carlos Menck";122
"Antonio Sergio Penedo";125
"Antonio Sergio Penedo";123
"Girafales";35
"Girafales";31
"Tarcisio";37
"Tarcisio";32
"Marielza";31
"Charles Xavier";37
"Charles Xavier";34
"Joao Fernandez";115
"Pedro Coelho";115
"MARIA CAMILA";14
"MARIA CAMILA";16
"MARIA CAMILA";12
"ALESSANDRA SANTOS";13
"ISRAEL RODRIGUES";16
"ISRAEL RODRIGUES";14
"RENATO TEIXEIRA";13
"Ben Hur Braga Taliberti";42
"Ben Hur Braga Taliberti";43
"Ben Hur Braga Taliberti";41
"Abadia Gilda Buso Matoso";41
"Aércio Sebastião Borges";42
"Alberto Oliveira Barbosa";43

*/

-------------------------------------------------------------------------------------------
--i) Selecionar os nomes dos departamentos que possuem professores coordenadores (i.e., são
--pesquisadores principais) de projetos financiados pela ‘CAPES’ ou ‘CNPQ’. Mostre três
--construções de consulta diferentes para responder essa questão. 
--------------------------------------------------------------------------------------------

--consulta 1

SELECT DISTINCT dep.nomeDepto
FROM departamento dep
INNER JOIN trabalha t
ON dep.numDepto = t.departamento
INNER JOIN professor prof
ON prof.numFunc = t.professor
INNER JOIN projeto prj
ON prj.pesquisadorPrincipal = prof.numFunc
WHERE nomeAgencia = 'CAPES' or nomeAgencia = 'CNPQ'

--consulta 2

SELECT DISTINCT dep.nomeDepto
FROM departamento dep
WHERE dep.numDepto IN (
SELECT t.departamento
FROM trabalha t
INNER JOIN professor prof
ON prof.numFunc = t.professor
INNER JOIN projeto prj
ON prj.pesquisadorPrincipal = prof.numFunc
WHERE nomeAgencia = 'CAPES' or nomeAgencia = 'CNPQ')

--consulta 3

SELECT DISTINCT dep.nomeDepto
FROM departamento dep
WHERE dep.numDepto IN (
SELECT t.departamento
FROM trabalha t
WHERE t.professor IN (
SELECT prof.numFunc
FROM professor prof
INNER JOIN projeto prj
ON prj.pesquisadorPrincipal = prof.numFunc
WHERE nomeAgencia = 'CAPES' or nomeAgencia = 'CNPQ'))

/*
"Faculdade de Engenharia Mecatronica"
"FACULDADE DE QUÍMICA"
"FACULDADE DE LETRAS"
"Faculdade de Gestao e Negocios"
"FACULDADE DE MEDICINA"

*/









