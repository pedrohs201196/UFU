set search_path to banco;

-- Exercício 1
alter table cliente drop constraint fkgerente;
alter table funcionario drop constraint fkagencia;
alter table funcionario drop constraint fksupervisor;
alter table dependentes drop constraint fkfuncionario;
alter table conta drop constraint fkcod_agencia;
alter table operacao drop constraint fkconta;
alter table clienteconta drop constraint fkcliente;
alter table clienteconta drop constraint fkconta;

alter table cliente add constraint fkgerente foreign key (gerente) references funcionario(num_funcional) on delete no action on update cascade;
alter table funcionario add constraint fkagencia foreign key (agencia) references agencia(codigo) on delete no action on update cascade;
alter table funcionario add constraint fksupervisor foreign key (supervisor) references funcionario(num_funcional) on delete no action on update cascade;
alter table dependentes add constraint fkfuncionario foreign key (funcionario) references funcionario(num_funcional) on delete cascade on update cascade;
alter table conta add constraint fkcod_agencia foreign key (cod_agencia) references agencia(codigo) on delete no action on update cascade;
alter table operacao add constraint fkconta foreign key (cod_agencia, numero_conta) references conta(cod_agencia, numero) on delete no action on update cascade;
alter table clienteconta add constraint fkcliente foreign key (id_cliente) references cliente(id) on delete no action on update cascade;
alter table clienteconta add constraint fkconta foreign key (cod_agencia, numero_conta) references conta(cod_agencia, numero) on delete no action on update cascade;
-- As restrições são coerentes quanto ao ON UPDATE e o ON DELETE

-- Exercício 2
-- a) Código da agência já está com 4 caracteres
--Teste:
insert into agencia values('12345', 'Banco do Bruno', 'Uberlandia', 'MG');
--ERROR:  value too long for type character(4)
--Mas ainda vamos obrigar que não possa ter menos do que 4 caracteres
alter table agencia add constraint ckagencia check(char_length(codigo) = 4);
--Teste:
insert into agencia values('123', 'Banco do Bruno', 'Uberlandia', 'MG');
--ERROR:  new row for relation "agencia" violates check constraint "ckagencia"
      

-- b) 	
	update operacao set tipo = 'C' where tipo = 'c';
	update operacao set tipo = 'D' where tipo = 'd';
	update operacao set tipo = 'C' where tipo not in ('C', 'D');
	alter table operacao add check (tipo in ('C', 'D'));
--Teste:
	insert into operacao values('0743','899769',3,'S','Saque','01/02/2016',1);
--ERROR:  new row for relation "operacao" violates check constraint "operacao_tipo_check"

-- c)
	alter table agencia alter column municipio set not null;
	alter table agencia alter column estado set not null;
	alter table conta alter column saldo set not null;
--Teste:
	insert into agencia(codigo,nome,estado) values('9999','Agencia Que Vai dar Erro','MG');
--ERROR:  null value in column "municipio" violates not-null constraint

-- d)  
	alter table operacao add check(valor >= 0);
--Teste:
insert into operacao values('0743','899769',3,'D','Saque','01/02/2016',-1);
--ERROR:  new row for relation "operacao" violates check constraint "operacao_valor_check"


-- Exercício 3
	update funcionario set num_funcional = 164378 where num_funcional = 1;
	-- Retorna: ERROR:  update or delete on table "funcionario" violates foreign key constraint "fkgerente" on table "cliente"

	delete from funcionario where num_funcional = 1
	-- Retorna: ERROR:  update or delete on table "funcionario" violates foreign key constraint "fkgerente" on table "cliente"
	
	-- Ao realizar essas operações de update e delete sobre o funcionario cuja num_funcional = 1, 
	-- as tabelas possivelmente afetadas serão tabela de cliente, dependentes e a própria tabela de funcionario.
	-- Nenhuma tabela de fato será alterada por conta das restrições.







	