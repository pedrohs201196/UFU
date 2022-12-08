/* 
Prática 05: exercícios 01 ao 09

Orientações:
(1) Consulte o esquema 'banco' disponível no Moodle para resolver a prática. Para manipulação de datas é necessário consultar o manual do PostgreSQL:
a. http://www.postgresql.org/docs/8.4/static/functions-datetime.html
b. http://pgdocptbr.sourceforge.net/pg80/functions-datetime.html

(2) Operador para concatenar strings: ||

(3) As consultas devem estar indentadas

(4) Deve ser entregue a consulta SQL juntamente com o resultado da consulta. Tudo em um arquivo texto com extensão .sql. 
Exemplo:

*
-- 9) Mostrar todos os alunos
*/
SELECT * FROM aluno;
/*
"Celso";2345;22;"Sao Carlos"
"Pedro";2344;27;"Sao Carlos"
"Cicero";3456;22;"Araraquara"
"Carlitos";4567;21;"Ibitinga"
"Catarina";5678;23;"Sao Carlos"
"Cibele";6789;21;"Araraquara"
"Corina";7890;25;"Rio Claro"
"Celina";8901;23;"Sao Carlos"
"Celia";9012;20;"Rio Claro"
"Cesar";123;21;"Araraquara"
"Carlos";1234;21;"Sao Carlos"
*/
/*
10) Mostrar todos os professores
*/
SELECT *
FROM PROFESSOR;
/*
"Ari";"1111 ";"MS-1 ";25
"Adao";"2222 ";"MS-2 ";30
"Anselmo";"3333 ";"MS-2 ";31
"Amalia";"8888 ";"MS-3 ";39
"Ana";"4444 ";"MS-3 ";31
"Alice";"5555 ";"MS-3 ";35
"Amauri";"6666 ";"MS-3 ";34
"Artur";"7777 ";"MS-4 ";41
"Adriana";"9999 ";"MS-5 ";45
*/


--1) Consultas simples usando SELECT 
    SELECT 2+2
	SELECT 'A'
	SELECT 50 > 3
	SELECT '11/10/2020'
	SELECT '11/10/2020' - '11/10/2030' -- é possível esse comando?
	
	
--2) Consultas simples usando SELECT e renomeando colunas
    SELECT 2+2 AS soma
	SELECT 'A' as letra
	SELECT 50 > 3 as resultado
	SELECT '11/10/2020' as dia -- qual o tipo retornado?

--3) Consultas usando SELECT * FROM usando uma tabela do banco
     --- (a) Listar todos os clientes do banco
     --- (b) Listar todos os funcionários
     --- (c) Listar todas as agências

--4) Consultas usando SELECT <coluna> FROM
     --- (a) Listar o código e o nome de todas as agências
     --- (b) Listar todos os estados em que existem agências. Verificar se há repetições e, se houver, explicar o porquê.
     --- (c) Listar todos os estados em que existem agências. Na resposta não deve haver repetição

--5) Consultas com SELECT <coluna> AS <novo_nome> FROM
     --- (a) Listar todos os estados, trocando, no resultado, o nome do atributo para "UF" (Unidade da Federação)
     --- (b) Listar todas as agências, renomeando as colunas de saída como agencia(cod,nome,cidade,uf)

--6) Consultas com SELECT FROM WHERE - com uma condição de seleção
     --- (a) Listar todos os clientes de 'Uberlândia'
     --- (b) Listar todas as operações bancárias com valores superiores à R$5000,00 
     --- (c) Listar todas as contas que não são acessadas há mais de um ano     
     --- (d) Mostre as datas (somente o dia e o mês) das operações bancárias que ocorreram neste ano 
     --- (e) Listar todas as operações bancárias que ocorreram hoje (a consulta deve ser genérica - ver current_date)
     --- (f) Listas os funcionários que foram contratados nos últimos 3 anos 
         --    (essa consulta deve ser genérica – você não deve explicitar nenhuma data)
     --- (g) Listar todos os funcionários que não possuem supervisores
	 --- (h) Listar todos os funcionários que possuem supervisores
 
--7) Consultas com SELECT FROM WHERE - com duas ou mais condições de junção e com condição de seleção
     --- (a) Listar todos os clientes de 'Uberlândia' e cujo nome inicia com a letra 'B'
     --- (b) Listar todas as operações bancárias com valores superiores à R$5000,00 do tipo crédito
     --- (c) Listar todas as contas com saldo menor que 300 e que não são acessadas há mais de um ano   
     --- (e) Listar todas as operações bancárias que ocorreram hoje (a consulta deve ser genérica - ver current_date)
     --- (f) Listar os funcionários que foram contratados nos últimos 3 anos 
         --    (essa consulta deve ser genérica – você não deve explicitar nenhuma data)

-- 8) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS TABELAS 
    -- >> Atenção: Colocar a condição de junção no WHERE
	-- (a) Listar o número funcional e o nome de todos os funcionarios juntamente com todos os seus dependentes
	-- (b) Listar os nomes dos funcionários e os municípios em que eles trabalham
	-- (c) Listar os nomes do clientes juntamente com as informações de suas contas (código da agência e número da conta)
	
