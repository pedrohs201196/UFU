--Pedro Henrique da Silva 11511BSI257
--Maressa Sales 11311BSI213

SET search_path TO public;

CREATE TABLE aluno (id INTEGER PRIMARY KEY, nome VARCHAR(50));  
INSERT into aluno values (1, 'Armando Nascimento'), (2, 'Jose Raimundo'), (3, 'Joao Marinho'), (4, 'Juca Chaves'), (5, 'Marina Silva'); 

----------------------------------------------------------------------------------------
--1) Abra duas instâncias do PSQL (seção), iniciando transações com o comando “begin;”
----------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------
--d) Explique se o comportamento está de acordo com o nível de isolamento READ COMMITTED 
----------------------------------------------------------------------------------------

/*Está de acordo com o nível de isolamento READ COMMITED, pois no console em que eu não executei o UPDATE
ao consultar na tabela não aparece a alteração de dados que eu fiz no outro console em que eu executei o
UPDATE, então não houve leitura suja já que não houve leitura de atualização de transação alheia*/


---------------------------------------------------------------------------------------
/*2) Apresente uma sequência de comandos em duas seções de modo a mostrar que o tipo de
transação padrão no Postgres permite a execução de leituras não repetíveis e leituras
fantasmas. */
---------------------------------------------------------------------------------------

------------------------
--Leitura não repetível:
------------------------

--Transação 1:
BEGIN;
SELECT nome FROM aluno WHERE id = 1;

--Transação 2
BEGIN;
UPDATE aluno SET nome = 'Luna' WHERE id =1;
COMMIT;

--Transação 1
SELECT nome FROM aluno WHERE id = 1;


-------------------
--Leitura Fantasma:
-------------------

--Transação 1:
BEGIN;
SELECT id FROM aluno WHERE nome = 'Armando Nascimento';

--Transação 2:
BEGIN;
INSERT INTO aluno VALUES (6, 'Armando Nascimento');
COMMIT;

--Transação 1
SELECT id FROM aluno WHERE nome = 'Armando Nascimento';

------------------------------------------------------------------------------------------
/*3) Após o início de uma transação (com o comando “begin;”), altere o nível de isolamento
para REPEATABLE READ e apresente uma sequência de comandos para mostrar seu
funcionamento com relação a leituras repetitiveis e leituras fantasmas.*/
------------------------------------------------------------------------------------------

--------------------
--Leitura repetível:
--------------------

--Transação 1
BEGIN;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SELECT nome FROM aluno WHERE id = 1;

--Transação 2
BEGIN;
UPDATE aluno SET nome = 'Luna' WHERE id =1;
COMMIT;

--Transação 1
SELECT nome FROM aluno WHERE id = 1;

-------------------
--Leitura Fantasma:
-------------------

--Transação 1:
BEGIN;
SELECT id FROM aluno WHERE nome = 'Joao Marinho';

--Transação 2:
BEGIN;
INSERT INTO aluno VALUES (7, 'Joao Marinho');
COMMIT;

--Transação 1:
SELECT id FROM aluno WHERE nome = 'Joao Marinho';

------------------------------------------------------------------------------------------
/*4) Após o início de uma transação (com o comando “begin;”), altere o nível de isolamento
para READ UNCOMMITTED e apresente uma sequência de comandos para mostrar se seu
funcionamento é diferente do nível de isolamento READ COMMITTED. Utilize os comandos
abaixo para alternar entre os níveis de isolamento.*/
------------------------------------------------------------------------------------------

------------------------------------------
--COM NÍVEL DE ISOLAMENTO READ UNCOMMITED:
------------------------------------------

--Transação 1:
BEGIN;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

--Transação 2:
BEGIN;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT * FROM ALUNO;

 id |        nome
----+--------------------
  1 | Armando Nascimento
  2 | Jose Raimundo
  3 | Joao Marinho
  4 | Juca Chaves
  5 | Marina Silva

--Transação 1
UPDATE aluno SET nome = 'Luna' WHERE id =1;

SELECT * FROM ALUNO;
 id |     nome
----+---------------
  2 | Jose Raimundo
  3 | Joao Marinho
  4 | Juca Chaves
  5 | Marina Silva
  1 | Luna

--Transação 2
SELECT * FROM ALUNO;
 id |        nome
----+--------------------
  1 | Armando Nascimento
  2 | Jose Raimundo
  3 | Joao Marinho
  4 | Juca Chaves
  5 | Marina Silva

-----------------------------------------
--COM NÍVEL DE ISOLAMENTO READ COMMITTED:
-----------------------------------------

--Transação 1:
BEGIN;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED; 

--Transação 2:
BEGIN;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED; 
SELECT * FROM ALUNO;

 id |        nome
----+--------------------
  1 | Armando Nascimento
  2 | Jose Raimundo
  3 | Joao Marinho
  4 | Juca Chaves
  5 | Marina Silva

--Transação 1
UPDATE aluno SET nome = 'Luna' WHERE id =1;

SELECT * FROM ALUNO;
 id |     nome
----+---------------
  2 | Jose Raimundo
  3 | Joao Marinho
  4 | Juca Chaves
  5 | Marina Silva
  1 | Luna

--Transação 2
SELECT * FROM ALUNO;
 id |        nome
----+--------------------
  1 | Armando Nascimento
  2 | Jose Raimundo
  3 | Joao Marinho
  4 | Juca Chaves
  5 | Marina Silva

 /*Não houve diferença entre o READ COMMITTED e o READ UNCOMMITTED pois excepcionalmente no postgresql, mesmo com o nível de isolamento READ UNCOMMITED,
 não existe leitura suja.*/

---------------------------------------------------------------------------------------
 /*5) Após o início de uma transação em cada seção (com o comando “begin;”), execute os
comandos na seguinte ordem: */
---------------------------------------------------------------------------------------

/*Após executar os comando na ordem indicada, apareceu a seguinte mensagem:

ERROR:  deadlock detected
DETAIL:  Process 9748 waits for ShareLock on transaction 1781; blocked by process 4148.
Process 4148 waits for ShareLock on transaction 1780; blocked by process 9748.
HINT:  See server log for query details.
CONTEXT:  while updating tuple (0,11) in relation "aluno"

Não foi possível realizar Commit na seção em que o deadlock foi detectado já que
ela foi automaticamente abortada, porém na outra seção foi possível.

O bloqueio utilizado pelo Postgres nesse exemplo é o Share Lock, que bloqueia a 
tabela contra mudanças de dado concorrentes.