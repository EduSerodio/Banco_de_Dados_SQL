CREATE  DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produto(

Id BIGINT IDENTITY (1,1),
Nome VARCHAR (255) NOT NULL,
DataFabricacao DATE,
Quantidade INT,
Preco DECIMAL NOT NULL,
PRIMARY KEY(Id)

);

INSERT INTO tb_produto 
(Nome, DataFabricacao, Quantidade, Preco)
VALUES
('Balde', '2023-05-12', 25, 15.50),
('Vassoura', '2020-05-01', 10, 10.30),
('Mesa Jantar', '2023-09-22', 5, 788.99),
('Sofa', '2021-08-02', 9, 652.55),
('TV', '2023-06-25', 14, 2500.50),
('Tapete', '2020-02-29', 2, 100.50),
('Espelho', '2019-10-22', 75, 80.00);


ALTER TABLE tb_produto ALTER COLUMN Preco DECIMAL(7,2);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE Preco > 500;

SELECT * FROM tb_produto WHERE Preco < 500;

UPDATE tb_produto SET Preco = 90.00 WHERE Id = 6;

