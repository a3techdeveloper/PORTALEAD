--Vamos criar uma regra para que a coluna Preco_Livro não aceite valores abaixo de 10.00
--create rule rl_preco AS @VALOR > 10.00

--Vamos aplicar a nossa regra a coluna Preco_Livro
execute sp_bindrule rl_preco, 'tbl_Livro.Preco_Livro'