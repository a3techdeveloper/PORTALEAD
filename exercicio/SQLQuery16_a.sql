--Cria��o de um SP
create procedure teste
as
select 'A3Tech Cursos EAD e Treinamentos' as 'Nome Empresa'
go

--Executar
exec teste 22
go

alter procedure teste(@par1 as int)
as
select @par1
go

--Selecionar o banco
use db_Biblioteca
go

create procedure p_LivroValor
as
select Nome_livro as 'T�tulo do Livro', Preco_Livro as 'Pre�o'
from tbl_Livro
go

alter procedure p_LivroValor
as
select Nome_Livro as 'T�tulo Livro', Preco_Livro as 'Pre�o',
Data_Pub as 'Publica��o' from tbl_Livro
go

exec p_LivroValor
go

--Visualizar conte�do de um SP
exec sp_helptext p_LivroValor
go

--SP criptografado
create procedure p_LivroISBN
with encryption
as
select Nome_Livro, ISBN_Livro from tbl_Livro
go

--exec sp_helptext p_LivroISBN

--Par�metros de entrada
alter procedure p_LivroValor(@ID smallint)
as
select Nome_Livro as 'T�tulo do Livro', Preco_Livro as 'Pre�o'
from tbl_Livro
where ID_livro = @ID
go

--Executando o SP passando um par�metro
exec p_LivroValor 2
go

--selecionado o banco
use master
go

--M�ltiplos par�metros de entrada
alter procedure teste(@par1 as int, @par2 as varchar(20))
as
select @par1
select @par2
go

--executando
exec teste 22, 'Laranja'
go

exec teste @par2 = 'Abacate', @par1 = 45
go

--Seleciona o banco
use db_Biblioteca
go

--Alterando um SP
alter procedure p_LivroValor(@ID smallint, @Preco money)
as
select Nome_Livro as T�tulo, Preco_Livro as Pre�o
from tbl_Livro
where ID_Livro > @ID and Preco_Livro > @Preco
go

select Nome_livro, Preco_livro from tbl_Livro
go

--executando
exec p_LivroValor @ID = 3, @Preco = 60
go