-- Criação do banco de dados
CREATE DATABASE db_generation_game_online;

-- Utilização do banco de dados
USE db_generation_game_online;

-- Criação da tabela tb_classes
CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    tipo VARCHAR(50)
);

-- Inserção de registros na tabela tb_classes
INSERT INTO tb_classes (nome, tipo) VALUES 
('Guerreiro', 'Melee'),
('Arqueiro', 'Ranged'),
('Mago', 'Magic'),
('Lutador', 'Melee'),
('Assassino', 'Melee');

-- Criação da tabela tb_personagens
CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

-- Inserção de registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES
('Herói', 10, 2500, 1800, 1),
('Arqueiro Ágil', 8, 1800, 1200, 2),
('Mago Poderoso', 12, 3000, 1500, 3),
('Lutador Destemido', 9, 2200, 2000, 4),
('Assassino Furtivo', 7, 2000, 1000, 5),
('Guerreiro de Elite', 11, 2800, 2200, 1),
('Arqueira Precisa', 8, 1900, 1300, 2),
('Maga Sábia', 10, 2600, 1700, 3);

-- SELECT que retorna todos os personagens cujo poder de ataque seja maior do que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT que retorna todos os personagens cujo poder de defesa esteja no intervalo 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT utilizando o operador LIKE, buscando todos os personagens que possuam a letra C no atributo nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- SELECT utilizando a cláusula INNER JOIN para unir os dados da tabela tb_personagens com os dados da tabela tb_classes
SELECT p.*, c.nome AS classe_nome FROM tb_personagens p INNER JOIN tb_classes c ON p.id_classe = c.id;

-- SELECT utilizando a cláusula INNER JOIN para unir os dados da tabela tb_personagens com os dados da tabela tb_classes,
-- onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todos os personagens da classe dos arqueiros)
SELECT p.*, c.nome AS classe_nome FROM tb_personagens p INNER JOIN tb_classes c ON p.id_classe = c.id WHERE c.nome = 'Arqueiro';
