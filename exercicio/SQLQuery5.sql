USE aulas

--consulta simples
SELECT * FROM tbl_Cliente

--utilizando a cl�usula ORDER BY
SELECT * FROM tbl_Cliente ORDER BY Nome ASC
SELECT * FROM tbl_Cliente ORDER BY Nome DESC

--ordenando chave prim�ria na ordem descendente
SELECT * FROM tbl_Cliente ORDER BY ID_Cliente DESC

INSERT INTO tbl_Cliente(Nome, Telefone)VALUES('Aline', '4444-4444')
INSERT INTO tbl_Cliente(Nome, Telefone)VALUES('Carlos', '6666-6666')

--consultas retornando valores distintos
SELECT DISTINCT Nome FROM tbl_Cliente

--Utilizando a cl�usula WHERE (condi��o)
SELECT * FROM tbl_Cliente WHERE ID_Cliente = 1
SELECT * FROM tbl_Cliente WHERE Nome = 'Aline'

CREATE TABLE tbl_Aluno(
	ID_Aluno SMALLINT PRIMARY KEY IDENTITY,
	Nome_Aluno VARCHAR(40) NOT NULL,
	Idade_Aluno INT NOT NULL,
	Matriculado CHAR(1) DEFAULT 'N'
)

INSERT INTO tbl_Aluno(Nome_Aluno, Idade_Aluno, Matriculado)
VALUES('D�bora Dantas', 15, 'S')

INSERT INTO tbl_Aluno(Nome_Aluno, Idade_Aluno)
VALUES('Ricardo Barbosa', 17)

INSERT INTO tbl_Aluno(Nome_Aluno, Idade_Aluno, Matriculado)
VALUES('J�ssica Linhares', 14, 'S')

INSERT INTO tbl_Aluno(Nome_Aluno, Idade_Aluno, Matriculado)
VALUES('Pedro Dantas', 15, 'S')

--selecionando com cl�usula WHERE
SELECT * FROM tbl_Aluno
SELECT * FROM tbl_Aluno WHERE Matriculado = 'S'
SELECT * FROM tbl_Aluno WHERE Idade_Aluno <= 16
SELECT * FROM tbl_Aluno WHERE Idade_Aluno > 16

