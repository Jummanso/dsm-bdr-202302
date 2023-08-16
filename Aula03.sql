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

postgres=# create database bd_aula03;
CREATE DATABASE
postgres=# create table tbl_cliente (codigo_cliente integer PRIMARY KEY, Nome TEXT NOT NULL, Cidade varchar [30], Endereco varchar[50]);
CREATE TABLE
postgres=# create table tbl_titulo (codigo_titulo integer PRIMARY KEY, titulo text NOT NULL, categoria text);
CREATE TABLE
postgres=# create table tbl_emprestimo (numero_emprestimo integer PRIMARY KEY, codigo_cliente integer, codigo_livro integer);
CREATE TABLE
postgres=# create table tbl_livros (cod_livro integer PRIMARY KEY, codigo_titulo integer, status text);
CREATE TABLE
postgres=# \dt
             List of relations
 Schema |      Name      | Type  |  Owner
--------+----------------+-------+----------
 public | tbl_cliente    | table | postgres
 public | tbl_emprestimo | table | postgres
 public | tbl_livros     | table | postgres
 public | tbl_titulo     | table | postgres
(4 rows)