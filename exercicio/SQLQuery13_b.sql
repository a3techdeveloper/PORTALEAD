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

--Deletar registros que atendam a esta condição
delete from tbl_Test where ID_Cliente > 3

--Operadores SOME e ANY
--declarando uma variável
declare @VALOR int = 3

--É "menor" do que "algum" dos números desta coluna
select iif((@VALOR < some (select ID_Cliente from tbl_Test)),
'É menor que algum','Não é menor que algum')

--É "diferente" que "algum" dos números desta coluna
select iif((@VALOR <> some (select ID_Cliente from tbl_Test)),
'É difente de algum','Não é diferente de algum')

--É "menor" que "qualquer" dos números desta coluna
select iif((@VALOR < any (select ID_Cliente from tbl_Test)),
'É menor que qualquer','Não é menor que qualquer')

--É "diferente" que "qualquer" dos números desta coluna
select iif((@VALOR <> any (select ID_Cliente from tbl_Test)),
'É diferente de qualquer','Não é diferente de qualquer')

--declarando uma variável
declare @VALOR2 int = 1

--É "menor" que "todos" os números desta coluna
select iif((@VALOR2 < all(select ID_Cliente from tbl_Test)),
'É menor que todos','Não é menor que todos')

--É "diferente" que "todos" os números desta coluna
select iif((@VALOR2 <> all(select ID_Cliente from tbl_Test)),
'É diferente de todos','Não é diferente de todos')

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