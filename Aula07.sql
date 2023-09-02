Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Password for user postgres:
psql (15.2)
WARNING: Console code page (850) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# create database bd_aula07;
CREATE DATABASE

create table tbl_fornecedor (cod_fornecedor serial primary key, nome text not null, status integer, cidade text);
create table tbl_peca (cod_peca serial primary key, nome text not null, cor text, preco numeric, cidade text);
create table tbl_estoque (cod_compra serial primary key, 
						 cod_fornecedor integer references tbl_fornecedor(cod_fornecedor),
						cod_peca integer references tbl_peca(cod_peca),
						quantidade integer);
						
insert into tbl_fornecedor(nome,status,cidade) 
values ('A',30,'LONDRES'),('B',20,'PARIS'),('C',10,'PARIS'),('D',10,'LONDRES');

INSERT INTO tbl_peca(nome, cor, preco, cidade) values
('PLACA','AZUL',5,'LONDRES'),('MESA','VERMELHA',10,'PARIS'),('CADERNO','PRETA',14,'ROMA'),
('TESOURA','VERMELHA',12,'LONDRES');

INSERT INTO tbl_estoque(cod_fornecedor, cod_peca, quantidade) values
(1,1,30),(2,1,30),(3,2,10),(3,3,50);

--Listar o nome dos fornecedores(maiusculo) e das peças(minusculo) que se situam na mesma cidade, ordenado pelo nome

SELECT UPPER(f.nome), LOWER(p.nome)
FROM tbl_fornecedor f
JOIN tbl_peca p ON f.cidade = p.cidade
ORDER BY "upper";

--listar as cidades onde existem fornecedores (sem valores duplicados)

SELECT DISTINCT cidade
FROM tbl_fornecedor;

--Listar o nome e a cor das peças do fornecedor com código 3, ordenado pelo nome da peça

SELECT p.nome, p.cor
FROM tbl_peca p
JOIN tbl_estoque e ON p.cod_peca = e.cod_peca
WHERE e.cod_fornecedor = 3
ORDER BY p.nome;

--Listar o nome e a cidade dos fornecedores com mais de 10 peças.Contar só as peças de código 1. 

SELECT f.nome, f.cidade 
FROM tbl_fornecedor f
JOIN (
    SELECT cod_fornecedor, SUM(quantidade) AS total_peca1
    FROM tbl_estoque
    WHERE cod_peca = 1
    GROUP BY cod_fornecedor
    HAVING SUM(quantidade) > 10
) subquery ON f.cod_fornecedor = subquery.cod_fornecedor;

--Listar a quantidade total de peças com código 1, fornecidas pelos fornecedores.

SELECT SUM(e.quantidade) 
FROM tbl_estoque e
WHERE e.cod_peca = 1;

--Listar a média dos preços das peças fornecidas pelo fornecedor com código 3.

SELECT AVG(p.preco) 
FROM tbl_peca p
JOIN tbl_estoque e ON p.cod_peca = e.cod_peca
WHERE e.cod_fornecedor = 3;

--lista o valor da pecas mais cara e a mais barata.

SELECT MAX(preco) AS "Mais cara", MIN(preco) AS "Mais Barata"
FROM tbl_peca;

--listar a quantidade de peças cadastradas

SELECT COUNT(*) AS "Quantidade"
FROM tbl_peca;

--listar a quantidade de cidades diferentes onde existem peças cadastradas

SELECT COUNT(DISTINCT cidade) AS "Quantidade Cidades"
FROM tbl_peca;

-- listar a media dos precos de todas as peças, com somente 1 digito após a virgula.

SELECT ROUND(AVG(preco), 1) AS "Media dos Preços"
FROM tbl_peca;
