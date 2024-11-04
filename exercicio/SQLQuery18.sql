--criando o banco de dados
create database aula_trigger
on primary(
name = aula_trigger,
filename = 'C:\sql\db_aula_trigger.MDF',
size = 16mb,
maxsize = 32mb,
filegrowth = 10%
);
go

--seleciona o banco
use aula_trigger
go

--criando a tabela saldos
create table tb_Saldos(
	produto varchar(10),
	saldo_inicial numeric(10),
	saldo_final numeric(10),
	data_ult_mov datetime
);
go

--popular a tabela saldos
insert into tb_Saldos(produto, saldo_inicial, saldo_final, 
data_ult_mov) values('Produto A', 0, 100, getdate())
go

--criando a tabela vendas
create table tb_Vendas(
	id_vendas int,
	produto varchar(10),
	quantidade int,
	data datetime
);
go

--vamos criar uma sequence definir a sequ~encia para o histórico 
--de vendas
create sequence seq_tbVendas
as numeric
start with 1
increment by 1

--criando tabela histórico de vendas
create table tb_HistoricoVendas(
	produto varchar(10),
	quantidade int,
	data_venda datetime
);
go

--criando a trigger
create trigger trg_AjustaSaldo
on tb_Vendas
for insert
as
begin
declare @quantidade int,
		@data datetime,
		@produto varchar(10)
select @data = data, @quantidade = quantidade, @produto = produto 
from inserted

update tb_Saldos
set saldo_final = saldo_final - @quantidade,
data_ult_mov = @data
where produto = @produto

insert into tb_HistoricoVendas(produto, quantidade, data_venda)
values(@produto, @quantidade, @data)
end
go

--vamos inserir uma venda para disparar o gatilho
insert into tb_Vendas(id_vendas, produto, quantidade, data)
values (next value for seq_tbVendas, 'Produto A', 10, getdate());
go

--vamos consultar as tabelas
select * from tb_Vendas
select * from tb_Saldos
select * from tb_HistoricoVendas