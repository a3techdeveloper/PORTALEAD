--Seleciona o banco de dados
USE aulas

--Consulta simples na tabela Aluno e Cliente
SELECT * FROM tbl_Aluno
SELECT * FROM tbl_Cliente

--Retornar registros onde a Idade maior que 15 E Matriculado igual a S
SELECT * FROM tbl_Aluno WHERE Idade_Aluno > 15 AND Matriculado = 'S'
SELECT * FROM tbl_Aluno WHERE Idade_Aluno < 16 AND Matriculado = 'S'
SELECT * FROM tbl_Aluno WHERE Idade_Aluno > 14 AND Idade_Aluno < 16

SELECT * FROM tbl_Aluno WHERE Idade_Aluno > 15 OR Matriculado = 'S'
SELECT * FROM tbl_Aluno WHERE Idade_Aluno <= 15 OR Matriculado = 'S'

ALTER TABLE tbl_Cliente ADD Salario DECIMAL(10,2)

--Atualizando os registros da tabela Cliente
UPDATE tbl_Cliente SET Salario = 1800 WHERE ID_Cliente = 1
UPDATE tbl_Cliente SET Salario = 2500 WHERE ID_Cliente = 2
UPDATE tbl_Cliente SET Salario = 1400 WHERE ID_Cliente = 3
UPDATE tbl_Cliente SET Salario = 1800 WHERE ID_Cliente = 4
UPDATE tbl_Cliente SET Salario = 2500 WHERE ID_Cliente = 5

UPDATE tbl_Aluno SET Idade_Aluno = 17 WHERE ID_Aluno = 3
UPDATE tbl_Aluno SET Matriculado = 'N' WHERE ID_Aluno = 3

--Utilizando o comando TOP limitar quantidade de registros
SELECT TOP 2 Nome_Aluno FROM tbl_Aluno