-- 9) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS OU MAIS TABELAS 
    -- >> Atenção: Colocar a condição de junção no WHERE
    -- (a) Liste o nome do cliente e o saldo em sua conta corrente
    -- (b) Liste o nome do cliente juntamente com o nome do seu gerente e o nome da agência que o supervisor trabalha
	-- (c) Liste os nomes dos clientes que fizeram operações acima de R$ 20.000,00
	
-- 10) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS TABELAS  
    -- >> Atenção: colocar a condição de junção no FROM e demais condição no WHERE
    -- (a) Listar o número funcional e o nome de todos os funcionarios juntamente com todos os seus dependentes
	-- (b) Listar os nomes dos funcionários e os municípios em que eles trabalham
	-- (c) Listar os nomes do clientes juntamente com as informações de suas contas (código da agência e número da conta)
	
-- 11) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS OU MAIS TABELAS  
    -- >> Atenção: colocar a condição de junção no FROM e demais condição no WHERE
    -- (a) Liste o nome do cliente e o saldo em sua conta corrente
    -- (b) Liste o nome do cliente juntamente com o nome do seu gerente e o nome da agência que o supervisor trabalha
	-- (c) Liste os nomes dos clientes que fizeram operações acima de R$ 20.000,00

	
-- 12) CONSULTAS ENVOLVENDO JUNÇÕES COM UM RELAÇÃO SENDO USADA MAIS DE UMA VEZ
    -- (a) Listar o nome do funcionário juntamente com o *nome* de seu supervisor. 
	--     Renomei o nome dos atributos da relação resultante para nome_funcionario e nome_supervisor, respectivamente.
	-- (b) Listar os nomes dos funcionários que foram admitidos antes que seus supervisores
	-- (c) Listar os nomes dos funcionários que trabalham em agências distintas das agências de seus supervisores
	-- (d) Listar os nomes dos funcionários que trabalham em agências localizadas em estados distintos das agências de seus supervisores

	
-- 13) CONSULTAS COM OPERADOR 'IN' / 'NOT IN' / <> ou !=
    -- (a) Listar o nome dos funcionários que não são gerentes
	-- (b) Listar o nome dos clientes que não possuem conta
	-- (c) Listar as agências que não possuem conta
	-- (d) Listar as contas bancárias sem operações bancárias (dica: use parênteses nos atributos envolvidos no WHERE)
	-- (e) Verificar se existem contas bancárias sem clientes (dica: use parênteses nos atributos envolvidos no WHERE)
	-- (f) Listar o nome dos funcionários que trabalham em agências de 'SP' e 'MS' que não são gerentes
	-- (g) Verificar se existe clientes que possuem contas em agências distintas da agência de trabalho de seus gerentes
	-- (h) Listar os clientes que possuem contas vinculadas a agências situadas cidades distintas das cidades dos clientes.
	
-- 14) CONSULTAS COM FUNÇÕES DE AGREGAÇÃO
    -- > Dica: construa a consulta sem a função de agregação e observe os dados para verificar se atendem ao enunciado.
	--         em seguida aplica a função de agregação
    -- (a) Mostrar a data e hora da operação mais recente do banco
	-- (b) Mostrar o saldo médio de todas as contas
	-- (c) Mostrar a média e o desvio padrão do saldo considerando todas as contas
	-- (d) Mostrar a quantidade de clientes do banco
	-- (e) Mostrar a quantidade de agências do estado de 'SP'
	-- (f) Mostrar a quantidade de funcionários que são supervisionados por alguém
	-- (g) Mostrar a quantidade de funcionários que são supervisores
	-- (h) Mostrar a quantidade de funcionários que não são supervisores
	-- (i) Mostrar os nomes e telefones do(s) funcionário(s) mais antigo
	-- (j) Mostrar os nomes e telefones do(s) funcionário(s) mais antigo que trabalha(m) no estado de 'SP'
	-- (k) Mostrar a quantidade total de dependentes dos funcionarios que trabalham em agências de 'SE'
	-- (l) Mostrar a quantidade de supervisores que trabalham em agências do 'RJ'

-- 15) CONSULTAS COM OUTER JOINS
    -- (a) Listar o nome do funcionário juntamente com o nome de seus dependentes. Caso o funcionário tenha mais de um dependente
    --       ele constará na resposta mais de uma vez (uma vez para cada dependente). Caso o funcionário não tenha dependentes, ele
	--       também deve aparecer na resposta
	-- (b) Listar todos os nomes dos clientes juntamente com as contas correntes (agência e número) -- se o cliente não possuir conta
	--      ele também deve aparecer na resposta. No lugar da agência deve aparecer a mensagem ('<cliente sem conta>') -- dica: COALESCE()
	-- (c) Listar o nome do funcionário juntamente com o *nome* de seu supervisor. 
	--     Renomei o nome dos atributos da relação resultante para nome_funcionario e nome_supervisor, respectivamente.
	--     Se um funcionário não possuir supervisor, ele deve aparecer na resposta também
	-- (d) Para todos os gerentes, mostrar o nome do funcionário, a cidade de sua agência e seus dependentes (quando houver).
	-- (e) Utilizando OUTER JOIN, listar as contas bancárias sem operações bancárias. 
	-- (f) Utilizando OUTER JOIN, verificar se existem contas bancárias sem clientes. 
	-- (g) Utilizando OUTER JOIN, listar o nome dos funcionários que trabalham em agências de 'SP' e 'MS' que não são gerentes.