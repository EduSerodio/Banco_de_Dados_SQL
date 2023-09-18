CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionario(

	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR (255) NOT NULL,
	Cargo VARCHAR (255) NOT NULL,
	DataAdmissao DATE,
	Salario DECIMAL(7, 2),
	PRIMARY KEY (Id)

);

INSERT INTO tb_funcionario 
(Nome, Cargo, DataAdmissao, Salario)
VALUES
('Eduardo','Desenvolvedor Full Stack Jr','2020-02-29', 2500.00),
('Julia','Desenvolvedora Mirim Nutela','2023-04-25', 500.00),
('Leonardo','Desenvolvedor Full Stack Jr','2015-10-14', 2500.00),
('Ingrid','Desenvolvedor Full Stack Jr','2004-05-12', 2500.00),
('Eduardo','Desenvolvedor Full Stack Jr','2020-02-29', 2500.00);
 
SELECT * FROM tb_funcionario;

SELECT * FROM tb_funcionario WHERE Salario > 2000.00;

SELECT * FROM tb_funcionario WHERE Salario < 2000.00;

UPDATE tb_funcionario SET Cargo = 'Desenvolvedor Pleno' WHERE Id = 1;