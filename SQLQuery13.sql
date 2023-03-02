create database Senac
use Senac

create schema Senac authorization dbo

drop table Senac.Aluno

create table Senac.Aluno
(
Alu_CD int primary key identity(1,1),
Alu_NM varchar(50),
Alu_SobreNome varchar(50),
Alu_Nasc varchar(50),
Alu_Cidade varchar(50)
)


select * from Senac.Aluno

select * from AlunosView

drop view AlunosView


insert into Senac.Aluno values('Paulo','Santos','08/04/1999','Jacarei')
insert into Senac.Aluno values('Alan','Santos','08/04/1999','Sao Paulo')
insert into Senac.Aluno values('Douglas','Santos','08/04/1999','Rio de Janeiro')

create view AlunosView As
select Alu_CD,Alu_NM,Alu_SobreNome,Alu_Nasc,Alu_Cidade
from Senac.Aluno
where Alu_Cidade='Sao Paulo'

create view AlunosView As
select Alu_CD,Alu_NM,Alu_SobreNome,Alu_Nasc,Alu_Cidade
from Senac.Aluno
where Alu_Cidade='Jacarei'

create database biblioteca
use  biblioteca

create table Funcionarios
(
Func_CD int primary key identity(1,1),
Func_NM varchar(40),
Func_CG varchar(40),
Func_END varchar(40),
Func_CPF varchar(40),
Func_RG varchar(40),
Func_data_nasc varchar(40)
)

select * from Funcionarios

insert into Funcionarios values('paulo','Atendente','Caçapava',12345678,42.987987-4,08/04/1988)
insert into Funcionarios values('Joao','Atendente','Jacarei',12345678,42.987987-4,08/04/1988)
insert into Funcionarios values('paulo','Atendente','Caçapava',12345678,42.987987-4,08/04/1988)

drop table livros

create table livros
(
liv_CD int primary key identity(1,1),
liv_Titulo varchar(40),
liv_Autor varchar(50),
liv_Genero varchar(40)
)

insert into livros values('O CODIGO DA VINCI','LEONARDO',12345678)
insert into livros values('EU SOU A LENDA','SR SMITH',12345678)

create view livroView1 As
select liv_CD,liv_Titulo,liv_Autor,liv_Genero
from livros
where liv_Titulo='O CODIGO DA VINCI'

select * from livroView1 
