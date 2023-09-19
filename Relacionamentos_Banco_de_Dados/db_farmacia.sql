CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(

	Id BIGINT IDENTITY(1,1),
	Categoria VARCHAR(255)NOT NULL,
	Tipo Varchar(255)NOT NULL,
	PRIMARY KEY (Id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias 
(Categoria, Tipo)
VALUES
('Higiene','Cuidados pessoais'),
('Saúde','Suplementos'),
('Antibióticos','Com receita'),
('Remédios gerais','Sem receita'),
('Dermo-Cosmésticos','Proteção');


CREATE TABLE tb_produtos(

	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255)NOT NULL,
	Preco DECIMAL(5,2)NOT NULL,
	Quantidade INT,
	DataValidade DATE,
	PRIMARY KEY(Id),
	categorias_id BIGINT,
	FOREIGN KEY (categorias_id) REFERENCES tb_categorias(Id)

);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos
(Nome, Preco, Quantidade, DataValidade, categorias_id)
VALUES
('Whey',120.00, 2,'2023-05-25',2),
('Shampoo',20.00, 1,'2022-06-27',1),
('Condicionador',20.00, 1,'2022-11-02',1),
('Amoxicilina',45.00, 2,'2023-03-12',3),
('Dipirona',12.00, 5,'2023-06-19',4),
('Bruma Hidratante',72.00, 3,'2023-08-05',5),
('Sabonete',2.00, 15,'2023-01-25',1),
('Papel Higienico',36.00, 2,'2023-05-25',1);

SELECT * FROM tb_produtos WHERE Preco > 100;

SELECT * FROM tb_produtos WHERE Preco > 70 AND Preco < 150;

SELECT * FROM tb_produtos WHERE Nome LIKE '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.Id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.Id = tb_produtos.categorias_id WHERE tb_categorias.Categoria = 'Saúde';





