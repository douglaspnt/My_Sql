CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_turma13b (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    turma VARCHAR(10),
    nota FLOAT,
    endereco VARCHAR(255)
    );
    
INSERT INTO tb_turma13b (nome, idade, turma, nota, endereco) 
VALUES('João Silva', 15, 'A', 8.5, 'Rua A, nº 123');
INSERT INTO tb_turma13b (nome, idade, turma, nota, endereco) 
VALUES('Maria Souza', 16, 'B', 7.2, 'Rua B, nº 456');
INSERT INTO tb_turma13b (nome, idade, turma, nota, endereco) 
VALUES('Pedro Santos', 14, 'A', 6.8, 'Rua C, nº 789');
INSERT INTO tb_turma13b (nome, idade, turma, nota, endereco) 
VALUES('Ana Oliveira', 17, 'B', 9.0, 'Rua D, nº 1011');
INSERT INTO tb_turma13b (nome, idade, turma, nota, endereco) 
VALUES('Carlos Ferreira', 15, 'A', 6.5, 'Rua E, nº 1213');
INSERT INTO tb_turma13b (nome, idade, turma, nota, endereco) 
VALUES('Julia Rodrigues', 16, 'B', 8.9, 'Rua F, nº 1415');
INSERT INTO tb_turma13b (nome, idade, turma, nota, endereco) 
VALUES('Larissa Almeida', 17, 'B', 5.5, 'Rua H, nº 1819');


SELECT * FROM tb_turma13b;

SELECT * FROM tb_turma13b WHERE nota < 7.0;


UPDATE tb_turma13b SET nota = 8.0 WHERE nome = 'Larissa Almeida';    