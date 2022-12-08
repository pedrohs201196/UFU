-- GRUPO PK
-- MARCELO ALVES PRADO
-- PEDRO HENRIQUE DA SILVA
-- STEFFAN MARTINS ALVES

-- EX01

-- Criação da base de dados

SET search_path TO banco;
DROP TABLE IF EXISTS ClienteConta;
DROP TABLE IF EXISTS Operacao;
DROP TABLE IF EXISTS Conta;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Dependentes;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Agencia;
DROP FUNCTION IF EXISTS deletarrestricoes();
DROP FUNCTION IF EXISTS criarrestricoes();
DROP SCHEMA IF EXISTS banco;

CREATE SCHEMA banco;
SET search_path TO banco;

-- Criação das tabelas

CREATE TABLE Agencia(
	codigo INTEGER,
	nome VARCHAR NOT NULL,
	municipio VARCHAR NOT NULL,
	estado VARCHAR(2) NOT NULL,

	-- Restrições

	CONSTRAINT agenciaPK PRIMARY KEY (codigo)
);

CREATE TABLE Funcionario(
	num_func INTEGER,
	nome VARCHAR NOT NULL,
	telefone VARCHAR NOT NULL,
	data_adm DATE NOT NULL,
	agencia INTEGER NOT NULL,
	supervisor INTEGER NOT NULL,

	-- Restrições

	CONSTRAINT funcionarioPK PRIMARY KEY (num_func),
	CONSTRAINT agencia_funcFK FOREIGN KEY (agencia) REFERENCES Agencia(codigo),
	CONSTRAINT supervisorFK FOREIGN KEY (supervisor) REFERENCES Funcionario(num_func)
);

CREATE TABLE Dependentes(
	funcionario INTEGER,
	dependente VARCHAR,

	-- Restrições

	CONSTRAINT dependentesPK PRIMARY KEY (funcionario,dependente),
	CONSTRAINT funcionarioFK FOREIGN KEY (funcionario) REFERENCES Funcionario(num_func)
);

CREATE TABLE Cliente(
	id INTEGER,
	nome VARCHAR NOT NULL,
	cpf VARCHAR NOT NULL,
	datanasc DATE NOT NULL,
	endereco VARCHAR NOT NULL,
	cidade VARCHAR NOT NULL,
	estado VARCHAR(2) NOT NULL,
	gerente INTEGER NOT NULL,

	-- Restrições

	CONSTRAINT clientePK PRIMARY KEY (id),
	CONSTRAINT gerenteFK FOREIGN KEY (gerente) REFERENCES Funcionario(num_func)
);

CREATE TABLE Conta(
	agencia INTEGER,
	numero INTEGER,
	saldo FLOAT NOT NULL,
	ultimo_acesso DATE,

	-- Restrições

	CONSTRAINT contaPK PRIMARY KEY (agencia,numero),
	CONSTRAINT agencia_contFK FOREIGN KEY (agencia) REFERENCES Agencia(codigo)
);

CREATE TABLE Operacao(
	agencia INTEGER,
	numero INTEGER,
	seq INTEGER,
	tipo CHAR NOT NULL,
	descricao VARCHAR NOT NULL,
	datahora TIME NOT NULL,
	valor FLOAT NOT NULL,

	-- Restrições

	CONSTRAINT operacaoPK PRIMARY KEY (agencia, numero, seq),
	CONSTRAINT conta_operFK FOREIGN KEY (agencia, numero) REFERENCES Conta(agencia,numero)
);

CREATE TABLE ClienteConta(
	agencia INTEGER,
	numero INTEGER,
	id INTEGER,

	-- Restrições

	CONSTRAINT clientecontaPK PRIMARY KEY (agencia,numero,id),
	CONSTRAINT conta_clieFK FOREIGN KEY (agencia,numero) REFERENCES Conta(agencia,numero),
	CONSTRAINT clienteFK FOREIGN KEY (id) REFERENCES Cliente(id)

);

-- EX02

CREATE FUNCTION deletarrestricoes() RETURNS void AS '

ALTER TABLE Funcionario DROP CONSTRAINT IF EXISTS agencia_funcFK;
ALTER TABLE Funcionario DROP CONSTRAINT IF EXISTS supervisorFK;
ALTER TABLE Dependentes DROP CONSTRAINT IF EXISTS funcionarioFK;
ALTER TABLE Cliente DROP CONSTRAINT IF EXISTS gerenteFK;
ALTER TABLE Conta DROP CONSTRAINT IF EXISTS agencia_contFK;
ALTER TABLE Operacao DROP CONSTRAINT IF EXISTS conta_operFK;
ALTER TABLE ClienteConta DROP CONSTRAINT IF EXISTS conta_clieFK;
ALTER TABLE ClienteConta DROP CONSTRAINT IF EXISTS clienteFK;

