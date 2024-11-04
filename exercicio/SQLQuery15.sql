--Estrutura de decis�o CASE
select  nome, genero =
case Genero
	when 'M' then 'Masculino'
	when 'F' then 'Feminino'
	else 'Outro g�nero'
end,
salario 
from tbl_Cliente order by Nome

select Nome, Telefone, Salario, UF = 
case UF 
	when 'DF' then 'Distrito Federal'
	when 'GO' then 'Goi�s'
	else 'Outra UF'
end
from tbl_Cliente order by salario desc

--CASE Pesquisada
select Nome, Genero, "Salario" = 
case 
	when salario < 1000 then 'Sal�rio Baixo'
	when salario >= 1000 and salario <= 1600 then 'Sal�rio Mediano'
	when salario >= 1600 and salario <= 2500 then 'Sal�rio Satisfat�rio'
	when salario >= 2500 and salario <= 9800 then 'Sal�rio Muito Satisfat�rio'
	else 'Sonho de Vida Alcan�ado'
end,
salario
from tbl_Cliente

alter table tbl_Cliente add Genero char(1)
alter table tbl_Cliente add UF char(2)

update tbl_Cliente set Genero = 'F', UF = 'DF' where ID_Cliente = 1
update tbl_Cliente set Genero = 'F', UF = 'GO' where ID_Cliente = 3
update tbl_Cliente set Genero = 'M', UF = 'DF' where ID_Cliente = 5

update tbl_Cliente set Salario = 22000.00 where ID_Cliente = 6

insert into tbl_Cliente(Nome, Telefone, Salario, Genero, UF)
values('Caio Cunha','9988-8855',22.000,'M','GO')
insert into tbl_Cliente(Nome, Telefone, Salario, Genero, UF)
values('Samantha Vieira','7711-8844',800.00,'F','DF')

select * from tbl_Cliente

--La�o de repeti��o WHILE <condi��o>
declare @valor int
set @valor = 0

while @valor <= 10
	begin
		print 'N�mero: ' + cast(@valor as varchar(2))
		set @valor = @valor + 1
	end

use db_Biblioteca

declare @codigo int
set @codigo = 1

while @codigo < 6
	begin
		select ID_Livro as ID, Nome_livro as Livro, Preco_Livro as Preco
		from tbl_Livro where ID_Livro = @codigo
		set @codigo = @codigo + 1
	end