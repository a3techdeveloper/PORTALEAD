--seleciona o banco
use db_Biblioteca
go

--criando o SP
create procedure p_insere_editora(@nome varchar(50))
as
insert into tbl_Editora(Nome_Editora) values(@nome)
go

--executando o SP
exec p_insere_editora @nome = 'Apress'
go

exec p_insere_editora @nome = 'Alpha Books'
go

exec p_insere_editora @nome = 'Companhia das Letras'
go

--selecionando
select * from tbl_Editora
go

--parâmetros com valor padrão
create procedure p_teste_valor_padrao(@param1 int, @param2 
varchar(20) = 'valor padrão!')
as
select 'Valor do parâmetro 1:' + cast(@param1 as varchar)
select 'Valor do parâmetro 2:' + @param2
go

--execução
exec p_teste_valor_padrao 30 
go

exec p_teste_valor_padrao @param1 = 40, @param2 = 'valor modificado'
go

--seleciona o banco
use master
go

--alterar o SP
alter procedure teste(@par1 int output)
as
select @par1 * 2
return
go

--executando o SP
declare @valor as int = 15
exec teste @valor output
print @valor
go

--seleciona o banco
use db_Biblioteca
go

--alterar o SP
alter procedure p_LivroValor(@quantidade smallint, @cod smallint = -10,
@id smallint)
as
SET NOCOUNT ON
if @id >= 1
	begin
	select Nome_livro as Título, Preco_Livro * @quantidade as Preço
	from tbl_Livro
	where ID_Livro = @id
	return 1
	end
else
	return @cod
go

--executando o SP
declare @codigo int
exec @codigo = p_LivroValor @id = 2, @quantidade = 5
print @codigo
go

declare @codigo int
exec @codigo = p_LivroValor @id = 8, @quantidade = 5
print @codigo
go