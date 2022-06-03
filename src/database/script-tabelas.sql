-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */
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
	mediaAcertos CHAR(2)
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 

/* para sql server - remoto - produção */

CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

CREATE TABLE pontuacao (
	id INT PRIMARY KEY IDENTITY(1,1),
	pontos VARCHAR(50),
    acertos VARCHAR(10),
	mediaAcertos CHAR(2)
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
); 


