USE db_Biblioteca

--criando tabelas 
CREATE TABLE tbl_Livro(
	ID_Livro SMALLINT PRIMARY KEY IDENTITY(1, 1),
	Nome_Livro VARCHAR(50) NOT NULL,
	ISBN_Livro VARCHAR(30) NOT NULL,
	ID_AUTOR SMALLINT NOT NULL,
	Data_Pub DATETIME NOT NULL,
	Preco_Livro MONEY NOT NULL
)
GO

CREATE TABLE tbl_Autor(
	ID_Autor SMALLINT PRIMARY KEY,
	Nome_Autor VARCHAR(50),
	Sobrenome_Autor VARCHAR(50)
)
GO

CREATE TABLE tbl_Editora(
	ID_Editora SMALLINT PRIMARY KEY IDENTITY,
	Nome_Editora VARCHAR(50) NOT NULL
)
GO

--sp_help tbl_Editora

CREATE TABLE tbl_teste_identidade(
	ID_Teste SMALLINT PRIMARY KEY IDENTITY,
	Valor SMALLINT NOT NULL
)
GO

--Alterando a tabela excluindo a coluna
ALTER TABLE tbl_Livro DROP COLUMN ID_Autor
GO

--Alterando a tabela adicionando a coluna e constraints 
ALTER TABLE tbl_Livro ADD ID_Autor SMALLINT NOT NULL
CONSTRAINT fk_ID_Autor FOREIGN KEY(ID_AUTOR) REFERENCES tbl_Autor(ID_Autor)
GO

ALTER TABLE tbl_Livro ADD ID_Editora SMALLINT NOT NULL
CONSTRAINT fk_ID_Editora FOREIGN KEY(ID_Editora) REFERENCES tbl_Editora(ID_Editora)
GO

--Alterando uma coluna na tabela
ALTER TABLE tbl_Livro ALTER COLUMN ID_Autor SMALLINT
GO
ALTER TABLE tbl_Livro ALTER COLUMN ID_Editora SMALLINT
GO

CREATE TABLE tbl_Cliente(
	ID_Cliente SMALLINT NOT NULL,
	Nome_Cliente VARCHAR(100) NOT NULL
)
GO

--Elimina a tabela
DROP TABLE tbl_Cliente
GO

--Alterando a tabela adicionando chave primária
ALTER TABLE tbl_Cliente ADD PRIMARY KEY(ID_Cliente)
GO

--Elimina a tabela
DROP TABLE tbl_teste_identidade
GO