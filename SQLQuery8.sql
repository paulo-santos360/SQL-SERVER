create database seguros
use seguros

drop table seg.clientes

create schema seg authorization dbo

create table seg.clientes
(
seg_cd		int	primary key	identity(1,1),
seg_nm		varchar(40) Not Null,
seg_fone	varchar(20) Not Null,
seg_email	varchar(50) Not Null,
seg_end		varchar(40) Not Null,
seg_cep		varchar(10) Not Null,
seg_regiao	varchar(50) Not Null,
seg_pais	varchar(50) Not Null,
seg_dep		varchar(50)  Not Null
)
go

insert into seg.clientes values ('marco','123456','email@email.com','rual tal','12012-290','endereço','brasil','dependenters')
insert into seg.clientes values ('vanderson','123456','email@email.com','rual tal','12012-290','endereço','brasil','dependenters')
insert into seg.clientes values ('laércio','123456','email@email.com','rual tal','12012-290','endereço','brasil','dependenters')

select * from seg.clientes

select * from Persons.exemplo4

select seg_nm, seg_fone from seg.clientes

create schema Persons authorization dbo

drop table Persons.exemplo4

CREATE TABLE Persons.exemplo4
(
Per_Id int primary key identity(1,1),
Per_lnome varchar(255)  NOT NULL,
Per_pnome varchar(255) NOT NULL,
Per_endereço varchar(255) NOT NULL,
Per_cidade varchar(255)  NOT NULL,
)

--alterar coluna--
alter table Persons.exemplo4
add Per_email varchar(50)

alter table Persons.exemplo4
add email varchar(50)

alter table seg.clientes
alter column seg_email Varchar(40)

alter table seg.clientes
alter column seg_nm Varchar(40)

alter table seg.clientes
add seg_cep Varchar(40)

alter table seg.clientes
drop column seg_cep	varchar(10)

alter table seg.clientes
rename column seg_email to seg_emails;