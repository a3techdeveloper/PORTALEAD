-- Vamos criar o banco de dados db_Biblioteca

CREATE DATABASE db_Biblioteca ON PRIMARY(
	NAME = 'db_Biblioteca',
	FILENAME = 'C:\sql\db_Biblioteca.MDF',
	SIZE = 6MB,
	MAXSIZE = 15MB,
	FILEGROWTH = 10%
)

CREATE DATABASE db_Sistema

-- Seleciona o banco de dados
USE db_Biblioteca
USE db_Sistema

--sp_helpdb

--Elimina o banco de dados
DROP DATABASE db_Sistema
