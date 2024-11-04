--Consultando registros
SELECT * FROM tbl_Livro

--Criar nova tabela a partir tabela existente
SELECT Nome_Livro, ISBN_Livro 
INTO Livro_ISBN
FROM tbl_Livro WHERE ID_Livro > 2

--Consultando registros
SELECT * FROM Livro_ISBN

SELECT * 
INTO tbl_Livro_Backup
FROM tbl_Livro

USE db_Biblioteca

--Funções agregadas
SELECT COUNT(*) AS 'Quantidade De Autores' FROM tbl_Autor
SELECT MAX(Preco_Livro) AS 'Livro Mais Caro' FROM tbl_Livro
SELECT MIN(Preco_Livro) AS 'Livro Mais Barato' FROM tbl_Livro
SELECT AVG(Preco_Livro) AS 'Média de Preço' FROM tbl_Livro
SELECT SUM(Preco_Livro) AS 'Valor Total' FROM tbl_Livro

--Consultas com intervalo de valores
SELECT * FROM tbl_Livro WHERE Data_Pub BETWEEN '20090101' AND '20101231'
SELECT * FROM tbl_Livro WHERE Preco_Livro BETWEEN 40.00 AND 60.00