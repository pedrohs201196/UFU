-- 5.1 Criação do Bando de Dados:

DROP SCHEMA IF EXISTS ConsultaOpinioesPK CASCADE;
CREATE SCHEMA ConsultaOpinioesPK;
SET SEARCH_PATH TO ConsultaOpinioesPK;

--Criação da tabela pessoa com verificação do cpf obrigando ter 11 números
CREATE TABLE pessoa(
	cpf varchar(11) CONSTRAINT pessoaPK PRIMARY KEY,
	nome varchar(50) NOT NULL,
	data_nascimento date NOT NULL,
	CONSTRAINT check_cpf CHECK (cpf ~ '^\d{11}$')
);

--Criação da tabela email com verificação do email
CREATE TABLE email(
	cpf_pessoa varchar(11),
	email varchar(50),
	CONSTRAINT emailPK PRIMARY KEY (cpf_pessoa, email),
	CONSTRAINT emailFK FOREIGN KEY(cpf_pessoa) REFERENCES pessoa(cpf) ON DELETE CASCADE,
	CONSTRAINT check_email CHECK (UPPER(email) ~ '^[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$')
);

--Criação da tabela unidade acadêmica com verificação da sigla permitindo apenas letras, e
--deve ter 5 caracteres; verificação se a unidade academica representa apenas uma área do 
--conhecimento
CREATE TABLE unidade_academica(
	sigla char(5) CONSTRAINT und_academicaPK PRIMARY KEY,
	nome varchar(50) NOT NULL UNIQUE,
	exatas boolean DEFAULT false,
	humanas boolean DEFAULT false,
	biologicas boolean DEFAULT false,
	CONSTRAINT check_area CHECK ((exatas AND NOT(humanas OR biologicas)) 
					OR (humanas AND NOT(exatas OR biologicas))
					OR (biologicas AND NOT(humanas OR exatas))),
	CONSTRAINT check_sigla CHECK (sigla ~ '^[^0-9]*$' AND char_length(sigla) = 5)	
);

--Criação da tabela unidade admnistrativa com verificação da sigla permitindo apenas letras, e
--deve ter 5 caracteres; 
CREATE TABLE unidade_administrativa(
	sigla char(3) CONSTRAINT und_administrativaPK PRIMARY KEY,
	nome varchar(50) NOT NULL,
	CONSTRAINT check_sigla CHECK (sigla ~ '^[^0-9]*$' AND char_length(sigla) = 3)
);

--Criação da tabela professor verificando se um professor tem apenas um tipo de regime
CREATE TABLE professor(
	cpf_pessoa varchar(11) CONSTRAINT professorPK PRIMARY KEY,
	siape varchar NOT NULL UNIQUE,
	sigla_uac char(5) NOT NULL,
	ded_exclusiva boolean DEFAULT false,
	ded_20horas boolean DEFAULT false,
	ded_40horas boolean DEFAULT false,
	CONSTRAINT professor_uacFK FOREIGN KEY (sigla_uac) REFERENCES unidade_academica(sigla),
	CONSTRAINT professor_cpfFK FOREIGN KEY(cpf_pessoa) REFERENCES pessoa(cpf) ON DELETE CASCADE,
	CONSTRAINT check_regime CHECK ((ded_exclusiva AND NOT(ded_20horas OR ded_40horas)) 
					OR (ded_20horas AND NOT(ded_exclusiva OR ded_40horas))
					OR (ded_40horas AND NOT(ded_20horas OR ded_exclusiva)))
);

--Criação da tabela tecnico academico
CREATE TABLE tecnico_academico(
	cpf_pessoa varchar(11) CONSTRAINT tec_academicoPK PRIMARY KEY,
	siape varchar NOT NULL UNIQUE,
	sigla_uac char(5) NOT NULL,
	CONSTRAINT tecnico_academicoFK FOREIGN KEY(cpf_pessoa) REFERENCES pessoa(cpf) ON DELETE CASCADE,
	CONSTRAINT tecnico_uacFK FOREIGN KEY (sigla_uac) REFERENCES unidade_academica(sigla)
);

