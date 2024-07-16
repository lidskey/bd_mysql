create database db_colaboradores;
use db_colaboradores;
create table tb_colaboradores(
registro bigint auto_increment,
nome_completo varchar(255) not null,
setor varchar(100) not null,
salario decimal not null,
bonus decimal,
primary key (registro)
);

insert into tb_colaboradores (nome_completo, setor, salario, bonus) values
("Maria Aparecida Santos","Administração",3.000,1.0);
insert into tb_colaboradores (nome_completo, setor, salario, bonus) values
("Paulo Rogério dos Santos","Marketing",3.500,0.0);
insert into tb_colaboradores (nome_completo, setor, salario, bonus) values
("Roberta Oliveira","Estagiária",1.800,0.0);
insert into tb_colaboradores (nome_completo, setor, salario, bonus) values
("Tamiris de Almeira Silva","Recursos Humanos",4.000,5.0);
insert into tb_colaboradores (nome_completo, setor, salario, bonus) values
("Juliana Moreira dos Santos","Financeiro",5.000,8.0);
insert into tb_colaboradores (nome_completo, setor, salario, bonus) values
("Mark Lee da Silva","Administração", 2.000,1.0);

describe tb_colaboradores;
-- ---------------------------------------------------------
alter table tb_colaboradores modify salario decimal(4,3);
-- ---------------------------------------------------------

select * from tb_colaboradores where salario > 2.000;

select * from tb_colaboradores where salario < 2.000;

select * from tb_colaboradores;

-- ---------------------------------------------------------
SET SQL_SAFE_UPDATES = 0;
delete from tb_colaboradores where registro = 2;
delete from tb_colaboradores where registro = 7;