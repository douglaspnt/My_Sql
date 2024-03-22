CREATE DATABASE db_rh_novamoraes2;

USE db_rh_novamoraes2;


CREATE TABLE tb_funcionarios(
    id BIGINT AUTO_INCREMENT,
    nomecompleto VARCHAR(255) NOT NULL,
    idade INT,
    datadeadmissao DATE,
    salario DECIMAL(10, 2) NOT NULL,
    cpf BIGINT,
    cargo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);


INSERT INTO tb_funcionarios(nomecompleto, idade, datadeadmissao, salario, cpf, cargo)
VALUES ("Douglas Pinto dos Santos",29, "2020-01-31", 2800.00, 41262509808, "comprador" );
INSERT INTO tb_funcionarios(nomecompleto, idade, datadeadmissao, salario, cpf, cargo) 
VALUES ("Samuel Moraes",31, "2010-03-01", 5800.00, 42279617800, "gerenteoperacional");
INSERT INTO tb_funcionarios(nomecompleto, idade, datadeadmissao, salario, cpf, cargo) 
VALUES ("Hellen Santos",25, "2011-02-01", 4800.00, 45251892829, "gerenteadministrativo");
INSERT INTO tb_funcionarios(nomecompleto, idade, datadeadmissao, salario, cpf, cargo)
VALUES ("Raul forte",38, "2023-07-29", 1799.00, 34815667899, "atendente");
INSERT INTO tb_funcionarios(nomecompleto, idade, datadeadmissao, salario, cpf, cargo)
VALUES ("Luana Pinto",34, "2022-06-03", 1799.00, 34815667899, "atendente");
INSERT INTO tb_funcionarios(nomecompleto, idade, datadeadmissao, salario, cpf, cargo)
VALUES ("Jonatan Baruel", 20, "2021-09-01", 2500.00, 09787698099, "motoboy");


SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;


SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 1800.00;