ALTER TABLE Agencia DROP CONSTRAINT IF EXISTS agenciaPK;
ALTER TABLE Funcionario DROP CONSTRAINT IF EXISTS funcionarioPK;
ALTER TABLE Dependentes DROP CONSTRAINT IF EXISTS dependentesPK;
ALTER TABLE Cliente DROP CONSTRAINT IF EXISTS clientePK; 
ALTER TABLE Conta DROP CONSTRAINT IF EXISTS contaPK; 
ALTER TABLE Operacao DROP CONSTRAINT IF EXISTS operacaoPK;
ALTER TABLE ClienteConta DROP CONSTRAINT IF EXISTS clientecontaPK;

' LANGUAGE SQL;

-- EX03

CREATE FUNCTION criarrestricoes() RETURNS void AS '

ALTER TABLE Agencia ADD CONSTRAINT agenciaPK PRIMARY KEY (codigo);
ALTER TABLE Funcionario ADD CONSTRAINT funcionarioPK PRIMARY KEY (num_func);
ALTER TABLE Dependentes ADD CONSTRAINT dependentesPK PRIMARY KEY (funcionario, dependente);
ALTER TABLE Cliente ADD CONSTRAINT clientePK PRIMARY KEY (id);
ALTER TABLE Conta ADD CONSTRAINT contaPK PRIMARY KEY (agencia, numero);
ALTER TABLE Operacao ADD CONSTRAINT operacaoPK PRIMARY KEY (agencia, numero, seq);
ALTER TABLE ClienteConta ADD CONSTRAINT clientecontaPK PRIMARY KEY (agencia, numero, id);

ALTER TABLE Funcionario ADD CONSTRAINT agencia_funcFK FOREIGN KEY (agencia) REFERENCES Agencia(codigo);
ALTER TABLE Funcionario ADD CONSTRAINT supervisorFK FOREIGN KEY (supervisor) REFERENCES Funcionario(num_func);
ALTER TABLE Dependentes ADD CONSTRAINT funcionarioFK FOREIGN KEY (funcionario) REFERENCES Funcionario(num_func);
ALTER TABLE Cliente ADD CONSTRAINT gerenteFK FOREIGN KEY (gerente) REFERENCES Funcionario(num_func);
ALTER TABLE Conta ADD CONSTRAINT agencia_contFK FOREIGN KEY (agencia) REFERENCES Agencia(codigo);
ALTER TABLE Operacao ADD CONSTRAINT conta_operFK FOREIGN KEY (agencia, numero) REFERENCES Conta(agencia,numero);
ALTER TABLE ClienteConta ADD CONSTRAINT conta_clieFK FOREIGN KEY (agencia,numero) REFERENCES Conta(agencia,numero);
ALTER TABLE ClienteConta ADD CONSTRAINT clienteFK FOREIGN KEY (id) REFERENCES Cliente(id);

' LANGUAGE SQL;

-- EX04

SELECT deletarrestricoes();

INSERT INTO Agencia(codigo,nome,municipio,estado) VALUES(1,'Tubal Vilela','Uberlândia','MG');
INSERT INTO Agencia(codigo,nome,municipio,estado) VALUES(2,'UFU','Uberlândia','MG');
INSERT INTO Agencia(codigo,nome,municipio,estado) VALUES(3,'Umuarama','Uberlândia','MG');
INSERT INTO Agencia(codigo,nome,municipio,estado) VALUES(1,'Clarimundo Carneiro','Uberlândia','MG');
-- Aqui uma restrição de integridade é violada pois a chave está sendo repetida no codigo da Agência

SELECT criarrestricoes();

-- Ao recriar as restrições, por já haver uma restrição violada, a execução dá o seguinte erro, e o SQL para de ser executado a partir da linha que apresenta o erro:

--ERROR:  could not create unique index "agenciapk"
--DETAIL:  Key (codigo)=(1) is duplicated.
--CONTEXT:  SQL function "criarrestricoes" statement 1
--********** Error **********
--ERROR: could not create unique index "agenciapk"
--SQL state: 23505
--Detail: Key (codigo)=(1) is duplicated.
--Context: SQL function "criarrestricoes" statement 1

