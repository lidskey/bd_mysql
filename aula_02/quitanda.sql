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
("tomate",100,"2023-12-15",8.00);
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

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

select * from tb_produtos;

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

-- INSERT INTO tb_produtos (nome, quantidade, preco)
-- VALUES("Sacola Cinza", 1118, 0.50);
-- INSERT INTO tb_produtos (nome, quantidade, preco)
-- VALUES("Sacola Verde", 1118, 0.50);



-- variacoes de select 



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
