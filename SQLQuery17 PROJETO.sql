create database Racaodovale
go

drop database Racaodovale

use Racaodovale

create schema lojas authorization dbo
go

drop table cad_funcionario

create table cad_funcionario(
cad_CD int primary key identity(1,1),
cad_NM varchar(40) not null,
cad_CPF	varchar(12) not null,
cad_RG	varchar(20) not null,
cad_DT_NASC varchar(10) not null,
cad_END varchar(30) not null,
cad_EMAIL varchar(40) not null,
cad_USUARIO varchar(40) not null,
cad_SENHA varchar(40) not null,
cad_CARGO varchar(40) not null,	
)

create table cadast_fornecedor(
forn_CD int primary key identity(1,1),
forn_RSOCIAL varchar(40) not null,
forn_CNPJ varchar(40) not null,
forn_INSC_EST  varchar(40) not null,
forn_END varchar(40) not null,
forn_FONE varchar(40) not null,
forn_Email varchar(40) not null,
)

create table contas(
contas_CD int primary key identity(1,1),
contas_nm varchar(40) not null,
contas_barra varchar(40) not null,
contas_data_vencimento varchar(8) not null,
)


create table cadastro_produtos(
produtos_cd int primary key identity(1,1),
produtos_desc varchar(40) not null,
produtos_marca varchar(40) not null,
produtos_tamanho varchar(40) not null,
produtos_valor_compra varchar(40) not null,
produtos_valor_venda varchar(40) not null,
)

create table cadastro_cliente(
cadastro_CD int primary key identity(1,1),
cadastro_NM varchar(40) not null,
cadastro_RG varchar(40) not null,
cadastro_DT_NASC varchar(40) not null,
cadastro_Email varchar(40) not null,
cadastro_fone varchar(40) not null,
cadastro_fone_referencia varchar(40) not null,
)

create table controle_estoque(
contro_CD int primary key identity(1,1),
contro_CD_PRO varchar(40) not null,
contro_DESCRI varchar(40) not null,
contro_DATA varchar(40) not null,
contro_DATA_ENT varchar(40) not null,
contro_DATA_SAIDA varchar(40) not null,
contro_COD_FORNECEDOR varchar(40) not null,
contro_RSOCIAL varchar(40) not null,
contro_UNIDADE varchar(40) not null,
cad_CD int foreign key references cad_funcionario,
produtos_cd int foreign key references cadastro_produtos,
)


create table controle_caixa(
controle_cd  int primary key identity(1,1),
controle_cd_barra  varchar(40) not null,
controle_desc  varchar(40) not null,
controle_QT  varchar(40) not null,
controle_VALOR_PRO  varchar(40) not null,
cad_CD int foreign key references cad_funcionario,
produtos_cd int foreign key references cadastro_produtos,
cadastro_CD int foreign key references cadastro_cliente
)

create table promocao_produto(
pro_cd int primary key identity(1,1),
pro_nm_pro varchar(40) not null,
pro_dt_validade_pro varchar(40) not null,
pro_dt_promocao varchar(40) not null,
produtos_cd int foreign key references cadastro_produtos
)

