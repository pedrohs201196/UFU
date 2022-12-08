-- 6. Consultas

SET SEARCH_PATH TO ConsultaOpinioesPK;

--Mostre o nome de todos os formulários com todas as suas perguntas e todas as respostas possíveis de cada pergunta.
--As colunas devem se chamar pesquisa,resposta,respostas_possiveis respectivamente. Ordenar nesta ordem.
--Requisitos atendidos: descrição textual (1/10), envolver duas ou mais tabelas (1/5), funcoes e agrupamento (0/2), funcoes e agrupamento com having (0/2).
SELECT f.nome pesquisa,q.pergunta,COALESCE(i.descricao,'Resposta em Texto') respostas_possiveis FROM formulario f
JOIN formulario_questao fq ON f.id = fq.id_formulario
JOIN questao q ON fq.id_questao = q.id
LEFT JOIN item i ON q.resposta = i.id_resposta
ORDER BY f.nome,q.id,i.id;



--Mostre o nome de todas as pessoas no banco de dados, com uma coluna identificando o tipo de pessoa (aluno,professor,técnico,terceirizado).
--A nova coluna deve se chamar Tipo. Ordenar por tipo de pessoa e nome em ordem alfabética.
--Requisitos atendidos: descrição textual (2/10), envolver duas ou mais tabelas (2/5), funcoes e agrupamento (0/2), funcoes e agrupamento com having (0/2).
SELECT nome,'Aluno' tipo FROM pessoa WHERE cpf IN (SELECT cpf_pessoa FROM aluno) UNION
SELECT nome,'Professor' FROM pessoa WHERE cpf IN (SELECT cpf_pessoa FROM professor) UNION
SELECT nome,'Técnico' FROM pessoa WHERE cpf IN (SELECT cpf_pessoa FROM tecnico_administrativo UNION SELECT cpf_pessoa FROM tecnico_academico) UNION
SELECT nome,'Terceirizado' FROM pessoa WHERE cpf IN(SELECT cpf_pessoa FROM terceirizado)
ORDER BY tipo,nome;



--Uma das pesquisas trata de eleições para reitor. Quem venceu estas eleições, de acordo com os votos neste banco de dados?
--Mostre APENAS a opção vencedora e a quantidade de votos
--Dica: Sabe-se que o ID do formulário é '5' e ele é de múltipla escolha.
--Requisitos atendidos: descrição textual (3/10), envolver duas ou mais tabelas (3/5), funcoes e agrupamento (0/2), funcoes e agrupamento com having (1/2).
SELECT i.descricao vencedores,count(*) votos FROM resposta_multipla r
JOIN item i ON (r.id_resposta = i.id_resposta AND r.id_item = i.id) WHERE r.id_formulario = 5
GROUP BY i.descricao
HAVING count(*) >= ALL
    (SELECT count(*) votos FROM resposta_multipla r JOIN item i ON (r.id_resposta = i.id_resposta AND r.id_item = i.id) WHERE r.id_formulario = 5 GROUP BY i.descricao);



--Para cada unidade acadêmica, mostre quantos professores e técnicos elas possuem. Caso não haja nenhum, mostre 0.
--Requisitos atendidos: descrição textual (4/10), envolver duas ou mais tabelas (4/5), funcoes e agrupamento (1/2), funcoes e agrupamento com having (1/2).
SELECT uac.sigla,count(p.*) FROM unidade_academica uac
LEFT JOIN (SELECT cpf_pessoa,sigla_uac FROM professor UNION SELECT cpf_pessoa,sigla_uac FROM tecnico_academico) p ON uac.sigla = p.sigla_uac
GROUP BY uac.sigla;



--Mostre o nome de todos os formulários que já foram respondidos por mais de 3 pessoas. Incluia a quantidade de respostas feitas.
--Requisitos atendidos: descrição textual (5/10), envolver duas ou mais tabelas (5/5), funcoes e agrupamento (1/2), funcoes e agrupamento com having (2/2).
SELECT nome,count(*) responderam FROM formulario
JOIN (SELECT id_formulario FROM resposta_multipla UNION ALL SELECT id_formulario FROM resposta_texto) r ON formulario.id = r.id_formulario
GROUP BY id
HAVING count(*) > 3;



