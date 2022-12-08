/*
Maressa Sales  11311BSI213
Pedro Henrique 11511BSI257
*/

-----------------------------------------------------------------------------------------
-- EXERCÍCIO 2
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------
--b) Selecionar o numero de todos os projetos que têm menos do que 3 professores colaboradores.
-----------------------------------------------------------------------------------------------

SELECT c.projeto
FROM conduz c
GROUP BY c.projeto 
HAVING count(c.colaborador) < 3
ORDER BY c.projeto ASC

/*
11
12
13
14
15
16
31
32
33
34
35
36
37
41
42
43
44
61
62
63
64
65
66
111
112
113
114
115
116
121
122
123
124
125
126
*/
----------------------------------------------------------------------------------------------------------------------------------------
--d) Selecionar o nome do departamento e a média de projetos conduzidos por professores do departamento, para todos os departamentos.
----------------------------------------------------------------------------------------------------------------------------------------

SELECT DEPTO, AVG(contas)
FROM DEPARTAMENTO d2
JOIN 
(SELECT d.nomedepto AS DEPTO, p.nomeprof, COUNT(pr.numProjeto) AS contas
FROM PROFESSOR p, PROJETO pr, TRABALHA t, DEPARTAMENTO d
WHERE p.numfunc = pr.pesquisadorPrincipal
AND p.numfunc = t.professor
AND d.numdepto = t.departamento
GROUP BY d.nomedepto,t.departamento, p.nomeprof
ORDER BY d.nomedepto) AS num

ON d2.nomedepto = DEPTO
GROUP BY DEPTO;

/*
"Faculdade de Biologia Marinha";2.3333333333333333
"Faculdade de Engenharia Mecatronica";1.5000000000000000
"Faculdade de Gestao e Negocios";1.5000000000000000
"FACULDADE DE LETRAS";1.5000000000000000
"FACULDADE DE MEDICINA";1.5000000000000000
"FACULDADE DE QUÍMICA";1.5000000000000000
*/
------------------------------------------------------------------------------------------------------------------------------------------------------------
--f) Selecionar o nome do conselheiro que aconselha o maior número de alunos. Devem ser exibidos o nome do conselheiro e a quantidade de alunos aconselhados.
------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT c.nomeAluno, count(e.matricula) as nAluno
FROM estudante c, estudante e 
WHERE e.conselheiro = c.matricula
GROUP BY c.nomeAluno
ORDER BY naluno DESC 
LIMIT 1

/*
"Breno";3
*/

-------------------------------------------------------------------------------------------------------------------------------------------
--h) Selecionar a soma de financiamento por departamento e ser exibidos o nome do departamento, o nome da agência de fomento e a soma total
-------------------------------------------------------------------------------------------------------------------------------------------
SELECT nomedepto, nomeagencia, sum 
FROM departamento INNER JOIN
			(SELECT departamento, nomeagencia, SUM(orcamento) 
			 FROM trabalha INNER JOIN
					(SELECT pesquisadorprincipal, nomeagencia, orcamento 
					 FROM projeto) AS tab1
			ON professor = pesquisadorprincipal 
			GROUP BY departamento, nomeagencia) AS tab2
	ON numdepto = departamento 
ORDER BY nomedepto, nomeagencia ASC;

/*
"Faculdade de Biologia Marinha";"FAPEMIG";254000.00
"Faculdade de Engenharia Mecatronica";"CAPES";15000.00
"Faculdade de Engenharia Mecatronica";"CNPQ";26000.00
"Faculdade de Engenharia Mecatronica";"FAPEMIG";4500.00
"Faculdade de Gestao e Negocios";"CAPES";330000.00
"Faculdade de Gestao e Negocios";"CNPQ";4500000.00
"Faculdade de Gestao e Negocios";"FAPEMIG";110000.00
"FACULDADE DE LETRAS";"CAPES";80.00
"FACULDADE DE LETRAS";"CNPQ";80.00
"FACULDADE DE LETRAS";"FAPEMIG";130.00
"FACULDADE DE MEDICINA";"CNPQ";238000.00
"FACULDADE DE MEDICINA";"FAPEMIG";162000.00
"FACULDADE DE QUÍMICA";"CAPES";100000.00
"FACULDADE DE QUÍMICA";"FAPEMIG";2000.00
*/
-------------------------------------------------------------------------------------------------------------
--j) Selecionar o nome do chefe de departamento cujos professores supervisionam o menor número de estudantes.
-------------------------------------------------------------------------------------------------------------

