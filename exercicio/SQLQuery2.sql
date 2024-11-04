--Criar o banco de dados db_Comercial
CREATE DATABASE db_Comercial ON PRIMARY(
	NAME = 'db_Comercial',
	FILENAME = 'C:\sql\db_Comercial.MDF',
	SIZE = 6MB,
	MAXSIZE = 15MB,
	FILEGROWTH = 10%
)
GO

USE db_Comercial

