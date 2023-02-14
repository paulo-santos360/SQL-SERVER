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