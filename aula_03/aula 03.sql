-- consulta sql avançadas

use db_quitanda;

-- busca por nome ascendente/crescente
select * from tb_produtos order by nome_produto asc;
-- busca por nome decrescente
select * from tb_produtos order by nome_produto desc;
-- busca entre preços específicos
select * from tb_produtos where preco between 3.00 and 12.00;
-- busca por mais de um preço
SELECT * FROM tb_produtos WHERE preco IN (5.00, 10.00, 15.00);
-- busca pelo caractere inicial da palavra
select * from tb_produtos where nome_produto like "u%";
-- busca pelo ultimo caractere da palavra 
select * from tb_produtos where nome_produto like "%a%";
-- busca em qualquer lugar que haja a palavra ou conjunto de silabas
select * from tb_produtos where nome_produto like "%uva%";
-- para conferir ao final da descrição se a tabela é sensível à ai/ci
show create table tb_produtos;


-- associações entre tabelas

create table tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);
select * from tb_produtos;
select * from tb_categorias;

insert into tb_categorias (descricao) values
("Fruta"), ("Verdura"),("Legumes"),("Temperos"),("Ovos"),('Outros');

-- Modificando a Estrutura da Tabela - Criando o Relacionamento

alter table tb_produtos add categoriaid bigint;

-- adiciona uma restrição na qual é a foreign key/ fk_produtos_categorias junta tb produtos e 
-- tb categorias e a foreign key é configurada como categoria id
alter table tb_produtos add constraint fk_produtos_categorias foreign key (categoriaid) references tb_categorias(id);

-- associações entre tabelas 

-- inner join significa 'relacionado'/ prioridade na relação: se tiver produto sem categoria
-- ele não busca e vice versa/ resultado em comum com as duas tabelas apenas
-- inner traz todas as relações
-- inner join vai achar se as duas chaves(pk)(fk) combinarem
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid;

-- left traz preferencia à tabela à esquerda
SELECT nome, preco, quantidade, tb_categorias.descricao FROM tb_produtos 
LEFT JOIN tb_categorias ON tb_produtos.categoriaid = tb_categorias.id;

-- right traz preferencia à tabela à esquerda
SELECT nome, preco, quantidade, tb_categorias.descricao FROM tb_produtos 
right JOIN tb_categorias ON tb_produtos.categoriaid = tb_categorias.id;

UPDATE tb_produtos SET categoriaid = 3 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 6;












