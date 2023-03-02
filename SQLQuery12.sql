-- Criando o banco de dados CompanyDB
CREATE DATABASE CompanyDB;
GO

-- Usando o banco de dados CompanyDB
USE CompanyDB;
GO

-- Criando a tabela Comp.Employees
CREATE TABLE Employees (
EmployeeID int PRIMARY KEY IDENTITY(1,1),
FirstName nvarchar(50) NOT NULL,
LastName nvarchar(50) NOT NULL,
HireDate date NOT NULL,
Department nvarchar(50) NOT NULL,
Salary money NOT NULL
);
GO

-- Inserindo alguns registros na tabela Employees
INSERT INTO Employees VALUES 
		('John', 'Doe', '2022-01-01', 'Sales', 5500),
       ('Jane', 'Doe', '2022-02-01', 'Marketing', 6000),
       ('Bim', 'Smith', '2022-03-01', 'IT', 6500),
       ('Djohn', 'Doe', '2022-01-01', 'Sales', 2100),
       ('Mane', 'Doe', '2022-02-01', 'Marketing', 3000),
       ('Tim', 'Smith', '2022-03-01', 'IT', 35000);
GO

-- Criando a view EmployeeInformation
CREATE VIEW EmployeeInformation AS
SELECT EmployeeID, FirstName, LastName, HireDate, Department
FROM Employees;
GO

-- Criando a view EmployeeSalaries
CREATE VIEW EmployeeSalaries AS
SELECT EmployeeID, FirstName, LastName, Salary, Department
FROM Employees
WHERE Salary > 5000;
GO

-- Executando um SELECT na tabela Employees
SELECT *
FROM Employees;
GO

-- Executando um SELECT na view EmployeeInformation
SELECT *
FROM EmployeeInformation;
GO

-- Executando um SELECT na view EmployeeSalaries
SELECT *
FROM EmployeeSalaries;
GO

-- Faça um select com estas informações, trazendo salários abaixo de 3000

create database Empresa
use Empresa

create schema Nova authorization dbo	

drop table Nova.Empregados

create table Nova_Empregados
(
Empregado_CD int primary key identity(1,1),
Empregado_nome varchar(50),
Empregado_sobrenome varchar(50),
Empregado_DATA_CONTRA varchar(50),
Empregado_DEPARTAMENTO varchar(50),
);
go

select * from  Nova_Empregados

insert into Nova_Empregados values
('Paulo','Santos','08/04/1988','ti'),
('Ze','OLIVEIRA','22/04/1988','AÇOUQUEIRO'),
('CARLOS','SantOS','08/04/1988','ENFERMAGEM'),
('MATEUS','Santos','08/08/1988','Aux de produção'),
('Paulo','Oliveira','17/04/1988','ti'),
('Paulo','JAIME','08/04/1988','ti'),
('ZE','JAIME','22/04/1988','AÇOUQUEIRO'),
('CARLOS','JAIME','08/04/1988','ENFERMAGEM'),
('MATEUS','JAIME','08/08/1988','Aux de produção'),
('Paulo','Silva','17/04/1988','ti'),
('Paulo','Silva','08/04/1988','ti'),
('ZE','Silva','22/04/1988','AÇOUQUEIRO'),
('CARLOS','Silva','08/04/1988','ENFERMAGEM'),
('MATEUS','Silva','08/08/1988','Aux de produção'),
('Paulo','Silva','17/04/1988','ti'),
('Paulo','JAva','08/04/1988','TI'),
('ZE','JAva','22/04/1988','AÇOUQUEIRO'),
('CARLOS','JAva','08/04/1988','ENFERMAGEM'),
('MATEUS','JAva','08/08/1988','Aux de produção'),
('Paulo','JAIME','17/04/1988','ti')


CREATE VIEW EmployeeInformation AS
SELECT Empregado_CD, Empregado_nome, Empregado_sobrenome,Empregado_DATA_CONTRA, Empregado_DEPARTAMENTO
FROM Nova_Empregados
WHERE Empregado_departamento= 'TI'


DROP * FROM Nova.Empregados

select * from EmployeeInformation

use Racao

drop table Cadastro_Fornecedor

create table Cadastro_Fornecedor
(
Cad_CD int primary key identity(1,1),
Cad_RSOCIAL varchar(50) not null,
Cad_CNPJ  varchar(50) not null,
Cad_INSC_ED  varchar(50) not null,
Cad_END  varchar(50) not null,
Cad_FONE  varchar(50) not null,
Cad_EMAIL  varchar(50) not null,
Cad_REPRESENTANTE varchar(50) not null,
)

drop table Controle_Estoque

create table Controle_Estoque
(
Contro_CD int primary key identity(1,1),
Contro_CD_PRO varchar(50) not null,
Contro_DESCRICAO  varchar(50) not null,
Contro_DATA  date not null,
Contro_DATA_ENT  date not null,
Contro_DATA_SAID  date not null,
Contro_CD_FORN  varchar(50) not null,
Contro_RSOCIAL varchar(50) not null,
Contro_UNIDADE varchar(50) not null,
)

drop table Cadastro_Produtos

create table Cadastro_Produtos
(
PRO_CD int primary key identity(1,1),
PRO_CD_PRO varchar(50) not null,
PRO_DESCRICAO  varchar(50) not null,
PRO_DATA  date not null,
PRO_DATA_ENT  date not null,
PRO_DATA_SAID  date not null,
PRO_CD_FORN  varchar(50) not null,
PRO_RSOCIAL varchar(50) not null,
PRO_UNIDADE varchar(50) not null,
Contro_CD int foreign key references Controle_Estoque
)

create table Cadastro_Cliente
(
Cadastro_CD int primary key identity(1,1),
Cadastro_NM varchar(50) not null,
Cadastro_CPF  varchar(50) not null,
Cadastro_RG  date not null,
Cadastro_DATA_NASC  date not null,
Cadastro_FONE  date not null,
Cadastro_EMAIL varchar(50) not null,
Cadastro_REFERENCIA varchar(50) not null,
Cadastro_FONE_REFERENCIA varchar(50) not null,
)

create table Controle_Caixa
(
Controle_CD int primary key identity(1,1),
Controle_CD_Pro varchar(50) not null,
Controle_DESC varchar(50) not null,
Controle_QT varchar(50) not null,
Controle_VL_PRO varchar(50) not null,
)

create table Pagamento_Contas
(
Pag_CD int primary key identity(1,1),
Pag_Barr varchar(50) not null,
Pag_DT_VENC varchar(50) not null,
)

create table Senha
(
Sen_CD int primary key identity(1,1),
Sen_Senha varchar(50) not null,
Sen_Cargo varchar(50) not null,
)

create table 


