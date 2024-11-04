USE db_Biblioteca

--Inserindo dados nas tabelas (populando)
INSERT INTO tbl_Autor(ID_Autor, Nome_Autor, Sobrenome_Autor)
VALUES(1, 'Daniel', 'Barreto')

INSERT INTO tbl_Autor(ID_Autor, Nome_Autor, Sobrenome_Autor)
VALUES(2, 'Gerald', 'Carter')

INSERT INTO tbl_Autor(ID_Autor, Nome_Autor, Sobrenome_Autor)
VALUES(3, 'Mark', 'Sobell')

INSERT INTO tbl_Autor(ID_Autor, Nome_Autor, Sobrenome_Autor)
VALUES(4, 'William', 'Stanek')

INSERT INTO tbl_Autor(ID_Autor, Nome_Autor, Sobrenome_Autor)
VALUES(5, 'Richard', 'Blum')


INSERT INTO tbl_Editora(Nome_Editora)VALUES('Prentice Hall')
INSERT INTO tbl_Editora(Nome_Editora)VALUES('O Reilly')
INSERT INTO tbl_Editora(Nome_Editora)VALUES('Microsoft Press')
INSERT INTO tbl_Editora(Nome_Editora)VALUES('Wiley')

INSERT INTO tbl_Livro(Nome_Livro, ISBN_Livro, Data_Pub, Preco_Livro, ID_Autor, ID_Editora)
VALUES('Linux Command Line and Shell Scripting', 143586, '20091221', 68.35, 5, 4)

INSERT INTO tbl_Livro(Nome_Livro, ISBN_Livro, Data_Pub, Preco_Livro, ID_Autor, ID_Editora)
VALUES('SSH, The Scure Shell', 127658, '20091221', 58.30, 1, 2)

INSERT INTO tbl_Livro(Nome_Livro, ISBN_Livro, Data_Pub, Preco_Livro, ID_Autor, ID_Editora)
VALUES('Using Samba', '123856', '20001221', 61.55, 2, 2)

INSERT INTO tbl_Livro(Nome_Livro, ISBN_Livro, Data_Pub, Preco_Livro, ID_Autor, ID_Editora)
VALUES('Fedora and Red Hat Linux', 123456, '20101101', 62.24, 3, 1)

INSERT INTO tbl_Livro(Nome_Livro, ISBN_Livro, Data_Pub, Preco_Livro, ID_Autor, ID_Editora)
VALUES('Windows Server 2012', 123356, '20040514', 66.80, 4, 3)

INSERT INTO tbl_Livro(Nome_Livro, ISBN_Livro, Data_Pub, Preco_Livro, ID_Autor, ID_Editora)
VALUES('Microsoft Exchange Server 2010', 123366, '20001221', 45.30, 4, 3)

--Consultando registros nas tabelas
SELECT * FROM tbl_Livro
SELECT * FROM tbl_Autor
SELECT * FROM tbl_Editora

--criando o banco de dados
CREATE DATABASE aulas
GO
--selecionamos o banco de dados
USE aulas
--criamos a tabela
CREATE TABLE tbl_Cliente(
	ID_Cliente SMALLINT PRIMARY KEY IDENTITY(1,1),
	Nome VARCHAR(100),
	Telefone VARCHAR(15)
)
--inserir registros na tabela
INSERT INTO tbl_Cliente(Nome, Telefone)VALUES('Ana Maria', '9999-9999')
INSERT INTO tbl_Cliente(Nome, Telefone)VALUES('Carlos', '8888-8888')
INSERT INTO tbl_Cliente(Nome, Telefone)VALUES('Aline', '7777-7777')

--realizando uma consulta simples
SELECT * FROM tbl_Cliente

--comando truncate
TRUNCATE TABLE tbl_Cliente

--criando a tabela tbl_Produto
CREATE TABLE tbl_Produto(
	ID_Produto SMALLINT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(60),
	Quantidade INT,
	Preco DECIMAL(10,2)
)

--inserir 3 produtos
INSERT INTO tbl_Produto(Descricao, Quantidade, Preco)
VALUES('Teclado USB', 10, 19.90)
INSERT INTO tbl_Produto(Descricao, Quantidade, Preco)
VALUES('Mouse USB', 15, 12.90)
INSERT INTO tbl_Produto(Descricao, Quantidade, Preco)
VALUES('Monitor LCD 19', 8, 249.90)

--seleciona todos os registros com todos os campos
SELECT * FROM tbl_Produto
--seleciona todos os registros retornando apenas o campo Descricao
SELECT Descricao FROM tbl_Produto
--seleciona todos os registros retornando apenas o campo Descricao e Preco
SELECT Descricao, Preco FROM tbl_Produto