--Criação da tabela tecnico administrativo
CREATE TABLE tecnico_administrativo(
	cpf_pessoa varchar(11) CONSTRAINT tec_administrativoPK PRIMARY KEY,
	siape varchar NOT NULL UNIQUE,
	sigla_uad char(3) NOT NULL,
	CONSTRAINT tecnico_administrativoFK FOREIGN KEY(cpf_pessoa) REFERENCES pessoa(cpf) ON DELETE CASCADE,
	CONSTRAINT tecnico_uadFK FOREIGN KEY (sigla_uad) REFERENCES unidade_administrativa(sigla)
);

--Criação da tabela curso com verificação da sigla permitindo apenas letras, e
--deve ter 5 caracteres; 
CREATE TABLE curso(
	sigla char(3) CONSTRAINT cursoPK PRIMARY KEY,
	nome varchar(50) NOT NULL UNIQUE,
	sigla_uac char(5) NOT NULL,
	CONSTRAINT cursoFK FOREIGN KEY (sigla_uac) REFERENCES unidade_academica(sigla),
	CONSTRAINT check_sigla CHECK (sigla ~ '^[^0-9]*$' AND char_length(sigla) = 3)
);

--Criação da tabela aluno
CREATE TABLE aluno(
	cpf_pessoa varchar(11) CONSTRAINT alunoPK PRIMARY KEY,
	num_matricula varchar(11) NOT NULL UNIQUE,
	sigla_curso char(3) NOT NULL,
	CONSTRAINT aluno_cpfFK FOREIGN KEY(cpf_pessoa) REFERENCES pessoa(cpf) ON DELETE CASCADE,
	CONSTRAINT aluno_cursoFK FOREIGN KEY (sigla_curso) REFERENCES curso(sigla)
);

--Criação da tabela terceirizado
CREATE TABLE terceirizado(
	cpf_pessoa varchar(11) CONSTRAINT terceirizadoPK PRIMARY KEY,
	empresa varchar(50) NOT NULL,
	setor_atuacao varchar(50) NOT NULL,
	CONSTRAINT terceirizadoFK FOREIGN KEY(cpf_pessoa) REFERENCES pessoa(cpf) ON DELETE CASCADE
);

--Criação da tabela formulário
--Verificando se pelo menos um tipo de pessoa pode respondê-lo
--A data final não é obrigatória, pode ser que o formulário não tenha data para parar de receber opiniões
CREATE TABLE formulario(
	id int CONSTRAINT formularioPK PRIMARY KEY,
	cpf_criador varchar(11) NOT NULL,
	nome varchar(50) NOT NULL UNIQUE,
	data_inicial date NOT NULL,
	data_final date,
	professor boolean NOT NULL DEFAULT false,
	tecnico boolean NOT NULL DEFAULT false,
	aluno boolean NOT NULL DEFAULT false,
	terceirizado boolean NOT NULL DEFAULT false,
	CONSTRAINT formularioFK FOREIGN KEY(cpf_criador) REFERENCES pessoa(cpf),
	CONSTRAINT check_restricao CHECK (professor OR tecnico OR aluno OR terceirizado)
);

--Criação da tabela resposta
--A resposta pode ser 'T' (texto) ou 'M' (múltipla escolha)
CREATE TABLE resposta(
	id int CONSTRAINT respostaPK PRIMARY KEY,
	tipo char NOT NULL,
	CONSTRAINT check_tipo CHECK (upper(tipo) IN ('T','M'))
);

--Criação da tabela item
CREATE TABLE item(
	id_resposta int,
	id int,
	descricao varchar NOT NULL,
	CONSTRAINT itemPK PRIMARY KEY(id_resposta,id),
	CONSTRAINT itemFK FOREIGN KEY(id_resposta) REFERENCES resposta(id) ON DELETE CASCADE
);

--Criação da tabela questão
--Colocando constraint unique para id,resposta para formar uma superchave e usá-la como chave estrangeira nas respostas do usuário
CREATE TABLE questao(
	id int CONSTRAINT questaoPK PRIMARY KEY,
	pergunta varchar NOT NULL,
	resposta int NOT NULL,
	CONSTRAINT questaoFK FOREIGN KEY(resposta) REFERENCES resposta(id),
	CONSTRAINT unique_questao UNIQUE (id,resposta)
);

