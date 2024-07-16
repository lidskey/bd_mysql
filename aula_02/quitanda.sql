-- DDL: define a estrutura
-- DML: define como serão tratados os dados
-- Create database - DDL
-- create table - DDL
-- primeiro raio lê toda a folha e o raio com cursor apenas uma linha 
-- não pode ter nome repetido de nome de dados
-- o comando drop database remove a database
-- drop database db_quitanda;
-- cada comando é individual
-- describe mostra os conteudos
-- select mostra como estão os dados na tabela
-- existe soft delete(marca como excluido) e hard delete (exclui de fato)

create database db_quitanda;
use db_quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY(id)
);

-- verificar a estrutura da tabela
describe tb_produtos;

insert into tb_produtos (nome, quantidade, datavalidade,preco) values 
("tomate",100,2023-12-15,8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);

-- variacoes de select 

select * from tb_produtos;

select nome, preco from tb_produtos;

-- para achar um valor 
select * from tb_produtos where id = 2;

-- para achar mais de um valor
select * from tb_produtos where id in (2,4);

-- selecionando dados co mos operadores relacionais
select * from tb_produtos where preco > 5.00;

-- é possível usar os operadores lógicos para buscas específicas
select * from tb_produtos where preco > 5 and quantidade < 100;

-- ----------------------------------------------------------------------
describe tb_produtos;

-- drop = table, delete == dados

alter table tb_produtos add descricao varchar(255);

alter table tb_produtos drop descricao;

alter table tb_produtos change nome nome_produto varchar(255);

-- ----------------------------------------------------------------------


SET SQL_SAFE_UPDATES = 0;

update tb_produtos set preco = 5.99 where id  = 1;

delete from tb_produtos where id = 1;

-- ------------------------------------------------
alter table tb_produtos modify preco decimal(6,2);

select * from tb_produtos;
