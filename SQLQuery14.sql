create database Racao
use Racao

create table Logar
(
Logar_CD int primary key identity(1,1),
Usuario varchar(40) not null,
Cargo  varchar(40) not null
)

create table Contas
(
Contas_CD int primary key identity(1,1),
Contas_CD_Barra int,
Contas_Data_Venc date,
)

create table Cad_Funcionario
(
Cad_CD int primary key identity(1,1),
Cad_NM varchar(50) not null,
Cad_CPF varchar(50) not null,
Cad_RG varchar(50) not null,
Cad_DT_NASC varchar(50) not null,
Cad_END varchar(50) not null,
Cad_EMAIL varchar(50) not null,
Cad_USUARIO varchar(50) not null,
Cad_SENHA varchar(50) not null,
Cad_CARGO varchar(50) not null,
Logar_CD int foreign key references Logar
)

create table Cadas_Cliente
(
Cadas_CD int primary key identity(1,1),
Cadas_NM varchar(50) not null,
Cadas_CPF varchar(15) not null,
Cadas_RG varchar(15) not null,
Cadas_DT_NASC date not null,
Cadas_Fone varchar(15) not null,
Cadas_EMAIL varchar(50) not null,
Cadas_Referencia_Cliente varchar(15) not null,
Cadas_Fone_Referencia varchar(15) not null,
Cad_CD int foreign key references Cad_Funcionario
)

create table Cadast_Fornecedor
(
Forn_CD int primary key identity(1,1),
Forn_RSOCIAL varchar(50) not null,
Forn_CNPJ varchar(20) not null,
Forn_INS_EST varchar(50) not null,
Forn_END varchar(30) not null,
Forn_Fone varchar(15) not null,
Forn_EMAIL varchar(50) not null,
Forn_Representante varchar(30) not null,
Cad_CD int foreign key references Cad_Funcionario
)

create table Controle_Estoque
(
Contro_CD int primary key identity(1,1),
Contro_CD_Pro varchar(50) not null,
Contro_DESC varchar(20) not null,
Contro_DATA date not null,
Contro_DATA_ENT  date not null,
Contro_DATA_SAID date not null,
Contro_Cod_Fornecedor varchar(50) not null,
Contro_RSOCIAL varchar(30) not null,
Contro_UNIDADE varchar(30) not null,
Cad_CD int foreign key references Cad_Funcionario
)

create table Cadastro_Produtos
(
Produtos_CD int primary key identity(1,1),
Produtos_CD_BARRA varchar(50) not null,
Produtos_DESC varchar(50) not null,
Produtos_MARCA varchar(50) not null,
Produtos_TAMANHO varchar(50) not null,
Produtos_VALOR_C varchar(50) not null,
Produtos_VALOR_V varchar(50) not null,
Cad_CD int foreign key references Cad_Funcionario
Contro_CD int foreign key references Controle_Estoque
)

create table Controle_Caixa
(
Controle_CD int primary key identity(1,1),
Controle_CD_PRO varchar(50) not null,
Controle_DESC varchar(50) not null,
Controle_QT varchar(50) not null,
Controle_VALOR_PRO varchar(50) not null,
Cad_CD int foreign key references Cad_Funcionario,
Produtos_CD int foreign key references Cadastro_Produtos
)

create table Produto_Promocao
(
Pro_CD int primary key identity(1,1),
Pro_NM_PROD varchar(50) not null,
Pro_CD_BARRA varchar(50) not null,
Pro_DT_VALIDADE varchar(50) not null,
Pro_DT_Fabricação varchar(50) not null,
Pro_DT_Promocao varchar(50) not null,
Cad_CD int foreign key references Cad_Funcionario,
Produtos_CD int foreign key references Cadastro_Produtos
)