--Criação da tabela formulario x questão
CREATE TABLE formulario_questao(
	id_formulario int,
	id_questao int,
	CONSTRAINT formulario_questaoPK PRIMARY KEY(id_formulario,id_questao),
	CONSTRAINT id_formularioFK FOREIGN KEY(id_formulario) REFERENCES formulario(id),
	CONSTRAINT id_questaoFK FOREIGN KEY(id_questao) REFERENCES questao(id)
);

--Criação da tabela de Respostas da Pessoa, quando responde em texto
--Uso da superchave de questão, para que não possa responder com uma resposta que não é a da questão
CREATE TABLE resposta_texto(
	cpf_pessoa varchar(11),
	id_formulario int,
	id_questao int,
	id_resposta int NOT NULL,
	texto varchar NOT NULL,
	CONSTRAINT resposta_textoPK PRIMARY KEY(cpf_pessoa,id_formulario,id_questao),
	CONSTRAINT resposta_textoFK FOREIGN KEY(id_formulario,id_questao) REFERENCES formulario_questao(id_formulario,id_questao),
	CONSTRAINT resposta_texto_respFK FOREIGN KEY(id_questao,id_resposta) REFERENCES questao(id,resposta),
	CONSTRAINT resposta_texto_cpfFK FOREIGN KEY (cpf_pessoa) REFERENCES pessoa(cpf)
);

--Criação da tabela de Respostas da Pessoa, quando responde uma múltipla escolha
--Uso da superchave de questão, para que não possa responder com uma resposta que não é a da questão
CREATE TABLE resposta_multipla(
	cpf_pessoa varchar(11),
	id_formulario int,
	id_questao int,
	id_resposta int NOT NULL,
	id_item int NOT NULL,
	CONSTRAINT resposta_multiplaPK PRIMARY KEY(cpf_pessoa,id_formulario,id_questao),
	CONSTRAINT resposta_multiplaFK FOREIGN KEY(id_formulario,id_questao) REFERENCES formulario_questao(id_formulario,id_questao),
	CONSTRAINT resposta_multipla_respFK FOREIGN KEY(id_questao,id_resposta) REFERENCES questao(id,resposta),
	CONSTRAINT resposta_itemFK FOREIGN KEY(id_resposta,id_item) REFERENCES item(id_resposta,id)	
);

-- 5.2 Alimentação Inicial do Banco de Dados

--Povoamento de Pessoa
INSERT INTO pessoa VALUES
	('00000000000','Steffan Martins Alves','01/01/1995'),
	('11111111111','Marcelo Alves Prado','01/01/1995'),
	('22222222222','Pedro Henrique','01/01/1995'),
	('33333333333','Heitor Henrique Nunes','01/01/1995'),
	('44444444444','Lucas Josino','01/01/1995'),
	('55555555555','Bruno Augusto Nassif Travençolo','01/01/1980'),
	('66666666666','Dino Rogério Coinete Franklin','01/01/1980'),
	('77777777777','Daniel Duarte Abdala','01/01/1980'),
	('88888888888','Henrique Coelho Fernandes','01/01/1980'),
	('99999999999','André Ricardo Backes','01/01/1980'),
	('00000000001','Valdeir Francisco Oliveira Filho','01/01/1985'),
	('11111111112','Marcelo Loures Ribeiro','01/01/1985'),
	('22222222223','Eduardo Alves Cunha','01/01/1985'),
	('33333333334','André Luiz Alves','01/01/1985'),
	('44444444445','Elícia Barros Guerra Souza','01/01/1985'),
	('55555555556','Maria Abadia de Jesus','01/01/1990'),
	('66666666667','Rosa Conceição das Dores','01/01/1990'),
	('77777777778','Ana Cláudia Alves da Silva','01/01/1990'),
	('88888888889','Geralda Marcela Alves','01/01/1990'),
	('99999999990','Clara Rodrigues da Cunha','01/01/1990'),
	('10000000000','Vanilda de Freitas','01/01/1980'),
	('21111111111','Toni Souza Costa','01/01/1980'),
	('32222222222','Rodolfo Martins da Silva','01/01/1980'),
	('43333333333','Anderson Henrique','01/01/1980'),
	('54444444444','Roberto Felizardo','01/01/1980');

