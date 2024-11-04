--Selecionando o banco de dados
USE aulas

--Selecionando registros
SELECT * FROM tbl_Cliente
SELECT * FROM tbl_Aluno
SELECT * FROM tbl_Produto

--Excluindo registros na tabela
DELETE FROM tbl_Cliente WHERE ID_Cliente = 2
DELETE FROM tbl_Cliente WHERE ID_Cliente = 4

--Utilizando um nome diferente em consultas
SELECT
ID_Aluno AS ID,
Nome_Aluno AS Nome,
Idade_Aluno AS Idade,
Matriculado
FROM tbl_Aluno

--Selecionando o banco de dados
USE db_Biblioteca

--Selecionando registros
SELECT * FROM tbl_Autor
SELECT * FROM tbl_Editora
SELECT * FROM tbl_Livro

--Combinando duas declarações SELECT
SELECT ID_Autor FROM tbl_Autor
UNION
SELECT ID_Autor FROM tbl_Livro

SELECT Nome_Autor FROM tbl_Autor
UNION
SELECT Nome_Livro FROM tbl_Livro
