create database colab
go

drop table cola.pessoa

select * from pessoa

use colab

go

create schema cola authorization dbo
go

create table cola.pessoa
(
pess_CD		     int		identity(1,1) primary key,
pess_nm			 varchar(40) not null,
pess_nm_fantasia varchar(40) not null,
pess_endereco	 varchar(40) not null,
pess_numero		 varchar(5)	 not null,
pess_compl		 varchar(20) not null,
pess_bairro		 varchar(20) not null,
pess_cep		 varchar(10) not null,	
pess_cidade		 varchar(40) not null,
pess_uf			 varchar(40) not null,
pess_senha varchar(6) not null,
pess_login varchar(6) not null,
pess_cargo		varchar(30)not null,
)


select * from cola.pessoa 

insert into cola.pessoa values('Vando', 'Creanata', 'r: alfredo ramos', '453', 'comercio','ckp','1234-345','jacarei','sp','1','SENHA', 'ADM')
insert into cola.pessoa values('ze', 'CreanataGostoso', 'r: alfredo ramos', '453', 'comercio','jdi','1234-345','jacarei','sp','2','SENHA')
insert into cola.pessoa values('dinei', 'CreanataFabrica', 'r: alfredo ramos', '453', 'comercio','jd','1234-345','jacarei','sp','3','SENHA')

create table cola.fisica
(
fis_CD		int			primary key,
fis_CPF		int			not null,
fis_RG		int			not null,
fis_genero	varchar(1)	not null, 
fis_nasc	date		not null
)

create table cola.juridica
(
jur_CD		int				primary key,
jur_CNPJ	varchar(30)		not null,
jur_Ins_Est	varchar(30)		not null,
jur_fund	date			not null
)

create table cola.parceiro
(
par_CD			int			primary key,
par_tipo_pessoa	varchar(40)	not null,
par_desenpenho	float		not null
)

create table cola.colaborador
(
col_CD			int			primary key,		
col_ctps		varchar(20)	not null,
col_pis			varchar(20)	not null,
col_tit_eleitor varchar(20)	not null,
col_reservista	varchar(1)	not null,
col_est_civil	varchar(20)	not null,
col_num_dep		int,	
col_ativo		varchar(1)not null,
col_setor		varchar(30)not null,
col_cargo		varchar(30)not null,
col_salario		float,
col_fone1		varchar(20)	not null,
col_fone2		varchar(20)not null,
col_email_Pes	varchar(40)not null,
col_email_corp	varchar(40)not null
)
