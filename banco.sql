CREATE DATABASE IF NOT EXISTS jogosdb;
USE jogosdb;

DROP TABLE IF EXISTS jogos;
DROP TABLE IF EXISTS categorias;

CREATE TABLE categorias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE jogos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  genero VARCHAR(100) NOT NULL,
  categoria_id INT,
  FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- Categorias
INSERT INTO categorias (nome) VALUES ('Ação');
INSERT INTO categorias (nome) VALUES ('RPG');
INSERT INTO categorias (nome) VALUES ('Aventura');
INSERT INTO categorias (nome) VALUES ('Esporte');
INSERT INTO categorias (nome) VALUES ('Estratégia');

-- Jogos
INSERT INTO jogos (nome, genero, categoria_id) VALUES ('God of War', 'Ação', 1);
INSERT INTO jogos (nome, genero, categoria_id) VALUES ('The Witcher 3', 'RPG', 2);
INSERT INTO jogos (nome, genero, categoria_id) VALUES ('Zelda: Breath of the Wild', 'Aventura', 3);
INSERT INTO jogos (nome, genero, categoria_id) VALUES ('FIFA 24', 'Futebol', 4);
INSERT INTO jogos (nome, genero, categoria_id) VALUES ('Age of Empires IV', 'Estratégia', 5);
INSERT INTO jogos (nome, genero, categoria_id) VALUES ('Dark Souls III', 'Ação', 1);
INSERT INTO jogos (nome, genero, categoria_id) VALUES ('Elden Ring', 'RPG', 2);
INSERT INTO jogos (nome, genero, categoria_id) VALUES ('Red Dead Redemption 2', 'Aventura', 3);
