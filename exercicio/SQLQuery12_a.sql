--Concatenar unir ou juntar textos
select 'Anderson Henrique' + ' da A3Tech Cursos e Treinamentos' as 'A3tech'

--selecionar o banco
use db_Biblioteca

select Nome_Autor + ' ' + Sobrenome_Autor as 'Nome Completo' from tbl_Autor

select 'Eu gosto do livro ' + Nome_Livro as 'Meu Livro' from tbl_Livro 
where id_autor = 2

--Funções string
--ASCII(caractere)
select ASCII('A')
select ASCII('B')
select ASCII('ABACATE')

--Função CHAR(valor int [0 e 255])
select CHAR(65)
select CHAR(66)
select CHAR(67)

--Função LEN() - o tamanho
select LEN('Anderson Henrique') as 'Qtd de Caracteres'
select LEN('Constituição')
select LEN('Microsoft SQL Server')

--Funções LEFT(caractere, posicao) e RIGHT(caractere, posicao)
select LEFT('Anderson Henrique', 5) as '3 Caracteres à  esquerda'
select RIGHT('SQL Server', 3) as '3 Caracteres à direita'

--Funções UPPER(expressao) e LOWER(expressao)
select UPPER('Anderson Henrique') as 'Converte em Maiúsculo'
select LOWER('SQL SERVER') as 'Converte em Minúsculo'

--Funções LTRIM(expressao) e RTRIM(expressao)
select LTRIM('         Anderson Henrique') as 'elimina esquerda'
select RTRIM('SQL Server                ') as 'elimina direita'

--Função REPLACE(cadeia, outra, trecho)
select REPLACE(' O Palmeiras é o melhor time do Brasil', 'Palmeiras', 'Cruzeiro')
select REPLACE('O rato roeu a roupa do rei de Roma', 'Roma', 'Copas')

--Função SUBSTRING(cadeia, inicio, tamanho)
select SUBSTRING('COMPUTADOR', 4, 4)
select SUBSTRING('CONSTITUIÇÃO', 5, 8)

--ver opções de agrupamento
select * from fn_helpcollations()

--ver o esquema de colação usada atualmente
select SERVERPROPERTY('Collation') as Colacao_Usada

--Alterar o esquema de agrupamento atual
alter database db_Biblioteca collate Greek_CI_AI

--verifica o esquema de agrupamento
select DATABASEPROPERTYEX('db_Biblioteca', 'Collation')

--realizando consulta com colação 
select * from tbl_Livro order by Nome_Livro collate Icelandic_CI_AI