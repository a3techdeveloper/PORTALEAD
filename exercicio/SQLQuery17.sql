--seleciona o banco
use aulas
go

--criando função - valor escalar
create function nota_media(@nome varchar(30))
returns real
as
	begin
		declare @media real
		select @media = (nota1 + nota2 + nota3 + nota4 * 2) / 4.00
		from tbl_Aluno
		where Nome_Aluno = @nome
		return @media
	end
go

--utilizando a função
select dbo.nota_media('Débora Dantas') as 'Média Final'
go

select * from tbl_Aluno
go

--seleciona o banco
use db_Biblioteca
go

--criando função - valor de tabela embutida
create function retorna_itens(@valor real)
returns Table
as

return(
	select L.Nome_Livro, L.Preco_Livro, A.Nome_Autor, E.Nome_Editora
	from tbl_Livro as L
	inner join tbl_Autor as A
	on L.ID_Autor = A.ID_Autor
	inner join tbl_Editora as E
	on L.ID_Editora = E.ID_Editora
	where L.Preco_Livro > @valor)

--utilizando a função
select Nome_Livro, Nome_Autor, Preco_Livro from retorna_itens(60.00)
go

--criando função - valor multi tabela
create function multi_tabela()
returns @valores Table
	(Nome_Livro varchar(50), 
	 Data_Pub datetime, 
	 Nome_Editora varchar(50),
	 Preco_Livro money)
as
begin
	insert @valores(Nome_Livro, Data_Pub, Nome_Editora, Preco_Livro)
	select L.Nome_Livro, L.Data_Pub, E.Nome_Editora, L.Preco_livro
	from tbl_Livro as L
	inner join tbl_Editora as E
	on L.ID_Editora = E.ID_Editora
	return
end

--utilizando a função
select * from multi_tabela()