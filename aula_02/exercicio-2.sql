create database db_loja_de_eletronicos;
use db_loja_de_eletronicos;

create table tb_produtos(
codigo_de_barra bigint auto_increment,
nome varchar(255) not null,
fabricante varchar(50),
preco decimal not null,
categoria varchar(100),
primary key (codigo_de_barra)

);
describe tb_produtos;

insert into tb_produtos (nome, fabricante, preco, categoria) values
("Playstation 1", "Sony", 50.00,"Consoles");
insert into tb_produtos (nome, fabricante, preco, categoria) values
("Mega Drive/Genesis","Sega",400.00,"Consoles Antigos");
insert into tb_produtos (nome, fabricante, preco, categoria) values
("Fones Bluetooth", "Xiaomi", 30.00, "Acessórios");
insert into tb_produtos (nome, fabricante, preco, categoria) values
("Mousepad Profissional","Red Dragon", 100.00,"Acessórios Gamer");
insert into tb_produtos (nome, fabricante, preco, categoria) values
("Playstation 2","Sony",500.00,"Consoles");
insert into tb_produtos (nome, fabricante, preco, categoria) values
("Nintendo 3DS","Foxconn", 1.000,"Consoles");
insert into tb_produtos (nome, fabricante, preco, categoria) values
("Teclado Mecânico","Razer", 550.00,"Acessórios Gamer" );
insert into tb_produtos (nome, fabricante, preco, categoria) values
("Joystick para Playstation 3 Alternativo", "LALALA",150.00,"Acessórios Gamer");
-- ----------------------------
ALTER table  tb_produtos MODIFY preco decimal (6,2);
-- ----------------------------
select * from tb_produtos;
select * from tb_produtos where preco < 500;
select * from tb_produtos where preco > 500;
-- ----------------------------
UPDATE tb_produtos SET preco = 1800.00 WHERE codigo_de_barra = 3;
UPDATE tb_produtos SET preco = 900.00 WHERE codigo_de_barra = 7;

