create database loja
use loja

create schema loja authorization dbo
go



create table loja.clientes
(CLI_cd   INT	Identity(1,1),
CLI_nm	nchar(40) not null,	
CLI_fone int not null,	
CLI_end nchar(40) not null,	
CLI_email nchar(40) not null
)
go

select * from loja.clientes
