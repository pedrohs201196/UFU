set search_path to universidade

--2) 

--A)Selecionar o número funcional, o nome e a posição dos professores que tem mais do que 35
--anos em ordem alfabética. 

SELECT numFunc, nomeProf, posicao
FROM professor 
WHERE idade > 35
ORDER BY nomeProf asc;

/* RESPOSTA: 

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

--B) Selecionar o nome dos chefes de departamento cujo endereço do departamento inclua ‘João
--Naves’. 

-- junção na cláusula where:

SELECT p.nomeProf 
FROM departamento d, professor p
WHERE   p.numFunc = d.chefeDepto AND
  endereco LIKE '%João Naves%';

-- junção na cláusula from:
SELECT p.nomeProf
FROM professor p INNER JOIN departamento d ON
     p.numFunc = d.chefeDepto
WHERE endereco LIKE '%João Naves%';

/* RESPOSTA:

"Aleandra da Silva Sampaio"
"Marcelo da Silva"
"MARIA CAMILA"
*/


--C)Selecionar o nome de todos os professores que trabalham no departamento chefiado pela
-- professora ‘Maria Camila’ em ordem alfabética. 

-- junção na cláusula where:

SELECT p.nomeProf 
FROM professor p, departamento d
WHERE d.chefeDepto = (SELECT numFunc FROM professor WHERE nomeProf = 'MARIA CAMILA')
ORDER BY p.nomeProf ASC;

-- junção na clausula from:

SELECT p.nomeProf 
FROM professor p INNER JOIN departamento d
ON d.chefeDepto = (SELECT numFunc FROM professor WHERE nomeProf = 'MARIA CAMILA')
ORDER BY p.nomeProf ASC;

/*RESPOSTA:

"Abadia Gilda Buso Matoso"
"Aércio Sebastião Borges"
"Alberto Oliveira Barbosa"
"Aleandra da Silva Sampaio"
"ALESSANDRA SANTOS"
"Ananda Silva Singh"
"Andre Carlos Menck"
"Antonio Sergio Penedo"
"Ben Hur Braga Taliberti"
"Charles Xavier"
"Girafales"
"ISRAEL RODRIGUES"
"JOANESCLEIDE CAMARGOS BARBOSA"
"Joao Fernandez"
"JOAQUIM CARMELITO DE ANDRADE"
"JOSELITO DOS REIS"
"JOSEMAR ARMANDO BRAGA"
"Marcelo da Silva"
"MARIA CAMILA"
"Maria Costa"
"Marielza"
"Pedro Coelho"
"RENATO TEIXEIRA"
"Tarcisio"
*/

--D)Selecionar o nome do departamento e o nome do pesquisador principal do projeto cujo
-- número de identificação é 121. 

SELECT DISTINCT d.nomeDepto, p.nomeProf
FROM departamento d, professor p, projeto pj
WHERE d.chefeDepto = pj.pesquisadorPrincipal AND
      p.numFunc = pj.pesquisadorPrincipal AND 
      pj.pesquisadorPrincipal = 121
      

--E)Selecionar o nome dos colaboradores do projeto chefiado pelo pesquisador principal
-- chamado ‘Maria Costa’.

-- junção na cláusula where:

SELECT  DISTINCT p.nomeProf
FROM professor p, conduz c, projeto pj
WHERE c.colaborador = p.numFunc AND
      c.projeto = pj.numProjeto AND
      pj.pesquisadorPrincipal = (SELECT numFunc 
               FROM professor
               WHERE nomeProf = 'Maria Costa');


-- junção na clausula from:
SELECT p.nomeProf
FROM colaborador c INNER JOIN professor p ON
     c.colaborador = p.numFunc INNER JOIN projeto pj ON
     pj.pesquisadorPrincipal = (SELECT numFunc 
              FROM professor
              WHERE nomeProf = 'Maria Costa');
/*RESPOSTA:
"Marcelo da Silva"
"Maria Costa"
"Joao Fernandez"
*/