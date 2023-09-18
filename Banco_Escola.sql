CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(

	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Idade INT,
	Nota DECIMAL (7,1) NOT NULL,
	DataAvaliacao DATE,
	PRIMARY KEY (Id)
);

INSERT INTO tb_estudantes 
(Nome, Idade, Nota, DataAvaliacao)
VALUES
('Eduardo', 25, 8.2, '2023-05-15'),
('Roberto', 19, 7.4, '2023-05-15'),
('Julia', 21, 7.0, '2023-05-15'),
('Ingrid', 24, 4.6, '2023-05-15'),
('Leonardo', 25, 6.0, '2023-05-15'),
('Gabriel', 29, 2.0, '2023-05-15'),
('Allan', 20, 10.0, '2023-05-15'),
('Breno', 19, 9.0, '2023-05-15');

ALTER TABLE tb_estudantes ALTER COLUMN Nota DECIMAL (7,2);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE Nota > 7;

SELECT * FROM tb_estudantes WHERE Nota < 7;

UPDATE tb_estudantes SET DataAvaliacao = '2023-05-16' WHERE Id = 18;



