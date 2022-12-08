--Pedro Henrique da Silva 11511BSI257
--Maressa Sales 11311BSI213

----------------------------------------------------------------
--2) Explore  todos  os  comandos  sobre  gatilhos  apresentados  
--na  aula  teórica.  Execute  cada  um  deles observando, quando 
--for o  caso, os valores  armazenados nas tabelas afetadas 
--antes  e depois da execução dos mesmos (por exemplo, 
--realizando um SELECT antes e depois). 
----------------------------------------------------------------

------------------------------
--TRIGGER AUDITORIA DE PRODUTO
------------------------------
CREATE TABLE product_price_audit (
product_id INTEGER CONSTRAINT price_audit_fk_products REFERENCES Produto(CodProd),
old_price NUMERIC(5, 2),
new_price NUMERIC(5, 2)
);

CREATE OR REPLACE FUNCTION audit_product_price()
RETURNS trigger AS $$ 
BEGIN
RAISE NOTICE 'product_id = %, old_price = %, new_price = %', old.CodProd, old.Valunit, new.Valunit ;
RAISE NOTICE 'A redução de preço é de mais de 25 porcento';
-- insert row into the product_price_audit table
INSERT INTO product_price_audit (product_id, old_price, new_price) VALUES (old.CodProd, old.Valunit, new.Valunit);
RETURN NULL; 
-- sempre deve ter um retorno
END $$ 
language 'plpgsql';

CREATE TRIGGER before_product_price_update
BEFORE UPDATE OF Valunit ON Produto 
FOR EACH ROW WHEN (new.Valunit  < old.Valunit  * 0.75)
EXECUTE PROCEDURE audit_product_price();

--SELECT antes do UPDATE
SELECT * FROM PRODUTO

/*
13;"G ";"OURO";6.18
22;"M ";"LINHO";0.11
25;"KG";"QUEIJO";0.97
30;"AS";"AUCAR";0.3
31;"BA";"CHOCOLATE";0.87
45;"M ";"MADEIRA";0.25
53;"M ";"LINHA";1.8
77;"M ";"PAPEL";1.05
78;"L ";"VINHO";2
*/

UPDATE PRODUTO 
SET VALUNIT = VALUNIT * .7
WHERE CODPROD IN (13,22)

--Execução do Update:
/*
NOTICE:  product_id = 13, old_price = 6.18, new_price = 4.326
NOTICE:  A redução de preço é de mais de 25 porcento
NOTICE:  product_id = 22, old_price = 0.11, new_price = 0.077
NOTICE:  A redução de preço é de mais de 25 porcento
*/

---------------------------------------------------------------------------------------
--TRIGGER PARA ARMAZENAR DATA/HORA E NOME DO USUÁRIO QUE INSERIU OU MODIFICOU EMPREGADO
---------------------------------------------------------------------------------------

CREATE TABLE emp (
empname text,
salary integer,
last_date timestamp,
last_user text
);

CREATE FUNCTION emp_stamp() RETURNS trigger AS $emp_stamp$
 BEGIN
 --Check that empname and salary are given
 IF NEW.empname IS NULL THEN
	RAISE EXCEPTION 'empname cannot be null';
 END IF;
 IF NEW.salary IS NULL THEN
	RAISE EXCEPTION '% cannot have null sallary', NEW.empname;
 END IF;

 --Who works for us when she must pay for it?
 IF NEW.salary < 0 THEN
	RAISE EXCEPTION '% cannot have a negative salary', NEW.empname;
 END IF;

 --Remember who changed the payroll when
 NEW.last_date := current_timestamp;
 NEW.last_user := current_user;

 RETURN NEW;
END;
$emp_stamp$ LANGUAGE plpgsql;

CREATE TRIGGER emp_stamp 
BEFORE INSERT OR UPDATE ON emp
FOR EACH ROW EXECUTE PROCEDURE emp_stamp();

INSERT INTO emp values ('John Doe', 1000);
select * from emp;
/*
"John Doe";1000;"2017-06-27 15:59:28.201";"postgres"
*/

update emp set salary = 10000 where empname = 'John Doe';
select * from emp;
/*
"John Doe";10000;"2017-06-27 15:59:40.558";"postgres"
*/

--Tentar colocar um salário negativo:
update emp set salary = -800 where empname = 'John Doe';
/*ERROR:  John Doe cannot have a negative salary*/

--------------------------
--3)Escreva gatilhos para:
--------------------------