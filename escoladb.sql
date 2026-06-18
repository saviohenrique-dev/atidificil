--1.CRIAR BANCO DE DADOS--
CREATE DATABASE ESCOLADB;

--2. SELECIONAR O BANCO-- 
USE ESCOLADB;

--3. CRIAR A TABELA DE TURMAS-- 
CREATE TABLE TURMAS(
ID INT PRIMARY KEY IDENTITY (1,1), -- AUTO INCREMENTO
nome VARCHAR (50) NOT NULL,
TURNO VARCHAR (10)
);


--4. CRIAR A TABELA DE TURMAS--
CREATE TABLE ALUNOS(
ID INT PRIMARY KEY IDENTITY (1,1),
NOME VARCHAR (80) NOT NULL, 
EMAIL VARCHAR (100) UNIQUE, 
TURMA_ID INT
--CRIANDO O RELACIONAMENTO--
FOREIGN KEY (TURMA_ID) REFERENCES TURMAS (ID)
);

--5. adicionar itens nas tabelas (ddl)--
insert into turmas (nome,turno) values ('programador full stack', 'manhã');
insert into turmas (nome,turno) values ('programador full stack', 'tarde');

insert into alunos (nome, email, turma_id) values ('savio', 'savio.h.silva6@aluno.senai.br' 1);
insert into alunos (nome, email, turma_id) values ('gerbson', 'gerbson@aluno.com' 1);
insert into alunos (nome, email, turma_id) values ('ryan', 'ryan@docente,com' 2);

--6. mostrar as duas tabelas (juntas)
select alunos.nome as 'nome do aluno',
       alunos.email as 'email',
	   turmas.nome as 'nome da turma'
	   turmas.turno as	'turno'
from alunos 
inner join turmas on alunos.id = turmas.id;




