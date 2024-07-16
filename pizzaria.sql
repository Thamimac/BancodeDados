CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL (6,2) NOT NULL,
tamanho VARCHAR(255) NOT NULL,
datavalidade DATE,
PRIMARY KEY (id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(categoria, tipo) VALUES
("Pizza", "Carne"),
("Pizza", "Frango"),
("Pizza","Vegetariana"),
("Pizza","Doce"),
("Esfiha", "Carne"),
("Esfiha", "Frango"),
("Esfiha","Vegetariana"),
("Esfiha","Doce");

INSERT INTO tb_pizzas(nome, preco, tamanho, datavalidade) VALUES
("Pizza de Calabresa", "95.00", "Grande", "2024-07-25"),
("Pizza de Frango com Catupiry", "95.00", "Grande", "2024-07-25"),
("Pizza de Escarola", "95.00", "Grande", "2024-07-25"),
("Pizza de Nutella", "95.00", "Grande", "2024-07-25"),
("Pizza de Calabresa", "75.00", "Broto", "2024-07-25"),
("Pizza de Frango com Catupiry", "75.00", "Broto", "2024-07-25"),
("Pizza de Escarola", "75.00", "Broto", "2024-07-25"),
("Pizza de Nutella", "75.00", "Broto", "2024-07-25"),
("Esfiha de Calabresa", "35.00", "Pequeno", "2024-07-25"),
("Esfiha de Frango com Catupiry", "35.00", "Grande", "2024-07-25"),
("Esfiha de Escarola", "35.00", "Pequeno", "2024-07-25"),
("Esfiha de Nutella", "35.00", "Grande", "2024-07-25");

ALTER TABLE tb_pizzas ADD categoriaid BIGINT;

SELECT * FROM tb_pizzas;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 1;
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 2;
UPDATE tb_pizzas SET categoriaid = 3 WHERE id = 3;
UPDATE tb_pizzas SET categoriaid = 4 WHERE id = 4;
UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 5;
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 6;
UPDATE tb_pizzas SET categoriaid = 3 WHERE id = 7;
UPDATE tb_pizzas SET categoriaid = 4 WHERE id = 8;
UPDATE tb_pizzas SET categoriaid = 5 WHERE id = 9;
UPDATE tb_pizzas SET categoriaid = 6 WHERE id = 10;
UPDATE tb_pizzas SET categoriaid = 7 WHERE id = 11;
UPDATE tb_pizzas SET categoriaid = 8 WHERE id = 12;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco > 50.00 AND preco < 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%f%";

SELECT nome, preco, tamanho, datavalidade, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT nome, preco, tamanho, datavalidade, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.tipo = 'Doce';






