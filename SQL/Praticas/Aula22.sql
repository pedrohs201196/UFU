--Pedro Henrique da Silva 11511BSI257
--Maressa Sales 11311BSI213

----------------------
--PRATICA DA AULA 22--
----------------------

--2) Após o login com um usuário DBA, criar um novo banco de dados (CREATE DATABASE). No
--pgAdmin III, conecte no novo banco de dados: [...]

CREATE DATABASE clientes;

CREATE SCHEMA aula22;
set search_path to aula22;

CREATE TABLE cliente(
	codigo integer primary key,
	nome char(40) not null
);

CREATE USER operador;
GRANT SELECT, INSERT, UPDATE ON cliente TO operador;
GRANT usage on schema aula22 to operador;


--INSERT
INSERT INTO cliente values (1, 'Pedro H'), (2, 'Maressita'), (3, 'Fabricio');

--SELECT
SELECT codigo, nome FROM cliente;
/*
1;"Pedro H"
2;"Maressita"
3;"Fabricio"
*/

--UPDATE
UPDATE cliente SET nome = 'Maressa' WHERE nome = 'Maressita';

--DELETE
DELETE FROM cliente WHERE nome = 'Maressa';
DELETE FROM cliente;

/*
ERROR:  permission denied for relation cliente

********** Error **********

ERROR: permission denied for relation cliente
SQL state: 42501
*/

/*
3) Em um caixa de supermercado há uma tabela de Itens vendidos. Criar dois papéis, um
denominado Caixa, com concessão de INSERT e SELECT na tabela de itens e outro denominado
Gerente com UPDATE e DELETE. Os papéis Caixa e Gerente não devem permitir login. Atributa
o papel Caixa aos usuários Joao e Maria, e o papel Gerente ao usuário Jose. Faça login com
Joao e execute um insert e um update, e em seguida, faça login com Jose e faça um insert e
um update. Apresente os comandos as telas (tecle <alt + print screen> e salve em um
documento do Word ou LibreOffice). 
*/

CREATE ROLE caixa;
GRANT SELECT, INSERT ON cliente TO caixa;
GRANT usage on schema aula22 to caixa;

CREATE ROLE gerente;
GRANT UPDATE, DELETE ON cliente TO gerente;
GRANT usage on schema aula22 to gerente;

CREATE USER Joao;
CREATE USER Maria;
CREATE USER Jose;

GRANT caixa TO Joao;
GRANT caixa TO Maria;
GRANT gerente TO Jose;

--LOGADO COM JOAO
set search_path to aula22;
SELECT * FROM cliente;

/*
1;"Pedro H                                 "
3;"Fabricio                                "
2;"Maressa                                 "
*/

UPDATE cliente SET nome = 'Luna' WHERE codigo = 1;

/*
ERROR:  permission denied for relation cliente

********** Error **********

ERROR: permission denied for relation cliente
SQL state: 42501
*/

--LOGADO COM JOSE
set search_path to aula22;
INSERT INTO cliente VALUES (4, 'Luna');

/*
ERROR:  permission denied for relation cliente
********** Error **********

ERROR: permission denied for relation cliente
SQL state: 42501
*/

UPDATE cliente SET nome = 'Luna';

--LOGADO EM JOAO PARA FAZER SELECT
SELECT * FROM cliente;
/*
1;"Luna                                    "
3;"Luna                                    "
2;"Luna                                    "
*/

