CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(

	Id BIGINT IDENTITY(1,1),
	Tipo VARCHAR(255)NOT NULL,
	Status VARCHAR(255)NOT NULL,
	PRIMARY KEY(Id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias 
(Tipo, Status)
VALUES
('SALGADA', 'EM PREPARO'),
('DOCE', 'PRONTO'),
('SALGADA', 'PRONTO'),
('SALGADA', 'A CAMINHO'),
('DOCE', 'A CAMINHO');


CREATE TABLE tb_pizzas(

	Id BIGINT IDENTITY(1,1),
	Sabor VARCHAR(255)NOT NULL,
	TipoBorda VARCHAR(255)NOT NULL,
	Preco DECIMAL (5,2)NOT NULL,
	Quantidade INT,
	categorias_id BIGINT,
	FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
	
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas 
(Sabor, TipoBorda, Preco, Quantidade, categorias_id)
VALUES
('Portuguesa', 'Borda Recheada', 30.00, 1, 1),
('Frango com Catupiry', 'Borda simples', 80.00, 2, 4),
('Chocolate com Banana', 'Borda Recheada com nutela', 150.00, 3, 2),
('Romeu e Julieta', 'Borda simples ', 115.00, 2, 5),
('4 Queijos', 'Borda simples', 35.00, 1, 1),
('Calabresa', 'Borda simples', 45.00, 4, 1),
('Brócolis', 'Borda simples', 35.00, 2, 3),
('Nutela', 'Borda Recheada com leite moça', 140.00, 1, 1);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE Preco > 45;

SELECT * FROM tb_pizzas WHERE Preco > 50 AND Preco < 100;

SELECT * FROM tb_pizzas WHERE Sabor LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.Id = tb_pizzas.categorias_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.Id = tb_pizzas.categorias_id WHERE tb_categorias.Tipo = 'Doce';

SELECT * FROM tb_categorias LEFT JOIN tb_pizzas ON tb_categorias.Id = tb_pizzas.categorias_id;