SELECT nomeprof 
FROM professor INNER JOIN
		(SELECT chefedepto 
		 FROM departamento INNER JOIN
				(SELECT departamento, SUM(count) 
				 FROM trabalha INNER JOIN
						(SELECT supervisor, COUNT(assistente) 
						 FROM PESQUISA 
						 GROUP BY supervisor) AS tab1
				ON professor = supervisor 
				GROUP BY departamento 
				ORDER BY sum ASC LIMIT 1) AS tab2
		ON numdepto = departamento) AS tab3
	ON numfunc = chefedepto; 

/*
"Marcelo da Silva"
*/

-----------------------------------------------------------------------------------------
-- EXERCÍCIO 3
-----------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------
--a1) O nome e a idade dos alunos que realizam pesquisa em projeto supervisionado pela
--professora ‘"Aleandra da Silva Sampaio”.
--------------------------------------------------------------------------------------

CREATE VIEW visao_A AS
SELECT e.nomeAluno, e.idade
FROM estudante e INNER JOIN 
	pesquisa p 
	ON p.assistente = e.matricula INNER JOIN 
	projeto prj
	ON prj.numProjeto = p.projeto
WHERE prj.pesquisadorPrincipal = (SELECT prof.numFunc
				  FROM professor prof
				  WHERE prof.nomeProf = 'Aleandra da Silva Sampaio')

----------------------------------------------------
--a2) Mostrar uma consulta à visão que exiba o nome
--e a idade do aluno mais novo. 
----------------------------------------------------

SELECT nomeAluno, idade
FROM visao_A
WHERE idade = (SELECT MIN(idade) FROM nomeIdade_Alunos);

--------------------------------------------------------------------
--b1) O nome do professor supervisor, o nome do estudante assistente 
--e o código do projeto no qual o aluno realiza pesquisa.
--------------------------------------------------------------------

CREATE VIEW visao_B AS
SELECT prof.nomeProf, est.nomeAluno, pes.projeto
FROM pesquisa pes INNER JOIN 
	professor prof
	ON prof.numFunc = pes.supervisor INNER JOIN 
	estudante est
	ON est.matricula = pes.assistente;

-------------------------------------------------------------------------------
--b2) Mostrar uma consulta à visão que selecione o nome dos
--professores e a quantidade de projetos em que supervisiona alunos, 
--apenas para os professores que supervisionam alunos em mais do que 2 projetos.
-------------------------------------------------------------------------------

SELECT nomeProf, count(DISTINCT projeto)
FROM visao_B
GROUP BY nomeProf
HAVING count(DISTINCT projeto) > 2


/*
SELECT nomeProf, count(DISTINCT projeto)
FROM visao_B
GROUP BY nomeProf
HAVING count(DISTINCT projeto) > 2
*/
------------------------------------------------------------
--c1) O nome do pesquidador principal e o código do projeto. 
------------------------------------------------------------

CREATE VIEW visao_C AS 
SELECT prof.nomeProf, prj.numProjeto
FROM projeto prj 
INNER JOIN professor prof
ON prof.numFunc = prj.pesquisadorPrincipal;

-------------------------------------------------------------------------------
--c2) Mostrar uma consulta à visão que selecione o nome de todos os professores 
--que são pesquisadores principais de mais do que 2 projetos. 
-------------------------------------------------------------------------------

SELECT nomeProf
FROM visao_C
GROUP BY nomeProf
HAVING count(numProjeto) > 2

/*
"Tarcisio"
*/

---------------------------------------------------------------------------
--d1) O nome do departamento, o nome do chefe de departamento e o seu ramal
---------------------------------------------------------------------------

CREATE VIEW visao_D AS
SELECT dep.nomeDepto, prof.nomeProf, prof.ramal
FROM departamento dep
INNER JOIN professor prof
ON prof.numFunc = dep.chefeDepto

-----------------------------------
--d2) Mostrar uma consulta à visão. 
-----------------------------------

SELECT * FROM visao_D

/*
"Faculdade de Gestao e Negocios";"Aleandra da Silva Sampaio";"3447"
"Faculdade de Biologia Marinha";"Tarcisio";"0506"
"Faculdade de Engenharia Mecatronica";"Marcelo da Silva";"FEMC"
"FACULDADE DE QUÍMICA";"MARIA CAMILA";"4286"
"FACULDADE DE LETRAS";"JOAQUIM CARMELITO DE ANDRADE";"234"
"FACULDADE DE MEDICINA";"Ben Hur Braga Taliberti";"432"
*/
----------------------------------------------------------------------------------
--e1) O nome do professor, seu ramal e o nome do departamento em que ele trabalha. 
----------------------------------------------------------------------------------

