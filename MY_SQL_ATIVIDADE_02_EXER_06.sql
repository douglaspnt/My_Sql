-- Criação do banco de dados
CREATE DATABASE db_curso_da_minha_vida;

-- Utilização do banco de dados
USE db_curso_da_minha_vida;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao TEXT
);

-- Inserção de registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES 
('Programação', 'Cursos relacionados à programação de software.'),
('Marketing Digital', 'Cursos relacionados a estratégias de marketing online.'),
('Design Gráfico', 'Cursos relacionados à criação de elementos visuais.'),
('Administração', 'Cursos relacionados à gestão de negócios.'),
('Idiomas', 'Cursos de aprendizado de línguas estrangeiras.');

-- Criação da tabela tb_cursos
CREATE TABLE tb_cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    valor DECIMAL(10, 2),
    duracao_horas INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserção de registros na tabela tb_cursos
INSERT INTO tb_cursos (nome, descricao, valor, duracao_horas, id_categoria) VALUES
('Curso de Python', 'Aprenda Python do básico ao avançado.', 799.99, 40, 1),
('Curso de Marketing Digital', 'Estratégias de marketing para redes sociais.', 599.90, 30, 2),
('Curso de Illustrator', 'Aprenda a criar designs gráficos profissionais.', 899.50, 50, 3),
('Curso de Administração Financeira', 'Princípios básicos de gestão financeira.', 499.99, 20, 4),
('Curso de Inglês Avançado', 'Aprimore suas habilidades no idioma inglês.', 699.99, 60, 5),
('Curso de Java', 'Desenvolvimento de aplicações em Java.', 899.99, 45, 1),
('Curso de SEO', 'Otimização de sites para motores de busca.', 749.99, 35, 2),
('Curso de Photoshop', 'Edição de imagens e tratamento de fotos.', 799.00, 40, 3);

-- SELECT que retorna todos os cursos cujo valor seja maior do que R$ 500,00
SELECT * FROM tb_cursos WHERE valor > 500.00;

-- SELECT que retorna todos os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

-- SELECT utilizando o operador LIKE, buscando todos os cursos que possuam a letra J no atributo nome
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

-- SELECT utilizando a cláusula INNER JOIN para unir os dados da tabela tb_cursos com os dados da tabela tb_categorias
SELECT c.*, cat.nome AS categoria_nome FROM tb_cursos c INNER JOIN tb_categorias cat ON c.id_categoria = cat.id;

-- SELECT utilizando a cláusula INNER JOIN para unir os dados da tabela tb_cursos com os dados da tabela tb_categorias,
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todos os cursos que pertencem a categoria Java)
SELECT c.*, cat.nome AS categoria_nome FROM tb_cursos c INNER JOIN tb_categorias cat ON c.id_categoria = cat.id WHERE cat.nome = 'Programação';
