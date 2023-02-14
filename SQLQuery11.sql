create database Racao

use Racao

create schema Loja authorization dbo

drop table Casa_Funcionario

create table Loja_Funcionario
(
Clien_Cod int primary key identity(1,1),
Clien_NM	varchar(40) not null,
Clien_CPF	varchar(40) not null,
Clien_RG	varchar(40) not null,
Clien_DT_NASC varchar(40) not null,
Clien_END varchar(40) not null,
Clien_FONE int not null,
Clien_Email varchar(40) not null,
Clien_USUARIO varchar(40) not null,
Clien_SENHA varchar(40) not null,
Clien_CARGO varchar(40) not null,
)