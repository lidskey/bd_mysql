create database db_sistema_escolar;
use db_sistema_escolar;

create table tb_estudantes(
inscricao bigint auto_increment,
nome varchar(255),
boletim bigint,
serie smallint,
classe varchar(30),
primary key (inscricao)
);

insert into tb_estudantes (nome, boletim, serie, classe) values
('Maria Clara dos Santos', 10.0, 8, "B"),
('Amanda Mirella Silva', 7.0, 5, "C"),
('Maria Helena Santos', 5.0, 6, "D"),
('Elias Carlos Ramos', 3.0, 7, "B"),
('Danilo Jesus Almeida', 7.0, 8, "D"),
('Hugo Araújo', 8.0, 9, "A"),
('Murilo Sales da Silva', 1.0, 4, "A"),
('Luciana Roberta Nogueira', 9.0, 3, "A");

select * from tb_estudantes;
select * from tb_estudantes where boletim > 7.0;
select * from tb_estudantes where boletim < 7.0;
-- -------------------------------
UPDATE tb_estudantes SET boletim = 5.0  WHERE inscricao = 8;
UPDATE tb_estudantes SET boletim = 10.0  WHERE inscricao = 3;
-- -------------------------------
delete from tb_estudantes where inscricao = 2;