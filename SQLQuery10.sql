create database despesas
go 

use despesas
go

create schema custos authorization dbo
go

create table custos.categoria
(
cat_cd int identity(1,1) primary key,
cat_nm varchar(45)
)
go


insert into custos.categoria values ('agua')
insert into custos.categoria values ('automovel')
insert into custos.categoria values ('transporte')
insert into custos.categoria values ('luz')
insert into custos.categoria values ('gas')

select * from custos.categoria

drop table custos.despesas

create table custos.despesas
(
des_cd int identity(1,1) primary key,
des_nm varchar(45),
des_valor decimal(10,2),
des_dia datetime,
cat_cd int foreign key references custos.categoria
)
go


insert into custos.despesas values
('supermercado',350.55,2023-03-02,4)

select * from custos.despesas

select * from custos.despesas
join
custos.categoria
on
custos.despesas.cat_cd=categoria.cat_cd

use lavanderia