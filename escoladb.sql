create database escoladb

--1. criar banco de datos--

--2. selecione banco de dados--

use escoladb;

--3. criar tabela de alunos--
create table alunos(
id int primary key identity (1,1), 
nome varchar (80) not null,
email varchar (100) unique,
turma_id int
--criando o relacionamneto--
foreign key (turmas_id) references turmas(id)
);


