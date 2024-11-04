--Criando um backup do Banco de Dados
backup database db_Biblioteca
to disk = 'C:\arquivos\bkp.bak';
go

--selecioando outro banco de dados
use db_Comercial

--Eliminar o banco de dados
drop database db_Biblioteca

--restaurando o banco a partir do backup
restore database db_Biblioteca
from disk = 'C:\arquivos\bkp.bak'
with replace