--Povoamento de Email
INSERT INTO email VALUES
	('55555555555','travencolo@si.ufu.br'),
	('66666666666','dinofranklin@si.ufu.br'),
	('77777777777','abdala@si.ufu.br'),
	('88888888888','henrique.fernandes@si.ufu.br'),
	('99999999999','backes@si.ufu.br');

--Povoamento de Unidades Acadêmicas
--Somente uma das áreas de conhecimento será informada como true, assim as outras receberão false por default
INSERT INTO unidade_academica(sigla,nome,humanas) VALUES
	('ILEEL','Instituto de Letras e Linguística',true);
INSERT INTO unidade_academica(sigla,nome,biologicas) VALUES
	('FAMED','Faculdade de Medicina',true);
INSERT INTO unidade_academica(sigla,nome,exatas) VALUES
	('FACOM','Faculdade de Computação',true),
	('FAMAT','Faculdade de Matemática',true),
	('FACIC','Faculdade de Ciências Contábeis',true);

--Povoamento de Unidades Administrativas
INSERT INTO unidade_administrativa VALUES
	('CTI','Centro de Tecnologia e Informação'),
	('REI','Reitoria'),
	('BSM','Biblioteca Central Santa Mônica'),
	('SEC','Secretaria Geral'),
	('HCU','Hospital de Cínicas de Uberlândia');

--Povoamento de Professor
INSERT INTO professor VALUES
	('55555555555','SIAPE001','FACOM',false,false,true),
	('66666666666','SIAPE002','FACOM',false,false,true),
	('77777777777','SIAPE003','FACOM',true,false,false),
	('88888888888','SIAPE004','FACOM',false,true,false),
	('99999999999','SIAPE005','FACOM',true,false,false);

--Povoamento de Técnico Administrativo
INSERT INTO tecnico_administrativo VALUES
	('55555555556','SIAPE011','CTI'),
	('66666666667','SIAPE012','REI'),
	('77777777778','SIAPE013','BSM'),
	('88888888889','SIAPE014','SEC'),
	('99999999990','SIAPE015','HCU');

--Povoamento de Técnico Acadêmico
INSERT INTO tecnico_academico VALUES
	('00000000001','SIAPE006','FACOM'),
	('11111111112','SIAPE007','FACOM'),
	('22222222223','SIAPE008','FACOM'),
	('33333333334','SIAPE009','FACOM'),
	('44444444445','SIAPE010','FACOM');

--Povoamento de Curso
INSERT INTO curso VALUES
	('BSI','Sistemas de Informação','FACOM'),
	('BCC','Ciência da Computação','FACOM'),
	('GCC','Ciências Contábeis','FACIC'),
	('LET','Letras','ILEEL'),
	('MAT','Matemática','FAMAT');

--Povoamento de Aluno
INSERT INTO aluno VALUES
	('00000000000','00000BSI000','BSI'),
	('11111111111','00000BSI001','BSI'),
	('22222222222','00000BSI002','BSI'),
	('33333333333','00000BSI003','BSI'),
	('44444444444','00000BSI004','BSI');

--Povoamento de Terceirizado
INSERT INTO terceirizado VALUES
	('10000000000','Ética Limpeza de Conservação Ltda','Limpeza'),
	('21111111111','Algar Segurança Patrimonial Ltda','Segurança'),
	('32222222222','CEMIG','Elétrica'),
	('43333333333','DEMAE','Hidráulica'),
	('54444444444','Algar Celular','Telefonia');

--Povoamento de Respostas
INSERT INTO resposta VALUES
	(1,'T'),
	(2,'M'),
	(3,'M'),
	(4,'M'),
	(5,'M'),
	(6,'M');

--Povoamento de Itens
INSERT INTO item VALUES
	(2,1,'Verdadeiro'),
	(2,2,'Falso'),
	(3,1,'Sim'),
	(3,2,'Não'),
	(3,3,'Abstenção'),
	(4,1,'Ruim'),
	(4,2,'Regular'),
	(4,3,'Bom'),
	(4,4,'Excelente'),
	(5,1,'0'),
	(5,2,'1'),
	(5,3,'2'),
	(5,4,'3'),
	(5,5,'4'),
	(5,6,'5'),
	(6,1,'Candidato 1, Vice 1'),
	(6,2,'Candidato 2, Vice 2'),
	(6,3,'Candidato 3, Vice 3');

