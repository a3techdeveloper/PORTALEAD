--Utilizando os operadores Some e Any
use aulas
go

--Criando a tabela
create table tbl_Test(
	ID_Cliente smallint identity primary key,
	NM_Cliente varchar(20) not null
)
go

--Populando a tabela
insert into tbl_Test(NM_Cliente)values('CLIENTE 1')
insert into tbl_Test(NM_Cliente)values('CLIENTE 2')
insert into tbl_Test(NM_Cliente)values('CLIENTE 3')
go

--Selecionando tudo
select * from tbl_Test
go

--Deletar registros que atendam a esta condi��o
delete from tbl_Test where ID_Cliente > 3

--Operadores SOME e ANY
--declarando uma vari�vel
declare @VALOR int = 3

--� "menor" do que "algum" dos n�meros desta coluna
select iif((@VALOR < some (select ID_Cliente from tbl_Test)),
'� menor que algum','N�o � menor que algum')

--� "diferente" que "algum" dos n�meros desta coluna
select iif((@VALOR <> some (select ID_Cliente from tbl_Test)),
'� difente de algum','N�o � diferente de algum')

--� "menor" que "qualquer" dos n�meros desta coluna
select iif((@VALOR < any (select ID_Cliente from tbl_Test)),
'� menor que qualquer','N�o � menor que qualquer')

--� "diferente" que "qualquer" dos n�meros desta coluna
select iif((@VALOR <> any (select ID_Cliente from tbl_Test)),
'� diferente de qualquer','N�o � diferente de qualquer')

--declarando uma vari�vel
declare @VALOR2 int = 1

--� "menor" que "todos" os n�meros desta coluna
select iif((@VALOR2 < all(select ID_Cliente from tbl_Test)),
'� menor que todos','N�o � menor que todos')

--� "diferente" que "todos" os n�meros desta coluna
select iif((@VALOR2 <> all(select ID_Cliente from tbl_Test)),
'� diferente de todos','N�o � diferente de todos')

--selecionar o banco
use db_Biblioteca
go;

--Criando uma CTE
with CTE_Livro_Autor(ID, Titulo, ISBN, Data, Preco, Nome, Sobrenome) as
(
	select
	ID_Livro,
	Nome_Livro,
	ISBN_Livro,
	Data_Pub,
	Preco_Livro,
	Nome_Autor,
	Sobrenome_Autor
	from tbl_Livro
	full join tbl_Autor
	on tbl_Autor.ID_Autor = tbl_Livro.ID_Autor
)
select * from CTE_Livro_Autor