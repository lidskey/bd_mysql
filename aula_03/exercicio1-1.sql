create database db_generation_game_online;
use db_generation_game_online;

create table  tb_classes(
uid bigint auto_increment not null,
classe varchar(20) not null,
ataque decimal(4,3) not null,
defesa decimal(4,3) not null,
primary key (uid)
);

describe tb_classes;

insert into tb_classes (classe, ataque, defesa) values 
('Arqueiro','5.000', '1.000'),
('Guerreiro','8.000', '3.000'),
('Paladino','1.000', '8.000'),
('Mago','6.000', '1.000'),
('Monge','8.000', '2.000'),
('Invocador','3.000', '2.000'),
('Curandeiro','2.000', '6.000'),
('Atirador','8.000', '1.000');

 alter table tb_personagens add classe varchar(20);
 alter table tb_personagens drop classe;
-- -----------------------------------------
select * from tb_classes;
-- -----------------------------------------

create table tb_personagens(
uid bigint auto_increment,
nome varchar(255),
raça varchar(20),
corDoCabelo varchar(20),
corDosOlhos varchar(20),
corDaPele varchar(20),
primary key (uid)
);


insert into tb_personagens (nome, raça,corDoCabelo,corDosOlhos,corDaPele, tb_classes.classe) values 
('Kyubiel', 'Humano','Branco','Azul','Parda','Arqueiro'),
('Ulrion', 'Elfo','Cinza','Verde','Branca', 'Guerreiro'),
('Kyubiel', 'Humano','Branco','Azul','Parda', 'Paladino'),
('Borgar', 'Anão', 'Ruivo', 'Castanho', 'Branca','Mago'),
('Zephyr', 'Orc', 'Preto', 'Amarelo', 'Verde','Guerreiro'),
('Mira', 'Humano', 'Castanho', 'Castanho', 'Escura','Paladino'),
('Eldrin', 'Elfo', 'Branco', 'Azul', 'Clara', 'Arqueiro'),
('Thorin', 'Anão', 'Castanho', 'Cinza', 'Branca','Mago');


select * from tb_personagens;
-- ----------------------------------------------
update tb_personagens set nome = 'Cliborn', raça = 'Humano', corDoCabelo = 'Branco', corDosOlhos = 'Castanho', corDaPele = 'Parda', classe = 'Guerreiro' where uid = 8;
-- ------------------------------------------------
select * from tb_classes where ataque > 2.000;
select * from tb_classes where ataque between 1.000 and 2.000;
select * from tb_classes where defesa between 1.000 and 2.000;
-- ------------------------------------------------
select * from tb_personagens where nome like 'C%';
-- --------------------------------------------------
select * from tb_personagens inner join tb_classes on tb_classes.uid = tb_personagens.uid;

select nome, ataque, defesa, tb_classes.classe from tb_personagens
 inner join tb_classes on tb_personagens.uid = tb_classes.uid where tb_classes.classe = 'Arqueiro';






