--Pedro Henrique da Silva 11511BSI257
--Carolina Alves da Silva 11411BSI234

DROP SCHEMA IF EXISTS aeroporto CASCADE;
CREATE SCHEMA aeroporto;
SET SEARCH_PATH TO aeroporto;

--1) Crie o schema com o nome AEROPORTO e siga as orientações abaixo para a criação das tabelas dentro desse schema (usando SQL DDL): 


CREATE TABLE tipo_aviao(
	Modelo varchar(20) CHECK (Modelo IN ('Airbus A310', 'Boeing 777', 'Embraer ERJ-170')),
	Capacidade integer NOT NULL,
	Peso integer NOT NULL,
	CONSTRAINT tipo_aviaoPK PRIMARY KEY (Modelo)
);

CREATE TABLE hangar(
	Numero INTEGER,
	Capacidade INTEGER NOT NULL DEFAULT 15,
	Localizacao VARCHAR(40) NOT NULL,
	CONSTRAINT hangar_PK PRIMARY KEY (Numero)
);

CREATE TABLE aeronave(
	NumReg SERIAL,
	Modelo varchar(20) NOT NULL,
	Hangar integer NOT NULL,
	CONSTRAINT aeronave_PK PRIMARY KEY (NumReg),
	CONSTRAINT aeronave_modelo_FK FOREIGN KEY (Modelo) REFERENCES tipo_aviao(Modelo),
	CONSTRAINT aeronave_hangar_FK FOREIGN KEY (Hangar) REFERENCES hangar(Numero)
);


CREATE TABLE servico(
	Data DATE,
	CodTrabalho INTEGER,
	Aeronave INTEGER,
	Horas INTEGER NOT NULL,
	CONSTRAINT PK_Servico PRIMARY KEY (Data,CodTrabalho,Aeronave),
	CONSTRAINT FK_Servico FOREIGN KEY (Aeronave) REFERENCES aeronave(NumReg)
);

CREATE TABLE pessoa(
	CPF varchar(11),
	Nome varchar(45) NOT NULL,
	Endereco varchar(50) NOT NULL,
	Fone varchar (11) NOT NULL,
	CONSTRAINT PK_pessoa PRIMARY KEY (CPF)
);

CREATE TABLE proprietario(
	CPF varchar(11),
	CONSTRAINT PK_proprietario PRIMARY KEY (CPF),
	CONSTRAINT FK_proprietario FOREIGN KEY (CPF) REFERENCES pessoa(CPF)
);

CREATE TABLE piloto(
	CPF varchar(11),
	NroLicenca varchar(11) NOT NULL,
	Restricao varchar(30) NOT NULL,
	CONSTRAINT PK_CPF PRIMARY KEY (CPF),
	CONSTRAINT FK_CPF FOREIGN KEY (CPF) REFERENCES pessoa(CPF)
);

CREATE TABLE funcionario(
	CPF varchar(11),
	Salario numeric NOT NULL CHECK (Salario >= 0),
	Turno varchar(10) NOT NULL CHECK (Turno IN ('Diurno', 'Noturno')),
	CONSTRAINT PK_funcionario PRIMARY KEY (CPF),
	CONSTRAINT FK_funcionario FOREIGN KEY (CPF) REFERENCES pessoa(CPF)
);

CREATE TABLE manutencao(
	Data Date,
	CodTrabalho integer,
	Aeronave integer,
	CPF varchar(11),
	CONSTRAINT PK_manutencao PRIMARY KEY (Data, CodTrabalho, Aeronave, CPF),
	CONSTRAINT FK_manutencao_v FOREIGN KEY (Data, CodTrabalho, Aeronave) REFERENCES servico(data, Codtrabalho, Aeronave),
	CONSTRAINT FK_manutencao_cpf FOREIGN KEY (CPF) REFERENCES funcionario(CPF)
);

CREATE TABLE trabalha_em(
	CPF varchar(11),
	Modelo varchar(20),
	CONSTRAINT PK_trabalha_em PRIMARY KEY (CPF, Modelo),
	CONSTRAINT FK_trabalha_em_cpf FOREIGN KEY (CPF) REFERENCES funcionario(CPF),
	CONSTRAINT FK_trabalha_em_modelo FOREIGN KEY (Modelo) REFERENCES tipo_aviao(Modelo)	
);

CREATE TABLE voa(
	CPF varchar(11),
	Modelo varchar(20),
	CONSTRAINT PK_voa PRIMARY KEY (CPF, Modelo),
	CONSTRAINT FK_voa_CPF FOREIGN KEY (CPF) REFERENCES piloto(CPF),
	CONSTRAINT FK_voa_Modelo FOREIGN KEY (Modelo) REFERENCES tipo_aviao(Modelo)	
);

CREATE TABLE pertence(
	NumReg integer,
	CPF varchar(11),
	CONSTRAINT PK_pertence PRIMARY KEY (NumReg,CPF),
	CONSTRAINT FK_pertence_NumReg FOREIGN KEY (NumReg) REFERENCES aeronave(NumReg),
	CONSTRAINT FK_pertence_CPF FOREIGN KEY (CPF) REFERENCES proprietario(CPF)
);

--2) Executando comandos da DDL, modificar (ALTER TABLE) pelo menos um campo de 6 das tabelas criadas.

ALTER TABLE pertence
RENAME NumReg to NumRegistro; 

ALTER TABLE pessoa
ADD Sexo varchar(10);

ALTER TABLE funcionario
ADD Cargo varchar(25);