CREATE VIEW visao_E AS
SELECT prof.nomeProf, prof.ramal, d.nomeDepto
FROM professor prof
INNER JOIN trabalha t
ON t.professor = prof.numFunc
INNER JOIN departamento d
ON d.numDepto = t.departamento

-------------------------------------------------------------------------------------
--e2) Mostrar uma consulta à visão que exiba o nome do departamento e a quantidade de
--professores que trabalham no departamento. 
-------------------------------------------------------------------------------------

SELECT nomeDepto, count(nomeProf)
FROM visao_E
GROUP BY nomeDepto

/*
"Faculdade de Engenharia Mecatronica";4
"Faculdade de Gestao e Negocios";4
"FACULDADE DE QUÍMICA";4
"FACULDADE DE MEDICINA";4
"Faculdade de Biologia Marinha";4
"FACULDADE DE LETRAS";4
*/
------------------------------------------------------------------------
--f1) O nome do professor, sua área de pesquisa e o nome do departamento. 
------------------------------------------------------------------------

CREATE VIEW visao_F AS
SELECT prof.nomeProf, prof.area, dep.nomeDepto
FROM professor prof
INNER JOIN trabalha t
ON t.professor = prof.numFunc
INNER JOIN departamento dep
ON dep.numDepto = t.departamento

------------------------------------------------------------------------------------------------
--f2) Mostrar uma consulta à visão que selecione a quantidade de áreas de 
--pesquisa distintas por departamento (devem ser exibidos o nome do departamento e a quantidade). 
------------------------------------------------------------------------------------------------

SELECT nomeDepto, count(DISTINCT area)
FROM visao_F
GROUP BY nomeDepto

/*
"Faculdade de Biologia Marinha";1
"Faculdade de Engenharia Mecatronica";1
"Faculdade de Gestao e Negocios";4
"FACULDADE DE LETRAS";4
"FACULDADE DE MEDICINA";4
"FACULDADE DE QUÍMICA";2
*/
---------------------------------------------------------------------------------
--g1) Os nomes dos professores pesquisadores principais, os nomes dos professores
--colaboradores e o número do projeto. 
---------------------------------------------------------------------------------

CREATE VIEW visao_G AS
SELECT p.nomeProf AS PesqPrincipal, p2.nomeProf AS ProfColaborador, prj.numProjeto
FROM professor p, professor p2, projeto prj, conduz c
WHERE prj.pesquisadorPrincipal = p.numFunc 
      AND c.colaborador = p2.numFunc
      AND c.projeto = prj.numProjeto;


-----------------------------------------------------------------------------------------
--g2) Mostrar uma consulta à visão que selecione o nome
--do pesquisador principal e a quantidade de colaboradores por pesquisador e por projeto
--(devem ser exibidos o nome do pesquisador, o número do projeto e a quantidade de
--colaboradores). 
-----------------------------------------------------------------------------------------

SELECT PesqPrincipal, numprojeto, count(ProfColaborador)
FROM visao_G 
GROUP BY PesqPrincipal, numProjeto
ORDER BY PesqPrincipal ASC

/*
"Abadia Gilda Buso Matoso";42;2
"Aércio Sebastião Borges";43;2
"Alberto Oliveira Barbosa";44;2
"Aleandra da Silva Sampaio";121;2
"Aleandra da Silva Sampaio";126;2
"ALESSANDRA SANTOS";12;1
"ALESSANDRA SANTOS";16;2
"Ananda Silva Singh";125;2
"Andre Carlos Menck";122;1
"Andre Carlos Menck";123;2
"Antonio Sergio Penedo";124;1
"Ben Hur Braga Taliberti";41;2
"Ben Hur Braga Taliberti";45;3
"Charles Xavier";35;1
"ISRAEL RODRIGUES";13;2
"JOANESCLEIDE CAMARGOS BARBOSA";65;2
"Joao Fernandez";114;1
"JOAQUIM CARMELITO DE ANDRADE";61;1
"JOAQUIM CARMELITO DE ANDRADE";64;1
"JOSELITO DOS REIS";62;2
"JOSELITO DOS REIS";66;2
"JOSEMAR ARMANDO BRAGA";63;2
"Marcelo da Silva";111;2
"MARIA CAMILA";11;1
"MARIA CAMILA";15;2
"Maria Costa";112;2
"Maria Costa";113;2
"Marielza";36;2
"Marielza";37;2
"Pedro Coelho";115;2
"Pedro Coelho";116;1
"RENATO TEIXEIRA";14;2
"Tarcisio";31;2
"Tarcisio";32;1
"Tarcisio";33;1
"Tarcisio";34;1
*/
-----------------------------------------------------------------------------------------
--h1) O número do projeto, o orçamento, a agência de fomento e o nome do departamento do
--pesquisador principal. 
-----------------------------------------------------------------------------------------

