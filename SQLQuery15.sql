-- Criando o banco de dados CompanyDB
CREATE DATABASE CompanyDB
GO

-- Usando o banco de dados CompanyDB
USE CompanyDB
GO

-- Criando a tabela Employees
CREATE TABLE Employees (
EmployeeID int PRIMARY KEY IDENTITY(1,1),
FirstName nvarchar(50) NOT NULL,
LastName nvarchar(50) NOT NULL,
HireDate date NOT NULL,
Department nvarchar(50) NOT NULL,
Salary money NOT NULL
)
GO

-- Inserindo alguns registros na tabela Employees
INSERT INTO Employees (FirstName, LastName, HireDate, Department, Salary)
VALUES ('John', 'Doe', '2022-01-01', 'Sales', 55000),
       ('Jane', 'Doe', '2022-02-01', 'Marketing', 60000),
       ('Jim', 'Smith', '2022-03-01', 'IT', 65000)
GO-- Criando o banco de dados CompanyDB

create view EmployeesInfo as
select EmployeeID, FirstName, LastName, HireDate, Department, Salary From Employees
where Department = 'Sales'

create view SALARYINFO as
select EmployeeID, FirstName, LastName, HireDate, Department, Salary From Employees
where Salary > 60000

create procedure GetAllEmployeersByDepartmentID 
@department nvarchar(50)
as
begin
select * from Employees
where Department = @department
end

exec GetAllEmployeersByDepartmentID;

CREATE PROCEDURE GetAllEmployeersByDepartmentID12
as
begin
update produtos set salario = salario * 1.1 where categoria = 'eletrônicos' end

exec produtos

select * from produtos