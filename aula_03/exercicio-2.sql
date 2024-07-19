create database db_curso_da_minha_vida;
SET FOREIGN_KEY_CHECKS = 0;
use db_curso_da_minha_vida;

create table tb_categorias(
id bigint auto_increment not null,
cursos_ead varchar(20),
palestras_presenciais varchar(255),
 primary key (id)
);

insert into tb_categorias (cursos_ead, palestras_presenciais) values
('Gastronomia','Como se Alimentar Melhor'),
('Confeitaria','Emoções e Comida'),
('Brigadeiro Gourmet','Boas Práticas na Manipulação de Alimentos'),
('Cozinha Brasileira','Cozinha Fácil e Rápida'),
('Cozinha Árabe','Como Higienizar os Alimentos');

select * from tb_categorias;
-- ----------------------------

create table tb_cursos(
id bigint auto_increment not null,
instrutor varchar(20),
horario time,
preco decimal(4,1),
tarefas varchar(5),
primary key (id)
);

insert into tb_cursos (instrutor, horario, preco, tarefas, cursosid) values
('Paulo Dias','12:30:00','500.0','Não',1),
('Marcela Ribeiro','10:00:00','200.0','Sim',2),
('Pietro Seydoux','19:00:00','800.0','Sim',3),
('Alexandra Avalon','13:00:00','600.0','Não',4),
('Paola Carosella','20:00:00','700.0','Não',5),
('Henrique Fogaça','21:00:00','500.0','Sim',6),
('Érick Jacquin','22:00:00','900.0','Sim',7),
('Gordon Ramsay','12:00:00','999.0','Não',8);




select * from tb_cursos;

select * from tb_cursos where preco > 500.00;

select * from tb_cursos where preco between 600.00 AND 999.0;

select * from tb_cursos where instrutor like "%J%";

alter table tb_cursos add cursosid BIGINT;

alter table tb_cursos add constraint fk_cursos_categorias foreign key (cursosid) REFERENCES tb_categorias(id);

SELECT * FROM tb_categorias INNER JOIN tb_cursos ON tb_cursos.cursosid = tb_categorias.id;

SELECT tb_categorias.cursos_ead, tb_cursos.instrutor, tb_cursos.horario,tb_cursos.preco, tb_cursos.tarefas FROM tb_cursos INNER JOIN tb_categorias
 ON tb_cursos.id = tb_categorias.id where tb_categorias.cursos_ead = "Gastronomia";




SET FOREIGN_KEY_CHECKS = 1;
