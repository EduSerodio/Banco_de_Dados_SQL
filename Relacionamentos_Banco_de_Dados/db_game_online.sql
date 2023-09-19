CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(

	Id BIGINT IDENTITY(1,1),
	ResultadoPartida VARCHAR(255)NOT NULL,
	TimePersonagem VARCHAR(255) NOT NULL,
	PRIMARY KEY (Id)

);

SELECT * FROM tb_classes;

INSERT INTO tb_classes 
(ResultadoPartida, TimePersonagem)
VALUES
('Ganhador', 'Ataque'),
('Perdedor', 'Defesa'),
('Perdedor', 'Auxiliar'),
('Empate', 'Ataque'),
('Ganhador', 'Defesa');


CREATE TABLE tb_personagens(

	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255)NOT NULL,
	Forca INT NOT NULL,
	Habilidade VARCHAR(255)NOT NULL,
	Recursos VARCHAR(255)NOT NULL,
	classes_id BIGINT,
	FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens
(Nome, Forca, Habilidade, Recursos, classes_id)
VALUES
('Gigante', 8000, 'Força', 'Energia', 1),
('Arqueira', 1200, 'Atirador', 'Energia', 2),
('Mago', 15000, 'Feitiços', 'Magia', 1),
('Barbaros', 2600, 'Força', 'Energia', 4),
('Esqueleto Bomba', 500, 'Explosão', 'Energia', 3),
('Dragão', 30000, 'Força', 'Energia e magia', 1),
('Escavador', 100, 'Força', 'Energia', 5),
('Rei Barbaro', 80000, 'Força', 'Energia e magia', 1);

SELECT * FROM tb_personagens WHERE Forca > 2000;

SELECT * FROM tb_personagens WHERE Forca < 2000;

SELECT * FROM tb_personagens tp WHERE Nome LIKE '%c%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.Id = tb_personagens.classes_id; 


