--Concatenar unir ou juntar textos
select 'Anderson Henrique' + ' da A3Tech Cursos e Treinamentos' as 'A3tech'

--selecionar o banco
use db_Biblioteca

select Nome_Autor + ' ' + Sobrenome_Autor as 'Nome Completo' from tbl_Autor

select 'Eu gosto do livro ' + Nome_Livro as 'Meu Livro' from tbl_Livro 
where id_autor = 2

--Fun��es string
--ASCII(caractere)
select ASCII('A')
select ASCII('B')
select ASCII('ABACATE')

--Fun��o CHAR(valor int [0 e 255])
select CHAR(65)
select CHAR(66)
select CHAR(67)

--Fun��o LEN() - o tamanho
select LEN('Anderson Henrique') as 'Qtd de Caracteres'
select LEN('Constitui��o')
select LEN('Microsoft SQL Server')

--Fun��es LEFT(caractere, posicao) e RIGHT(caractere, posicao)
select LEFT('Anderson Henrique', 5) as '3 Caracteres �  esquerda'
select RIGHT('SQL Server', 3) as '3 Caracteres � direita'

--Fun��es UPPER(expressao) e LOWER(expressao)
select UPPER('Anderson Henrique') as 'Converte em Mai�sculo'
select LOWER('SQL SERVER') as 'Converte em Min�sculo'

--Fun��es LTRIM(expressao) e RTRIM(expressao)
select LTRIM('         Anderson Henrique') as 'elimina esquerda'
select RTRIM('SQL Server                ') as 'elimina direita'

--Fun��o REPLACE(cadeia, outra, trecho)
select REPLACE(' O Palmeiras � o melhor time do Brasil', 'Palmeiras', 'Cruzeiro')
select REPLACE('O rato roeu a roupa do rei de Roma', 'Roma', 'Copas')

--Fun��o SUBSTRING(cadeia, inicio, tamanho)
select SUBSTRING('COMPUTADOR', 4, 4)
select SUBSTRING('CONSTITUI��O', 5, 8)

--ver op��es de agrupamento
select * from fn_helpcollations()

--ver o esquema de cola��o usada atualmente
select SERVERPROPERTY('Collation') as Colacao_Usada

--Alterar o esquema de agrupamento atual
alter database db_Biblioteca collate Greek_CI_AI

--verifica o esquema de agrupamento
select DATABASEPROPERTYEX('db_Biblioteca', 'Collation')

--realizando consulta com cola��o 
select * from tbl_Livro order by Nome_Livro collate Icelandic_CI_AI