ALTER TABLE tipo_aviao
ADD marca varchar(25);

ALTER TABLE piloto
DROP COLUMN restricao;

ALTER TABLE hangar
DROP COLUMN capacidade;


--3) Faça a carga inicial de dados. Inserir pelo menos quatro tuplas em cada tabela. 


INSERT INTO tipo_aviao(Modelo,Capacidade,Peso) VALUES ('Airbus A310', 50, 276800);
INSERT INTO tipo_aviao(Modelo,Capacidade,Peso) VALUES ('Boeing 777', 40, 41413);
INSERT INTO tipo_aviao(Modelo,Capacidade,Peso) VALUES ('Embraer ERJ-170', 60, 28808);

INSERT INTO hangar (Numero,Localizacao) VALUES (1, 'Uberlandia');
INSERT INTO hangar (Numero,Localizacao) VALUES (3, 'Sao Paulo');
INSERT INTO hangar (Numero,Localizacao) VALUES (5, 'Rio de Janeiro');
INSERT INTO hangar (Numero,Localizacao) VALUES (7, 'Birigui');

INSERT INTO aeronave (Modelo,Hangar) VALUES ('Airbus A310', 1);
INSERT INTO aeronave (Modelo,Hangar) VALUES ('Airbus A310', 3);
INSERT INTO aeronave (Modelo,Hangar) VALUES ('Boeing 777', 5);
INSERT INTO aeronave (Modelo,Hangar) VALUES ('Embraer ERJ-170', 7);

INSERT INTO servico (Data,CodTrabalho,Aeronave,Horas) VALUES ('20/11/2017', 1, 1, 20);
INSERT INTO servico (Data,CodTrabalho,Aeronave,Horas) VALUES ('21/11/2017', 2, 2, 21);
INSERT INTO servico (Data,CodTrabalho,Aeronave,Horas) VALUES ('22/11/2017', 3, 3, 22);
INSERT INTO servico (Data,CodTrabalho,Aeronave,Horas) VALUES ('23/11/2017', 4, 4, 23);

INSERT INTO pessoa (CPF,Nome,Endereco,Fone) VALUES ('11111111111', 'Ana', 'Rua 1', '1111-1111');
INSERT INTO pessoa (CPF,Nome,Endereco,Fone) VALUES ('22222222222', 'Bia', 'Rua 2', '2222-2222');
INSERT INTO pessoa (CPF,Nome,Endereco,Fone) VALUES ('33333333333', 'Carol', 'Rua 3', '3333-3333');
INSERT INTO pessoa (CPF,Nome,Endereco,Fone) VALUES ('44444444444', 'Diana', 'Rua 4', '4444-4444');

INSERT INTO proprietario (CPF) VALUES ('11111111111');
INSERT INTO proprietario (CPF) VALUES ('22222222222');
INSERT INTO proprietario (CPF) VALUES ('33333333333');
INSERT INTO proprietario (CPF) VALUES ('44444444444');

INSERT INTO piloto (CPF, NroLicenca, Restricao) VALUES ('11111111111', '123', 'Nenhuma');
INSERT INTO piloto (CPF, NroLicenca, Restricao) VALUES ('22222222222', '234', 'Nenhuma');
INSERT INTO piloto (CPF, NroLicenca, Restricao) VALUES ('33333333333', '345', 'Nenhuma');
INSERT INTO piloto (CPF, NroLicenca, Restricao) VALUES ('44444444444', '456', 'Nenhuma');

INSERT INTO funcionario (CPF, Salario, Turno) VALUES ('11111111111', 4000, 'Diurno');
INSERT INTO funcionario (CPF, Salario, Turno) VALUES ('22222222222', 5000, 'Diurno');
INSERT INTO funcionario (CPF, Salario, Turno) VALUES ('33333333333', 6000, 'Noturno');
INSERT INTO funcionario (CPF, Salario, Turno) VALUES ('44444444444', 8000, 'Noturno');

INSERT INTO manutencao (Data,CodTrabalho,Aeronave,CPF) VALUES ('20/11/2017',1,1,'11111111111');
INSERT INTO manutencao (Data,CodTrabalho,Aeronave,CPF) VALUES ('21/11/2017',2,2,'22222222222');
INSERT INTO manutencao (Data,CodTrabalho,Aeronave,CPF) VALUES ('22/11/2017',3,3,'33333333333');
INSERT INTO manutencao (Data,CodTrabalho,Aeronave,CPF) VALUES ('23/11/2017',4,4,'44444444444');

INSERT INTO trabalha_em (CPF,Modelo) VALUES ('11111111111', 'Airbus A310');
INSERT INTO trabalha_em (CPF,Modelo) VALUES ('22222222222', 'Airbus A310');
INSERT INTO trabalha_em (CPF,Modelo) VALUES ('33333333333', 'Boeing 777');
INSERT INTO trabalha_em (CPF,Modelo) VALUES ('44444444444', 'Embraer ERJ-170');

INSERT INTO voa VALUES ('11111111111', 'Airbus A310');
INSERT INTO voa VALUES ('22222222222', 'Airbus A310');
INSERT INTO voa VALUES ('33333333333', 'Boeing 777');
INSERT INTO voa VALUES ('44444444444', 'Embraer ERJ-170');

INSERT INTO pertence VALUES (1, '11111111111');
INSERT INTO pertence VALUES (2, '22222222222');
INSERT INTO pertence VALUES (3, '33333333333');
INSERT INTO pertence VALUES (4, '44444444444');
