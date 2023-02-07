create database transportadora
go

use transportadora

create schema truck authorization dbo
go

create table funcionarios
(
Func_CD int identity(1,1) primary Key,
Func_NM varchar(40) not null,
Func_Fone  varchar(20) 
)

create table truck.funcionarios
(
Func_CD int identity(1,1) primary Key,
Func_NM varchar(40) not null,
Func_Fone  varchar(20) 
)

drop table funcionarios


insert into truck.funcionarios values('Renato','123')
insert into truck.funcionarios values('Marco','456')
insert into truck.funcionarios values('João','345')


select * from truck.funcionarios

select Func_Fone from truck.funcionarios

create database produtos
use produtos

create table food_produtos
(
Prod_CD int identity(1,1) primary Key,
Prod_Prato varchar(40) not null,
Prod_Delivery  varchar(40) not null,
Prod_Peso varchar(20) not null,
Prod_Valor money not null
)

insert into food_produtos values('arroz e feijão','viagem','KG10','20')

select * from food_produtos
