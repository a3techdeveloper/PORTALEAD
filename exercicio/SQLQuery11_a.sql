--Selecionando o banco de dados
use db_Biblioteca

--Selecionar tudo
select * from tbl_Livro

--Criando o �ndice
create index indice_nome_livro ON tbl_Livro(Nome_Livro)
