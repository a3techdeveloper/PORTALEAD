use aulas

create table tbl_Times(
	Id_Time int primary key identity,
	Nome_Time varchar(25) not null,
	Pontos int not null
)
go

insert into tbl_Times (Nome_Time,  Pontos) values ('Corinthians', 12)
insert into tbl_Times (Nome_Time,  Pontos) values ('Flamengo', 10)
insert into tbl_Times (Nome_Time,  Pontos) values ('Palmeiras', 9)
insert into tbl_Times (Nome_Time,  Pontos) values ('Vasco da Gama', 9)
insert into tbl_Times (Nome_Time,  Pontos) values ('Criciúma', 8)
insert into tbl_Times (Nome_Time,  Pontos) values ('Fluminense', 8)
go

select * from tbl_Times
go

select top(5) with ties Nome_Time, Pontos from tbl_Times
order by Pontos Desc
go

use db_Biblioteca
go

--Criando uma view
create view vw_LivrosAutores 
as select 
tbl_Livro.Nome_Livro as livro,
tbl_Autor.Nome_Autor as autor
from tbl_Livro inner join tbl_Autor 
on tbl_Livro.ID_Autor = tbl_Autor.ID_Autor
go

--Alterando uma view
alter view vw_LivrosAutores
as select
tbl_Livro.Nome_Livro as Livro,
tbl_Autor.ID_Autor as Autor,
tbl_Livro.Preco_Livro as Preco
from tbl_Livro inner join tbl_Autor
on tbl_Livro.ID_Autor = tbl_Autor.ID_Autor
go

--consultando através da view
select * from vw_LivrosAutores

--Excluindo view
drop view vw_LivrosAutores
go

--Subconsultas com tabelas derivadas
select Nome_Autor, Sobrenome_Autor from tbl_Autor
where ID_Autor = (select ID_Autor from tbl_Autor where Sobrenome_Autor = 'Blum')
go

use aulas
go

--usa a função para obter o preço médio dos produtos
--é passado para a cláusula where da condição da consulta externa
select ID_Produto, Descricao, Preco
from tbl_Produto where Preco > (select AVG(Preco) from tbl_Produto)
go

--Alterando tabela
alter table tbl_Produto add QTD_Vendas int
alter table tbl_Produto add UF varchar(2)
go

--popular tabela
insert into tbl_Produto (Descricao, Quantidade, Preco) values('Placa-Mãe', 7, 189.90)
insert into tbl_Produto (Descricao, Quantidade, Preco) values('WebCam', 18, 59.90)
insert into tbl_Produto (Descricao, Quantidade, Preco) values('MousePad', 20, 9.99)
insert into tbl_Produto (Descricao, Quantidade, Preco) values('Memória 1GB', 12, 89.90)
go

--Atualizar registros
update tbl_Produto set QTD_Vendas = 3, UF = 'DF' where ID_Produto = 1
update tbl_Produto set QTD_Vendas = 10, UF = 'GO' where ID_Produto = 2
update tbl_Produto set QTD_Vendas = 7, UF = 'DF' where ID_Produto = 3
update tbl_Produto set QTD_Vendas = 22, UF = 'RJ' where ID_Produto = 4
update tbl_Produto set QTD_Vendas = 18, UF = 'GO' where ID_Produto = 5
update tbl_Produto set QTD_Vendas = 4, UF = 'DF' where ID_Produto = 6
update tbl_Produto set QTD_Vendas = 9, UF = 'RJ' where ID_Produto = 7
go

--Subconsulta utilizando função de agregação
select uf, SUM(QTD_Vendas) as 'Total de Vendas' from tbl_Produto
group by uf
go

--Subconsulta retorna resultados para a consulta (Preco > (59.99)
select Descricao, Preco from tbl_Produto where Preco > 
(select MIN(Preco) + 20.00 from tbl_Produto)
go

--Subconsulta em uma cláusula HAVING
select uf, SUM(QTD_Vendas) as 'Total de Vendas'
from tbl_Produto
group by uf
having SUM(QTD_Vendas) > (select MAX(QTD_Vendas) from tbl_Produto)
go

select * from tbl_Produto
select * from tbl_Cliente
select * from tbl_Pedido
go

--Criando tabela
create table tbl_Pedido(
	ID_Pedido int primary key identity,
	ID_Cliente int
)
go

--Populando tabela
insert into tbl_Pedido(ID_Cliente) values(3)
insert into tbl_Pedido(ID_Cliente) values(1)
go

--Operador exists, not exists
select nome, telefone, salario
from tbl_Cliente where exists 
(select * from tbl_Pedido where tbl_Pedido.ID_Cliente = tbl_Cliente.ID_Cliente)

select nome, telefone, salario
from tbl_Cliente where not exists 
(select * from tbl_Pedido where tbl_Pedido.ID_Cliente = tbl_Cliente.ID_Cliente)

