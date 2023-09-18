/*Comando para criar um banco de dados novo*/
CREATE DATABASE db_quitanda;

/*Comando que usamos para usar esse banco de dados*/
USE db_quitanda;

/*Comando que cria uma nova tabela, e em baixo os atributos que vamos criar nas tabelas*/
CREATE TABLE tb_produtos(

	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
	DataValidade DATE,
	Preco DECIMAL NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES
('Laranja', 20, '2023-09-18', 8.00);

INSERT INTO tb_produtos 
(Nome, Quantidade, DataValidade, Preco)
VALUES
('Maçã', 10, '2023-09-18', 15.25);

INSERT INTO tb_produtos 
(Nome, Quantidade, DataValidade, Preco)
VALUES
('Couve', 35, '2023-09-18', 5.00),
('Banana', 25, '2023-09-18', 16.00)
;

/*Comando para selecionar toda a tabela e retornar na tela*/
SELECT * FROM tb_produtos;

/*Verificar em toda a tabela mas vai retornar apenas as informaões do ID 1*/
SELECT * FROM tb_produtos WHERE Id = 1;

/*Verificar em toda a tabela mas vai retornar apenas as informaões DE NOME banana*/
SELECT * FROM tb_produtos WHERE Nome = 'Banana';

/*Aqui estamos selecionando apenas as colunas nome, quantidade, preco da informações da banana*/
SELECT Nome, Quantidade, Preco  FROM tb_produtos WHERE Nome = 'Banana';

/*Usando condição que vai retornar apenas os ID 1,2,3*/
SELECT * FROM tb_produtos WHERE Id = 1 OR Id = 2 OR Id = 3;

/*Usando condição para retornar apenas valores entre 4 reais e 10 reais*/
SELECT * FROM tb_produtos WHERE Preco > 4 AND Preco < 10;

/*Alterando a tabela para mostrar os preços com casas decimais*/
ALTER TABLE tb_produtos ALTER COLUMN Preco DECIMAL(6,2);

/*Comando para inserir um produto novo em nossa tabela*/
INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES
('Milho', 20, '2023-09-18', 10.25);

/*Alterando a tabela produtos adicionando o campo DESCRIÇÃO*/
ALTER TABLE tb_produtos ADD Descricao VARCHAR(255);

/*Atualizando o banco no campo Descricao*/
UPDATE tb_produtos SET Descricao = 'Milho verde natural' WHERE Id = 5;

/*Comando para deletar algum produto do nosso banco, mas lembra de expessificar qual id vc quer deletar se não vai apagar toda tabela*/
DELETE FROM tb_produtos WHERE Id = 3;


