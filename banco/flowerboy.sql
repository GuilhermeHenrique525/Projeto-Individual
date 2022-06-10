CREATE DATABASE flowerboy;

USE flowerboy;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE pontuacao (
	id INT PRIMARY KEY AUTO_INCREMENT,
	pontos VARCHAR(50),
    acertos VARCHAR(10),
	mediaAcertos CHAR(2),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 