
-----------------------------------------------------
Faça os códigos para 
BACKUP
E 
RESTORE

Insira três funcionarios e três materiais

Faça um select geral para as duas tabelas

Teste o select abaixo:
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

Procure identificar o que o select acima faz...

Coloque GO entre os comandos

Faça a ligação com o Visual Studio


create database Banquinho
go

use Banquinho

create schema banco authorization dbo

create table Banco.cadastro
(
  CAD_CD int primary key identity(1,1),
  CAD_nome varchar(40)  NOT NULL,
  CAD_fone varchar(20)  NOT NULL,
  CAD_email varchar(40) NOT NULL,
  CAD_end varchar(40) NOT NULL,
  CAD_cep varchar(12) NOT NULL,
  CAD_regiao varchar(40) NOT NULL,
  CAD_país varchar(40) NOT NULL
)

insert into Banco.cadastro values('PAULO',23451234,'PAULO@GMAIL.COM','RUA RODOLFO',12345123,'NORTE','BRASIL')
insert into Banco.cadastro values('ANA',23451234,'PAULO@GMAIL.COM','RUA RODOLFO',12345123,'NORTE','BRASIL')
insert into Banco.cadastro values('JOAO',23451234,'PAULO@GMAIL.COM','RUA RODOLFO',12345123,'NORTE','BRASIL')

select * from Banco.cadastro

create database farm
go

use farm

create schema fazenda authorization dbo

CREATE TABLE fazenda.funcionarios
(
funcionarios_cd int primary key identity(1,1),
funcionarios_Nm	varchar(40)  NOT NULL,
funcionarios_End varchar(40)  NOT NULL,
funcionarios_Fone varchar(20)  NOT NULL,
funcionarios_email varchar(40)  NOT NULL,
)

CREATE TABLE fazenda.materiais
(
materiais_cd int primary key identity(1,1),
materiais_Nm varchar(40)  NOT NULL,
materiais_Prof varchar(40)  NOT NULL,
materiais_Dias_S varchar(40)  NOT NULL,
)

BACKUP DATABASE [farm] TO  DISK = N'C:\SQL2019\DB\Backup\farm.bak' WITH NOFORMAT, NOINIT,  NAME = N'farm-Completo Banco de Dados Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

USE [master]
RESTORE DATABASE [farm] FROM  DISK = N'C:\SQL2019\DB\Backup\farm.bak' WITH  FILE = 1,  NOUNLOAD,  STATS = 5

GO

use farm

insert into fazenda.funcionarios values('PAULO','RUA RODOLFO',12345678,'paulo@gmail.com')
insert into fazenda.funcionarios values('JOAO','RUA RODOLFO',12345678,'paulo@gmail.com')
insert into fazenda.funcionarios values('JOSE','RUA RODOLFO',12345678,'paulo@gmail.com')

SELECT * FROM fazenda.funcionarios

insert into fazenda.materiais values('MADEIRA','RODOLFO','sabado')
insert into fazenda.materiais values('Ferro','RODOLFO','domingo')
insert into fazenda.materiais values('Aço','RODOLFO','segunda')

SELECT * FROM fazenda.materiais

SELECT funcionarios_Nm FROM fazenda.funcionarios
UNION
SELECT materiais_Nm FROM fazenda.materiais