--Povoamento de Questões
--As questões aqui depois são relacionadas a formulários
INSERT INTO questao VALUES
	(1,'Qual nota você dá ao professor "Aristóteles" no quesito "Pontualidade"?',5),
	(2,'Qual nota você dá ao professor "Aristóteles" no quesito "Domínio da Disciplina"?',5),
	(3,'Você é a favor da greve?',3),
	(4,'Escreva a sua sugestão para o cardápio do RU.',1),
	(5,'Como você classifica a alteração realizada no estacionamento do Bloco B?',4),
	(6,'Por quê?',1),
	(7,'Vote no seu candidato.',6);

--Povoamento de Formulário
--Data final NULL significa que o formulário não tem prazo de finalização
INSERT INTO formulario VALUES
	(1,'00000000001','Avaliação de Docentes - 2016','01/12/2016','10/12/2016',false,false,true,false),
	(2,'44444444445','Pesquisa de Opinião Sobre a Greve de 2016','01/11/2016','30/11/2016',true,true,true,false),
	(3,'99999999990','Sugestões para o cardápio do RU','01/12/2016',null,true,true,true,false),
	(4,'22222222223','Pesquisa sobre Estacionamento','01/12/2016','15/12/2016',true,true,true,true),
	(5,'33333333334','Eleições Reitoria 2016','01/08/2016','01/08/2016',true,true,true,false);

--Povoamento de Formulário x Questões
--Relacionando qual formulário tem quais questões
INSERT INTO formulario_questao VALUES
	(1,1),
	(1,2),
	(2,3),
	(2,6),
	(3,4),
	(4,5),
	(4,6),
	(5,7);

--Povoamento de Respostas em Texto
INSERT INTO resposta_texto VALUES
	('33333333333',2,6,1,'Irá atrasar a conclusão do semestre.'),
	('55555555555',2,6,1,'Prefiro não opinar.'),
	('44444444444',3,4,1,'Carne assada no bafo.'),
	('54444444444',4,6,1,'Não vejo problemas.'),
	('00000000000',4,6,1,'As vagas ficaram muito estreitas e a fila no meio não foi removida.');

--Povoamento de Respostas Múltipla escolha
INSERT INTO resposta_multipla VALUES
	('00000000000',1,1,5,6),
	('00000000000',1,2,5,4),
	('11111111111',1,1,5,5),
	('11111111111',1,2,5,5),
	('22222222222',1,1,5,6),
	('22222222222',1,2,5,3),
	('33333333333',2,3,3,2),
	('55555555555',2,3,3,3),
	('54444444444',4,5,4,2),
	('00000000000',4,5,4,1),
	('11111111111',5,7,6,1),
	('22222222222',5,7,6,2),
	('00000000000',5,7,6,1),
	('33333333333',5,7,6,3),
	('44444444444',5,7,6,1);

-- 5.3 Atualização do Banco de Dados

-- Inserção
INSERT INTO resposta_texto VALUES ('22222222222',3,4,1,'Salada de frutas como sobremesa.');

-- Remoção
-- A última operação de remoção afetará a tabela PESSOA, PROFESSOR e EMAIL
DELETE FROM curso WHERE sigla = 'MAT';
DELETE FROM unidade_academica WHERE sigla = 'FAMAT';
DELETE FROM pessoa WHERE cpf = '66666666666';

-- Atualização
-- A última operação de atualização busca a informação de outra tabela
UPDATE formulario SET data_final = CURRENT_DATE + INTERVAL '1 month' WHERE data_final = '30/11/2016';
UPDATE professor SET ded_exclusiva = true, ded_20horas=false, ded_40horas=false WHERE siape = 'SIAPE001';
UPDATE email SET email = TRIM(TRAILING 'si.ufu.br$' FROM email)||'ufu.br' WHERE email LIKE '%@si.ufu.br';
UPDATE formulario SET cpf_criador = (SELECT cpf_pessoa FROM tecnico_administrativo WHERE siape = 'SIAPE012') WHERE id = 5;