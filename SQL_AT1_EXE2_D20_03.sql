CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
preco DECIMAL(10, 2) NOT NULL,
estoque INT NOT NULL,
categoria VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, descricao,preco,estoque,categoria)
VALUES ("Camisa de Time","Camisa de Time em algodao", 79.90 , 10, "Roupas");
INSERT INTO tb_produtos(nome, descricao,preco,estoque,categoria)
VALUES ("Meia Cano Alto", "Meia Cano Alto Algodao", 21.45 , 300, "Roupas");
INSERT INTO tb_produtos(nome, descricao,preco,estoque,categoria)
VALUES ("Tenis Nike", "Tenis Nike Cor Preta", 1230.00 , 250, "Calcados");
INSERT INTO tb_produtos(nome, descricao,preco,estoque,categoria)
VALUES ("Tenis Adidas", "Tenis Nike Cor Branca", 1000.00 , 45, "Calcados");
INSERT INTO tb_produtos(nome, descricao,preco,estoque,categoria)
VALUES ("Fone JBL", "Fone JBL SEM FIO", 490.00 , 45, "Eletronico");
INSERT INTO tb_produtos(nome, descricao,preco,estoque,categoria)
VALUES ("Cabo Tipo C", "Cabo Tipo C", 100.00 , 45, "Eletronico");
INSERT INTO tb_produtos(nome, descricao,preco,estoque,categoria)
VALUES ("Carregador Tipo C", "Carregador Tipo C", 200.00 , 13, "Eletronico");
INSERT INTO tb_produtos(nome, descricao,preco,estoque,categoria)
VALUES ("Celular Motorola", "Celular Motorola ", 2100.00 , 40, "Eletronico");


SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 2000.00;


SELECT * FROM tb_produtos WHERE preco < 2000.00;

SELECT * FROM tb_produtos WHERE preco < 1800.00;