--Mostre, para cada tipo de pessoa a quantidade de pessoas cadastradas no banco de dados (considere as duas classes de técnicos como uma só).
--Requisitos atendidos: descrição textual (6/10), envolver duas ou mais tabelas (6/5), funcoes e agrupamento (1/2), funcoes e agrupamento com having (2/2).
SELECT 'Aluno' tipo,count(*) qtd FROM aluno UNION
SELECT 'Professor',count(*) FROM professor UNION
SELECT 'Técnicos',count(*) FROM (SELECT * FROM tecnico_academico UNION SELECT * FROM tecnico_administrativo) t UNION
SELECT 'Terceirizado',count(*) FROM terceirizado;



--O professor 'Aristóteles' foi avaliado neste ano através de um formulário. Mostre o id de cada quesito, a menor e maior nota recebida, e a média de cada nota (duas casas decimais).
--Dica: Sabe-se que o ID for formulário é 1 e ele é de múltipla escolha
--Requisitos atendidos: descrição textual (7/10), envolver duas ou mais tabelas (7/5), funcoes e agrupamento (2/2), funcoes e agrupamento com having (2/2).
SELECT id_questao quesito, MIN(descricao),MAX(descricao),AVG(descricao::int)::numeric(3,2) FROM resposta_multipla r
JOIN item i ON (r.id_resposta = i.id_resposta AND r.id_item = i.id)
WHERE r.id_formulario = 1
GROUP BY id_questao;



--Mostre o nome da pessoa que mais respondeu pesquisas e a quantidade de pesquisas que ela respondeu
--Requisitos atendidos: descrição textual (8/10), envolver duas ou mais tabelas (8/5), funcoes e agrupamento (2/2), funcoes e agrupamento com having (3/2).
SELECT q.nome,r.count FROM
    (SELECT p.cpf_pessoa,count(*) FROM
        (SELECT cpf_pessoa FROM resposta_multipla UNION ALL SELECT cpf_pessoa FROM resposta_texto) p
        GROUP BY cpf_pessoa HAVING count(*) >= ALL
            (SELECT count(*) FROM (SELECT cpf_pessoa FROM resposta_multipla UNION ALL SELECT cpf_pessoa FROM resposta_texto) p GROUP BY cpf_pessoa)) r
JOIN pessoa q ON r.cpf_pessoa = q.cpf;



--Mostre o nome do formulário mais antigo do sistema, juntamente com o nome da pessoa que o criou
--Requisitos atendidos: descrição textual (9/10), envolver duas ou mais tabelas (9/5), funcoes e agrupamento (2/2), funcoes e agrupamento com having (2/2).
SELECT f.nome,p.nome criador FROM formulario f
JOIN pessoa p ON f.cpf_criador = p.cpf
WHERE f.data_inicial = (SELECT MIN(data_inicial) FROM formulario);



--Mostre o nome e data final de todos os formulários que ainda não expiraram. Ordene-os por ordem de expiração. Formulários que não expiram coloque 'Não expira' no lugar da data.
--Requisitos atendidos: descrição textual (10/10), envolver duas ou mais tabelas (9/5), funcoes e agrupamento (2/2), funcoes e agrupamento com having (2/2).
SELECT nome,coalesce(data_final::text,'Não expira') FROM formulario
WHERE data_final IS NULL OR data_final >= CURRENT_DATE
ORDER BY data_final;

--Consultas Extras
--Mostre a quantidade de alunos por curso que responderam a pelo menos um formulário
--Requisitos atendidos: descrição textual (11/10), envolver duas ou mais tabelas (10/5), funcoes e agrupamento (2/2), funcoes e agrupamento com having (2/2).
SELECT  a.sigla_curso AS Curso, count(a.cpf_pessoa) AS Quantidade FROM aluno a WHERE a.cpf_pessoa IN
(SELECT DISTINCT t.cpf_pessoa FROM 
(SELECT cpf_pessoa FROM resposta_multipla UNION SELECT cpf_pessoa FROM resposta_texto) AS t) GROUP BY a.sigla_curso;


--Mostre quantas vezes cada formulário foi respondido. Na consulta deve ser mostrado o nome, seguida da quantidade, ordenado pelo nome.
--Requisitos atendidos: descrição textual (12/10), envolver duas ou mais tabelas (11/5), funcoes e agrupamento (2/2), funcoes e agrupamento com having (2/2).
SELECT f.nome, count(cpf_pessoa) FROM 
(SELECT cpf_pessoa, id_formulario FROM resposta_multipla 
UNION SELECT cpf_pessoa, id_formulario FROM resposta_texto) as t inner join formulario f
on f.id = t.id_formulario
GROUP BY f.id order by f.nome


