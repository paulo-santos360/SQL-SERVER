create database lavanderia
go

use lavanderia
go

create schema lav authorization dbo
go

create table lav.Consumidor
(
Cons_cd		INT	Identity(1,1) Primary Key,
Cons_nm		VARCHAR(50)	NOT NULL,
Cons_end	VARCHAR(50)	NOT NULL,
Cons_email	VARCHAR(50)	NOT NULL
)
go

Create table lav.Produtos
(
Prod_cd int	Identity(1,1) Primary Key,
Prod_nm	varchar(50)	NOT NULL,
Prod_va money NOT NULL
)
go

Create table lav.Servicos
(
Serv_cd int	Identity(1,1) Primary Key,
Serv_nm	varchar(40)	not null,
Serv_valor	money not null,
)

Create table lav.Funcionarios
(
Func_cd		INT	Identity(1,1) Primary Key,
Func_nm		VARCHAR(50)	NOT NULL,	
Func_end	VARCHAR(30)	NOT NULL,
Func_cid	VARCHAR(30)	NOT NULL,
Func_pais	VARCHAR(30)	NOT NULL
)
go


create table lav.caixa
(
caix_CD	int Identity(1,1) Primary Key,

Func_cd int foreign key references lav.funcionarios,
Cons_cd	int	foreign key references lav.Consumidor,
Prod_cd	int foreign key references lav.Produtos,
Serv_cd	int foreign key references lav.Servicos,
caix_Qtde int	not null,
caix_Valor money not null
)


Caix
Func_cd int foreign key references nomeTabe nm

Func_cd int foreign key references lav.funcionarios Func_NM





insert into lav. Consumidor values ('Matthias','Rua Cruise','MCruise@grosbeak.com');
insert into lav.Consumidor values ('Meenaksh','Rua Mason','Meenakshi.Mason@JACANA.COM');
insert into lav. Consumidor values ('Christia','Rua Cage','Christian.Cage@KINGLET.COM');
insert into lav.Consumidor values ('Gerald',' Rua Martin','GMartin@scoter.com');
insert into lav.Consumidor values ('Guillaum','Edwards','GEdwards@shrike.com');
insert into lav.Consumidor values ('Maurice ','Rua Mahoney','Maurice.Mahoney@SNIPE.COM');
insert into lav.Consumidor values ('Maurice ','Rua Hasan','Maurice.Hasan@STILT.COM');
insert into lav.Consumidor values ('Diana',' Rua  Sen','DSen@tattler.com');
insert into lav.Consumidor values ('Maurice ','Rua Daltrey','MDaltrey@teal.com');
insert into lav.Consumidor values ('Elizabet','Rua Brown','Elizabeth.Brown@THRASHER.COM');
insert into lav.Consumidor values ('Maximili','Rua Henner','Maximilian.Henner@DUNLIN.COM');
insert into lav.Consumidor values ('Sam ',' Rua   Spielber','SSpielberg@gadwall.com');
insert into lav.Consumidor values ('Sachin ',' Rua Neeson','SNeeson@gallinule.com');
insert into lav.Consumidor values ('Sivaji  ','Rua Landis','Sivaji.Landis@GOLDENEYE.COM');
insert into lav.Consumidor values ('Mammutti','Rua Pacino','Mammutti.Pacino@GREBE.COM');
insert into lav.Consumidor values ('Elias',' Rua  Fawcett','EFawcett@jacana.com');
insert into lav.Consumidor values ('Ishwarya','Rua Roberts','IRoberts@lapwing.com');
insert into lav.Consumidor values ('Gustav ',' Rua Steenbur','Gustav.Steenburgen@PINTAIL.COM');
insert into lav.Consumidor values ('Markus',' Rua Rampling','Markus.Rampling@PUFFIN.COM');
insert into lav.Consumidor values ('Gomer  ',' Rua Slater',' RuaGSlater@pyrrhuloxia.com');
insert into lav.Consumidor values ('Divine',' Rua Aykroyd','DAykroyd@redstart.com');
insert into lav.Consumidor values ('Dieter',' Rua Matthau','Dieter.Matthau@VERDIN.COM');
insert into lav.Consumidor values ('Divine',' Rua Sheen',' Rua Divine.Sheen@COWBIRD.COM');
insert into lav.Consumidor values ('Fernando','Rua Grodin','FGrodin@creeper.com');
insert into lav.Consumidor values ('Frederic','Rua Romero','RuaFRomero@curlew.com');
insert into lav.Consumidor values ('Goldie','Rua Montand','Goldie.Montand@DIPPER.COM');
insert into lav.Consumidor values ('Sidney','Rua Capshaw','Sidney.Capshaw@DUNLIN.COM');
insert into lav.Consumidor values ('Fredwina','Rua Lyon','Rua  FLyon@flicker.com');
insert into lav.Consumidor values ('Eddie','Rua Boyer','Rua  EBoyer@gallinule.com');
insert into lav.Consumidor values ('Eddie','Rua  Stern','Rua Eddie.Stern@GODWIT.COM');
insert into lav.Consumidor values ('Ernest ',' Rua Weaver ',' RuaErnest.Weaver@GROSBEAK.COM');
insert into lav.Consumidor values ('Diana',' Rua  lorentz','dlor@limpkin.com');
insert into lav.Consumidor values ('Stephen','Rua King',' Ruasking@merganser.com');
insert into lav.Consumidor values ('Alexande','Rua Hunold','AHun@MOORHEN.COM');

DELETE  FROM lav.Consumidor

--Resolvi--
DELETE FROM lav.Consumidor
WHERE Cons_nm ='Stephen'



--Resolvi--
select * from lav.Consumidor


--Resolvi--
SELECT * FROM lav.Consumidor
ORDER BY Cons_nm; 

--Resolvi--
SELECT * FROM lav.Consumidor
ORDER BY Cons_nm desc;

--Faça uma pesquisa por nome e endereço dos consumidores.

--Resolvi--
select * from lav.Produtos

--Resolvi--
select Prod_nm from lav.Produtos

--Resolvi--
select distinct Prod_nm
from lav.Produtos

insert into lav.Produtos values('queijo',10.00)

select *
from lav.Servicos

SELECT * FROM lav.consumidor
WHERE cons_nm='Eddie'
and cons_end='Rua Cage' 

select * from 
join
custos.categoria
on
custos.despesas.cat_cd=categoria.cat_cd

use lavanderia