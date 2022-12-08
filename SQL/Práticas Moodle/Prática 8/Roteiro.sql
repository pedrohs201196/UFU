set search_path to banco
	-- 16) CONSULTAS USANDO AGRUPAMENTOS SIMPLES
    --> Em todas as questões as respostas devem ser sem repetições. Em muitos casos o DISTINCT resolveria
        -- a questão, mas para as questões abaixo não use o DISTINCT.
	-- (a) Listar todos os estados que possuem agências.
	SELECT estado FROM agencia GROUP BY estado
	-- (b) Listar todos os tipos de operações que existem.
	SELECT tipo FROM operacao GROUP BY tipo
	-- (c) Listar todos os CPFs de clientes. Comparar o tamanho da resposta com o número de clientes e justificar.
	SELECT * FROM cliente
	SELECT cpf FROM cliente ORDER BY cpf
	-- (d) Listar todos os estados e municípios que possuem agências.
	SELECT estado,municipio FROM agencia GROUP BY estado, municipio
	-- (e) Listar todas as datas de nascimento, cidade e estado dos clientes
	-- (f) Listar todos os municípios que possuem agências dos estados de 'SP' e 'MG'
	SELECT municipio FROM agencia WHERE UPPER(estado) IN ('SP','MG') GROUP BY municipio
    -- (g) Listar todos as agências (código da agência) que possuem funcionários que não são gerentes de clientes.
	SELECT 
    -- (g) Listar todos as agências (código da agência) que em que não há nenhum gerente de cliente.
 	
-- 17) CONSULTAS COM AGRUPAMENTOS E FUNÇÕES AGREGADAS
    -- (a) Listar a quantidade de funcionários por agência (mostrar o código da agência e o número de funcionários)
	SELECT agencia, count(*) FROM funcionario GROUP BY agencia ORDER BY count
	-- (b) Para os funcionários que possuem dependentes, listar o número funcional de cada funcionário 
	       --juntamente com o número de dependentes que eles possuem
	SELECT 
	-- (c) Listar para cada data cadastrada a quantidade de clientes que nasceram na respectiva data
	-- (d) Listar a quantidade de agências por município e estado
	-- (e) Listar o código de cada agência em que trabalham funcionários juntamente com a data de admissão mais recente
	-- (f) Listar todas as contas que efeturam operações. Mostrar jutamente o maior valor de operação da conta
	-- (g) Listar todas as contas que efeturam operações. Mostrar jutamente o maior, o menor, a média e desvio 
         -- padrão dos valores de operação da conta
	-- (h) Listar para cada conta a quantidade de clientes que a possui.
	-- (i) Listar o número funcional dos gerentes jutamente com o número de clientes que eles gerenciam
	-- (j) Listar o número funcional dos supervisores juntamente com o número de empregados que eles supervisionam
    -- (k) Listar para cada estado o número de municípios que possuem agências. Lembre que em um município pode 
	       -- haver mais de uma agência
    -- (l) Listar a agência, a conta e o valor médio da operações bancárias de cada conta.

-- 18) CONSULTAS COM AGRUPAMENTOS, JUNÇÕES E FUNÇÕES AGREGADAS
	-- (a) Listar parar funcionários admitidos no último ano a quantidade de dependentes que possuem
	-- (b) Listar o número funcional de cada funcionário juntamente com o número de dependentes que eles possuem
	       --- caso o funcionário não possua dependetes ele deve aparecer na resposta com 0 dependentes
    -- (c) Listar para cada conta a quantidade de operações que foram realizadas na mesma. Caso a conta
	       --- não possua operação associada, escrever '<sem operação>'
    -- (d) Listar o número funcional de cada funcionário lotados em agências do 'RJ' juntamente com o número 
	       -- de dependentes que eles possuem caso o funcionário não possua dependetes ele deve 
		   -- aparecer na resposta com 0 dependentes
	-- (e) Listar a quantidade de supervisores de cada agência do estado de 'MG'
		-- Listar para cada agência a quantidade de gerentes (somente para as agência que possuem gerentes)
    -- (f)
		-- Listar para cada agência a quantidade de gerentes, incluir as agências sem gerentes na resposta, 
		   -- mostrando zero na quantidade
		

-- 19) CONSULTAS COM AGRUPAMENTOS E QUE LISTAM ATRIBUTOS NÃO AGRUPADOS.
    -->> Se o agrupamento for feito utilizando um atributo que é PK, pode-se mostrar no resultado da consulta
	  -- os atributos da mesma tabela e que não foram agrupados.
    -- (a) Listar a quantidade de funcionários por agência (mostrar o nome da agência e o número de funcionários)
	-- (b) Para os funcionários que possuem dependentes, listar o nome de cada funcionário 
	       --juntamente com o número de dependentes que eles possuem	   
	-- (c) Listar o nome de cada agência em que trabalham funcionários juntamente com a data de admissão mais recente
	-- (d) Listar todas as contas que efeturam operações. Mostrar jutamente o maior valor de operação da conta
	-- (e) Listar para cada conta o saldo e a quantidade de clientes que a possui.
	-- (f) Listar o nome dos supervisores juntamente com o número de empregados que eles supervisionam
		
		   

-- 20) CONSULTAS COM UNION, INTERSECT, EXCEPT
    -- (a) Listar, em ordem afabética, os nomes de todas as pessoas cadastradas no banco (funcionários, clientes 
	--     e dependentes)
	-- (b) Listar, em ordem afabética, os nomes de todas as pessoas cadastradas no banco (funcionários, clientes
	--     e dependentes) incluindo uma coluna nova na resposta que especifica  se a pessoa é cliente,
    --	   funcionário ou dependente.
	--      ex: João  Cliente; Maria Cliente; Zeca Funcionário
	--     a nova coluna deve chamar 'Tipo'. Na resposta, ordenar por tipo e por ordem alfabética de nome
	-- (c) Mostrar os estados que possuem agências mas não possuem clientes que nasceram antes de '01/01/1995'
	-- (d) Mostrar os nomes repetidos de clientes e funcionários	
	-- (e) Mostrar os nomes repetidos de clientes e dependentes
	-- (f) Mostrar os nomes repetidos de clientes, funcionários e dependentes
	-- (g) Mostrar os nomes repetidos de clientes e dependentes e de clientes e dependentes
	-- (h) Mostrar o número funcional dos funcionários que são supervisores mas não são gerentes
	-- (i) Mostrar o nome dos funcionários que são supervisores mas não são gerentes
	-- (j) Mostrar as agências (o código) que possuem funcionários mas não possuem contas
	-- (k) Mostrar as agências (o código) que possuem contas mas não possuem funcionarios
	-- (l) Mostrar as agências (o código) que não possuem contas nem funcionários

	
-- 21) EXISTS / NOT EXISTS
	-- (a) 

-- 22) (ANY | SOME) / ALL
    -- (a) Mostrar o nome e o saldo do cliente que possui saldo de conta corrente maior que a média do saldo de cada agência.
    -- (b) Mostrar o nome e o saldo do cliente que possui saldo de conta corrente menor que a média do saldo de cada agência do estado de 'SP '.
    -- (c) Mostrar o nome e o saldo do cliente que possui saldo de conta corrente maior que a média do saldo de pelo menos uma agência.
	
-- 23) Aninhadas correlacionadas
    -- (a) Mostrar as operações bancárias maiores que a média do valor de operação de cada conta
	
	