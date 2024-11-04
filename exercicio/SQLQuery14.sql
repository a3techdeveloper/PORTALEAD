--Declarando variáveis
declare @valor int,
		@texto varchar(40),
		@data_nasc date,
		@salario money

--Atribuindo valores
set @valor = 50
set @texto = 'A3Tech'
set @data_nasc = GETDATE()
set @salario = 4800

--Exibir valores das variáveis
select @valor as valor, @texto as plataforma, @data_nasc as 'Data de Nascimento',
@salario as salario


use db_Biblioteca

--Atribuindo valores com select
declare @livro varchar(40)
select @livro = Nome_Livro from tbl_Livro where ID_Livro = 1

select @livro as 'Nome do Livro'

--Exemplo com cálculo
declare @preco money,
		@quantidade int,
		@nome varchar(40)

set @quantidade = 5

select @preco = Preco_Livro, @nome = Nome_Livro 
from tbl_Livro where ID_Livro = 2

select @nome as 'Título do Livro',
@preco * @quantidade as 'Preço dos Livros'

select * from tbl_Livro

--Conversão de tipos utilizando CAST e CONVERT
select 'O Preço do livro '+Nome_Livro+' é de R$ '+ CAST(Preco_Livro as varchar(6)) from tbl_Livro
where ID_Autor = 2

select 'O Preço do livro '+Nome_Livro+' é de R$ '+CONVERT(varchar(6),Preco_Livro) from tbl_Livro

--CONVERT exemplo de Data
select 'A data de publicação '+CONVERT(varchar(15), Data_Pub) from tbl_Livro
where ID_Livro = 2

--CONVERT exemplo de Data
select 'A data de publicação '+CONVERT(varchar(15), Data_Pub, 103) from tbl_Livro
where ID_Livro = 2


--Estrutura condicional IF
declare @numero int,
		@professor varchar(10)

set @numero = 20
set @professor = 'Anderson'

--Verificar se o número é igual a 20
if @numero = 20
	select 'Número correto!'

if @professor = 'Henrique'
	begin
		set @numero = 30
		select @numero
	end;
else
	begin
		set @numero = 40
		select 'Número incorreto!'
		select @numero
	end;

use aulas

alter table tbl_Aluno alter column nota1 real
alter table tbl_Aluno alter column nota2 real
alter table tbl_Aluno alter column nota3 real
alter table tbl_Aluno alter column nota4 real

select * from tbl_Aluno

update tbl_Aluno set nota1 = 8 , nota2 = 7, nota3 = 3, nota4 = 10 where ID_Aluno = 1
update tbl_Aluno set nota1 = 4, nota2 = 5, nota3 = 8, nota4 = 2 where ID_Aluno = 2
update tbl_Aluno set nota1 = 5, nota2 = 6, nota3 = 7, nota4 = 3 where ID_Aluno = 3
update tbl_Aluno set nota1 = 10, nota2 = 9, nota3 = 8.5, nota4 = 9 where ID_Aluno = 4

declare @aluno varchar(30),
		@media real,
		@resultado varchar(10)

select 
	   @aluno = Nome_Aluno,
	   @media = (tbl_Aluno.nota1 + tbl_Aluno.nota2 + tbl_Aluno.nota3 + tbl_Aluno.nota4) / 4.00
from tbl_Aluno
where Nome_Aluno = 'Pedro Dantas'

if @media >= 7.00
	begin
		select @resultado = 'Aprovado'
	end;
else
	begin
		select @resultado = 'Reprovado'
	end;

select 'O(A) aluno(a) ' + @aluno + ' está ' + @resultado + ' com média ' + CAST(@media as varchar)


