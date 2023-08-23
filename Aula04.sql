Aula 22/08/2023

ALTER TABLE tbl_cliente
ALTER COLUMN cidade
TYPE text;

ALTER TABLE tbl_cliente
ALTER COLUMN endereco
TYPE text;

INSERT INTO tbl_cliente values(001,'Joao da Silva','Sao Paulo','Rua das Flores,123');
INSERT INTO tbl_cliente values(002,'Maria Santos','Rio de Janeiro','Avenida das Palmeiras,456');
INSERT INTO tbl_cliente values(003,'Carlos Pereira','Belo Horizonte','Travessa das Estrelas,789');
INSERT INTO tbl_cliente values(004,'Ana Oliveira','Salvador','Praça da Liberdade,101');
INSERT INTO tbl_cliente values(005,'Pedro Almeida','Brasilia','Quadra dos Sonhos,222');

select*
from tbl_cliente;

select nome
from tbl_cliente;

select nome
from tbl_cliente
where cidade = 'Sao Paulo';

select nome
from tbl_cliente
where codigo_cliente > 3;

select*
from tbl_cliente;

create table tbl_cliente2 (codigo integer);

select *
from tbl_cliente2

INSERT INTO tbl_cliente (coluna1, coluna2, coluna3, ...)
SELECT coluna1, coluna2, coluna3, ...
FROM tbl_cliente;

DROP TABLE tbl_cliente2

CREATE TABLE tbl_cliente2 
AS
Select codigo_cliente from tbl_cliente;

select *
from tbl_cliente2

CREATE TABLE tbl_cliente3 
AS
Select * from tbl_cliente;

select *
from tbl_cliente3

select *
from tbl_titulo;

INSERT INTO tbl_titulo values(101,'O Mistério do Enigma','Um thriller emocionate','drama');
INSERT INTO tbl_titulo values(102,'A Jornada Perdida','Uma aventura épica','comedia');
INSERT INTO tbl_titulo values(103,'Amor nas Estrelas','Um romance celestial','comedia');
INSERT INTO tbl_titulo values(104,'Crime na Metrópole','Um mistério urbano','drama');
INSERT INTO tbl_titulo values(105,'A Magia Esquecida','Uma fantasia encantadora','comedia');







