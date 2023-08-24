Aula 22/08/2023

ALTER TABLE tbl_cliente
ALTER COLUMN cidade
TYPE text;

ALTER TABLE tbl_cliente
ALTER COLUMN endereco
TYPE text;

INSERT INTO tbl_cliente values(1,'Joao Silva','Sao Paulo','Rua A,123');
INSERT INTO tbl_cliente values(2,'Maria Santos','Rio de Janeiro','Av. B,456');
INSERT INTO tbl_cliente values(3,'Pedro Almeida','Belo Horizonte','Rua C,789');
INSERT INTO tbl_cliente values(4,'Ana Oliveira','Salvador','Av. D,1011');
INSERT INTO tbl_cliente values(5,'Carlos Lima','Brasília','Rua E,1213');

select *
from tbl_titulo;

INSERT INTO tbl_titulo values(1,'Aventuras Urbanas','Uma história emocionante','DRAMA');
INSERT INTO tbl_titulo values(2,'Mistérios Antigos','Enigmas por resolver','COMEDIA');
INSERT INTO tbl_titulo values(3,'Amor nas Estrelas','Um romance intergaláctico','DRAMA');
INSERT INTO tbl_titulo values(4,'Código Enigmático','Segredos ocultos','COMEDIA');
INSERT INTO tbl_titulo values(5,'Histórias Perdidas','Contos esquecidos','DRAMA');

select *
from tbl_emprestimo

INSERT INTO tbl_emprestimo values(1,1,2);
INSERT INTO tbl_emprestimo values(2,2,4);
INSERT INTO tbl_emprestimo values(3,3,1);
INSERT INTO tbl_emprestimo values(4,4,5);
INSERT INTO tbl_emprestimo values(5,5,3);

select *
from tbl_livros

INSERT INTO tbl_livros values(1,1,'DISPONIVEL');
INSERT INTO tbl_livros values(2,1,'ALUGADO');
INSERT INTO tbl_livros values(3,2,'DISPONIVEL');
INSERT INTO tbl_livros values(4,3,'ALUGADO');
INSERT INTO tbl_livros values(5,4,'DISPONIVEL');

select*
from tbl_cliente;

--selecionar todos os clientes--
select nome
from tbl_cliente;

--selecionar os clientes que moram em São Paulo--
select nome
from tbl_cliente
where cidade = 'Sao Paulo';

--selecionar os clientes onde o código é maior que 3--
select nome
from tbl_cliente
where codigo_cliente > 3;

--selecionar todos os títulos--
select titulo
from tbl_titulo;


--Clonar uma tabela--
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

DROP TABLE tbl_cliente3;

select *
from tbl_livros;

--atualizar todos os livros alugados para disponível--
UPDATE tbl_livros
SET status = 'DISPONIVEL' 
WHERE status = 'ALUGADO';

select *
from tbl_cliente2
order by codigo_cliente;

--deletar todas as linhas da tabela tbl_cliente2 onde o código for maior que 3--
DELETE FROM tbl_cliente2
WHERE codigo_cliente > 3;









