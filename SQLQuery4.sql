create database estuds
use estuds

create schema senac authorization dbo

create table senac.alunos
(
alunos_CD int primary Key identity(1,1),
alunos_NM varchar(40) not null,
alunos_End varchar(40) not null,
alunos_Fone varchar(40) not null,
alunos_Email varchar(40) not null
)

--Não esqueça da CHAVE PRIMÁRIA

create table senac.materias
(
materias_CD int primary key identity,
materias_NM varchar(30) null,
materias_PROF varchar(40) null,
materias_dias varchar(40) null,
)

insert into senac.alunos values('joao','rodolfo',12341234,'paulo@gamil')
insert into senac.alunos values('paulo','rodolfo',12341234,'paulo@gamil')


insert into senac.materias values('joao','portuques','segunda-feira')

select * from senac.alunos

select * from senac.materias

select * from senac.alunos
where alunos_NM LiKE '%a%'
go

BACKUP DATABASE [estuds] TO  DISK = N'C:\SQL2019\DB\Backup\estuds.bak' WITH NOFORMAT, NOINIT,  NAME = N'estuds-Completo Banco de Dados Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

USE [master]
RESTORE DATABASE [estuds] FROM  DISK = N'C:\SQL2019\DB\Backup\estuds.bak' WITH  FILE = 1,  NOUNLOAD,  STATS = 5

GO

select * from 

use master
drop database estuds

drop table senac.Alunos

use Escola

create database Escola1

create schema senac authorization dbo

create table senac.Alunos
(
pess_CD int primary key,
pess_NM nchar(40) not null,
pess_SNM nchar(40) not null,
pess_Email nchar(40) not null
)

insert into senac.Alunos values (1,'Constant','Welles', 'Constantin.Welles@ANHINGA.COM')
insert into senac.Alunos values (2,'Harry ','  Pacino','  HPacino@ani.com')
insert into senac.Alunos values (3,'Manisha',' Taylor  ','MTaylor@auklet.com')
insert into senac.Alunos values (4,'Harrison','Sutherla','Harrison.Sutherland@GODWIT.COM')
insert into senac.Alunos values (5,'Matthias','MacGraw ','Matthias.MacGraw@GOLDENEYE.COM')
insert into senac.Alunos values (6,'Mark  ','  Hannah ',' MHannah@grebe.com')
insert into senac.Alunos values (7,'Matthias','Cruise  ','MCruise@grosbeak.com')
insert into senac.Alunos values (8,'Meenaksh','Mason   ','Meenakshi.Mason@JACANA.COM')
insert into senac.Alunos values (9,'Christia','Cage    ','Christian.Cage@KINGLET.COM')
insert into senac.Alunos values (10,'Gerald','  Martin  ','GMartin@scoter.com')
insert into senac.Alunos values (11,'Guillaum','Edwards ','GEdwards@shrike.com')
insert into senac.Alunos values (12,'Maurice ','Mahoney ','Maurice.Mahoney@SNIPE.COM')
insert into senac.Alunos values (13,'Maurice ','Hasan   ','Maurice.Hasan@STILT.COM')
insert into senac.Alunos values (14,'Diana','   Sen     ','DSen@tattler.com')
insert into senac.Alunos values (15,'Maurice ','Daltrey ','MDaltrey@teal.com')
insert into senac.Alunos values (16,'Elizabet','Brown   ','Elizabeth.Brown@THRASHER.COM')
insert into senac.Alunos values (17,'Maximili','Henner  ','Maximilian.Henner@DUNLIN.COM')
insert into senac.Alunos values (18,'Sam ','    Spielber','SSpielberg@gadwall.com')
insert into senac.Alunos values (19,'Sachin ',' Neeson  ','SNeeson@gallinule.com')
insert into senac.Alunos values (20,'Sivaji  ','Landis  ','Sivaji.Landis@GOLDENEYE.COM')
insert into senac.Alunos values (21,'Mammutti','Pacino  ','Mammutti.Pacino@GREBE.COM')
insert into senac.Alunos values (22,'Elias','   Fawcett ','EFawcett@jacana.com')
insert into senac.Alunos values (23,'Ishwarya','Roberts ','IRoberts@lapwing.com')
insert into senac.Alunos values (24,'Gustav ',' Steenbur','Gustav.Steenburgen@PINTAIL.COM')
insert into senac.Alunos values (25,'Markus','  Rampling','Markus.Rampling@PUFFIN.COM')
insert into senac.Alunos values (26,'Gomer  ',' Slater ',' GSlater@pyrrhuloxia.com')
insert into senac.Alunos values (27,'Divine','  Aykroyd ','DAykroyd@redstart.com')
insert into senac.Alunos values (28,'Dieter','  Matthau ','Dieter.Matthau@VERDIN.COM')
insert into senac.Alunos values (29,'Divine','  Sheen ','  Divine.Sheen@COWBIRD.COM')
insert into senac.Alunos values (30,'Fernando','Grodin  ','FGrodin@creeper.com')
insert into senac.Alunos values (31,'Frederic','Romero ',' FRomero@curlew.com')
insert into senac.Alunos values (32,'Goldie ',' Montand ','Goldie.Montand@DIPPER.COM')
insert into senac.Alunos values (33,'Sidney ',' Capshaw ','Sidney.Capshaw@DUNLIN.COM')
insert into senac.Alunos values (34,'Fredwina','Lyon ','   FLyon@flicker.com')
insert into senac.Alunos values (35,'Eddie  ',' Boyer','   EBoyer@gallinule.com')
insert into senac.Alunos values (36,'Eddie','   Stern  ',' Eddie.Stern@GODWIT.COM')
insert into senac.Alunos values (37,'Ernest ',' Weaver ',' Ernest.Weaver@GROSBEAK.COM')
insert into senac.Alunos values (38,'Diana','   lorentz ','dlor@limpkin.com')
insert into senac.Alunos values (39,'Stephen',' King   ',' sking@merganser.com')
insert into senac.Alunos values (40,'Alexande','Hunold  ','AHun@MOORHEN.COM')
insert into senac.Alunos values (41,'Hema  ','  Voight  ','Hema.Voight@PHALAROPE.COM')
insert into senac.Alunos values (42,'Neena ','  Kochhar ','nkochh@pipit.com')
insert into senac.Alunos values (43,'Nancy  ',' green','berngreenb@plover.com')


BACKUP DATABASE [escola] TO  DISK = N'C:\SQL2019\DB\Backup\escola.bak' WITH NOFORMAT, NOINIT,  NAME = N'escola-Completo Banco de Dados Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

USE [master]
RESTORE DATABASE [escola] FROM  DISK = N'C:\SQL2019\DB\Backup\escola.bak' WITH  FILE = 1,  NOUNLOAD,  STATS = 5

GO