CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
 id BIGINT AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 quantidade INT,
 cor VARCHAR(255),
 preco DECIMAL(6,2) NOT NULL,
 PRIMARY KEY(id)
 );
 
 SELECT * FROM tb_produtos;
 
 INSERT INTO tb_produtos(nome, quantidade, cor, preco)
 VALUE ("Copo Stanley 500ml", 820, "preto", 125.90),
 ("Copo Stanley 1lt", 1200, "preto", 255.20),
 ("Copo Stanley 2lt", 320, "preto", 432.40),
 ("Copo Stanley 500ml", 450, "branco", 152.90),
 ("Copo Stanley 1lt", 1000, "branco", 275.20),
 ("Copo Stanley 2lt", 320, "branco", 462.40),
 ("Copo Stanley 500ml", 740, "azul", 135.90),
 ("Copo Stanley 1lt", 830, "azul", 245.20),
 ("Copo Stanley 2lt", 320, "azul", 455.40);
 
 SELECT * FROM tb_produtos WHERE quantidade > 500;
 
 SELECT * FROM tb_produtos WHERE quantidade < 500;
 
 UPDATE tb_produtos SET preco = 120.00 WHERE id = 1;
 
 SELECT * FROM tb_produtos;
