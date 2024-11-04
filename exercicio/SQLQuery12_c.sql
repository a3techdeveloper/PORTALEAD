--Funções Matemáticas
--Função ABS(expressao)
select ABS(10)
select ABS(-8.238765)
select ABS(-9)

--Função FLOOR(expressao)
select FLOOR(1.1)
select FLOOR(1.4)
select FLOOR(2.1)
select FLOOR(2.4)

--Função LOG(expressao)
select LOG(3)
select LOG(10)

--Função PI()
select PI() as 'Constante PI'
select PI() / 2

--Função POWER(base, expoente)
select POWER(2.0, 3.0)
select POWER(2, 3)
select POWER(25, 0.5)

--Função SQRT(expressao)
select SQRT(9)
select SQRT(2)
select SQRT(2.5)

--Função RAND(expressao)
--sorteia um valor entre 0 e 1
select RAND()
--simula o sorteio de valores entre 1 e 4
select FLOOR(RAND() * 4 + 1)