CREATE VIEW visao_H AS
SELECT prj.numProjeto as NumeroProjeto, prj.orcamento, prj.nomeAgencia as AgenciaFomento, d.nomeDepto
FROM projeto prj, departamento d, trabalha t
WHERE prj.pesquisadorPrincipal = t.professor
	AND t.departamento = d.numDepto

---------------------------------------------------------------------------------------
--h2) Mostrar uma consulta à visão que selecione a soma de
--financiamento por departamento e por agência de fomento. Devem ser exibidos o nome do
--departamento, o nome da agência de fomento e a soma total. 
---------------------------------------------------------------------------------------
SELECT nomeDepto, AgenciaFomento, SUM(orcamento)
FROM visao_H 
GROUP BY nomeDepto, AgenciaFomento

/*
"Faculdade de Biologia Marinha";"FAPEMIG";254000.00
"Faculdade de Gestao e Negocios";"FAPEMIG";110000.00
"Faculdade de Engenharia Mecatronica";"FAPEMIG";4500.00
"FACULDADE DE LETRAS";"CAPES";80.00
"FACULDADE DE LETRAS";"FAPEMIG";130.00
"Faculdade de Engenharia Mecatronica";"CAPES";15000.00
"Faculdade de Gestao e Negocios";"CAPES";330000.00
"FACULDADE DE MEDICINA";"CNPQ";238000.00
"FACULDADE DE LETRAS";"CNPQ";80.00
"FACULDADE DE QUÍMICA";"CAPES";100000.00
"FACULDADE DE MEDICINA";"FAPEMIG";162000.00
"Faculdade de Gestao e Negocios";"CNPQ";4500000.00
"Faculdade de Engenharia Mecatronica";"CNPQ";26000.00
"FACULDADE DE QUÍMICA";"FAPEMIG";2000.00
*/

--------------------------------------------------------------------------------------
--i1) Crie uma visão e uma regra de inserção por meio da visão. Mostre uma consulta à
--visão, faça duas inserções e mostre novamente uma consulta. 
--------------------------------------------------------------------------------------

CREATE VIEW visao_I1 AS
SELECT *
FROM professor prof
WHERE prof.area = 'Biologia Marinha';

CREATE RULE regra_I1 AS
ON INSERT TO visao_I1
DO INSTEAD 
INSERT INTO professor VALUES(
NEW.numFunc,
NEW.nomeProf,
NEW.cpf,
NEW.idade,
NEW.datanascimento,
NEW.ramal,
NEW.posicao,
NEW.area);

SELECT *
FROM visao_I1

/*31;"Girafales";"98739822900";29;"1985-07-19";"5321";"EFETIVO";"Biologia Marinha"
32;"Tarcisio";"11111111111";30;"1984-07-19";"0506";"EFETIVO";"Biologia Marinha"
33;"Marielza";"98022233984";40;"1974-07-19";"4561";"EFETIVO";"Biologia Marinha"
34;"Charles Xavier";"09123987391";28;"1986-07-19";"1234";"EFETIVO";"Biologia Marinha"
*/

INSERT INTO visao_I1 (numFunc, nomeProf, cpf, idade, datanascimento, ramal, posicao, area) 
VALUES (NEXTVAL('seq_professor'),'Pedro Henrique da Silva','13632376085',
20, '20/11/1996', '3447', 'ADJUNTO','Biologia Marinha');

INSERT INTO visao_I1 (numFunc, nomeProf, cpf, idade, datanascimento, ramal, posicao, area) 
VALUES (NEXTVAL('seq_professor'),'Maressita Salita','22314493230',
21, '22/08/1995', '3448', 'ADJUNTO','Biologia Marinha');


SELECT *
FROM visao_I1

/*31;"Girafales";"98739822900";29;"1985-07-19";"5321";"EFETIVO";"Biologia Marinha"
32;"Tarcisio";"11111111111";30;"1984-07-19";"0506";"EFETIVO";"Biologia Marinha"
33;"Marielza";"98022233984";40;"1974-07-19";"4561";"EFETIVO";"Biologia Marinha"
34;"Charles Xavier";"09123987391";28;"1986-07-19";"1234";"EFETIVO";"Biologia Marinha"
126;"Pedro Henrique da Silva";"13632376085";20;"1996-11-20";"3447";"ADJUNTO";"Biologia Marinha"
127;"Maressita Salita";"22314493230";21;"1995-08-22";"3448";"ADJUNTO";"Biologia Marinha"
*/