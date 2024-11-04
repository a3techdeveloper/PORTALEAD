--Funções de Data
--retorna data e hora atuais
select GETDATE() as 'Data-Hora Atuais'

--Funções DAY(), MONTH() e YEAR() - retornan dia, mês e ano valor inteiro
select DAY('2024-04-19') as 'Dia'
select MONTH('2024-04-19') as 'Mês'
select YEAR('2024-04-19') as 'Ano'

--Função DATEADD(parte, valor, data)
select DATEADD(Month, 1, '19/04/2024') as 'Daqui há um mês'
select DATEADD(DAY, 5, '19/04/2024') as 'Daqui há cinco dias'

--Função DATEDIFF(parte, iniciao, fim)
select DATEDIFF(Day, '18/07/2020', '25/07/2020') as 'Diferença de dias'
select DATEDIFF(Year, '18/07/2016', '18/07/2020') as 'Diferença de anos'

--Função DATENAME(parte, data)
select DATENAME(Day, '19/04/2024') as 'Dia'
select DATENAME(Month, '19/04/2024') as 'Mês'
select DATENAME(WEEKDAY, '19/04/2024') as 'Dia da Semana'

select 'Hoje é dia '+datename(DAY, '19/04/2024')+' de '+datename(MONTH, '19/04/2024')+
' de '+datename(YEAR, '19/04/2024')