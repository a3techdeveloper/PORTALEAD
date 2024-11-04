SELECT Nome_Livro FROM tbl_Livro

--Utilizando LIKE e NOT LIKE
SELECT Nome_Livro
FROM tbl_Livro WHERE Nome_Livro LIKE 'S%'

SELECT Nome_Livro
FROM tbl_Livro WHERE Nome_Livro NOT LIKE 'S%'

SELECT Nome_Livro
FROM tbl_Livro WHERE Nome_Livro LIKE '%g'

SELECT Nome_Livro
FROM tbl_Livro WHERE Nome_Livro LIKE '_i%'

SELECT Nome_Livro
FROM tbl_Livro WHERE Nome_Livro LIKE '[SL]%'

SELECT Nome_Livro
FROM tbl_Livro WHERE Nome_Livro LIKE '%[gl]'

SELECT Nome_Livro
FROM tbl_Livro WHERE Nome_Livro LIKE '_[is]%'

UPDATE tbl_Livro SET Nome_Livro = 'SSH, The Secure Shell' WHERE ID_Livro = 2

--Utilizando INNER JOIN
SELECT * FROM tbl_Livro
INNER JOIN tbl_Autor ON tbl_Livro.ID_Autor = tbl_Autor.ID_Autor

SELECT 
tbl_Livro.Nome_Livro, 
tbl_Livro.ISBN_Livro, 
tbl_Autor.Nome_Autor
FROM tbl_Livro INNER JOIN tbl_Autor ON tbl_Livro.ID_Autor = tbl_Autor.ID_Autor

SELECT 
tbl_Livro.Nome_Livro,
tbl_Livro.ISBN_Livro,
tbl_Editora.Nome_Editora
FROM tbl_Livro INNER JOIN tbl_Editora ON tbl_Livro.ID_Editora = tbl_Editora.ID_Editora

use db_Biblioteca

--Utilizando OUTER JOIN LEFT(correspondência)
SELECT * FROM tbl_Autor 
LEFT JOIN tbl_Livro 
ON tbl_Livro.ID_Autor = tbl_Autor.ID_Autor

--Utilizando OUTER JOIN LEFT(correspondência)
SELECT * FROM tbl_Livro
LEFT JOIN tbl_Autor
ON tbl_Livro.ID_Autor = tbl_Autor.ID_Autor 

--Utilizando OUTER JOIN RIGHT(correspondência)
SELECT * FROM tbl_Livro
RIGHT JOIN tbl_Editora
ON tbl_Livro.ID_Editora = tbl_Editora.ID_Editora

--Utilizando OUTER JOIN RIGHT(correspondência)
SELECT * FROM tbl_Editora
RIGHT JOIN tbl_Livro
ON tbl_Livro.ID_Editora = tbl_Editora.ID_Editora

INSERT INTO tbl_Livro(Nome_Livro, ISBN_Livro, Data_Pub, Preco_Livro, ID_Autor, ID_Editora)
VALUES('PHP Programando com OO', '125474', '20121025', 47.60, null, 3)
INSERT INTO tbl_Livro(Nome_Livro, ISBN_Livro, Data_Pub, Preco_Livro, ID_Autor, ID_Editora)
VALUES('MySQL Aprenda Banco de Dados', '248147', '20121115', 37.60, null, 1)

INSERT INTO tbl_Livro(Nome_Livro, ISBN_Livro, Data_Pub, Preco_Livro, ID_Autor, ID_Editora)
VALUES('Java SE Aprenda Fácil', '487125', '20150729', 55.47, 2, null)
INSERT INTO tbl_Livro(Nome_Livro, ISBN_Livro, Data_Pub, Preco_Livro, ID_Autor, ID_Editora)
VALUES('Python Aprenda o Básico', '741963', '20150414', 32.47, 4, null)
