--Fun��es de Data
--retorna data e hora atuais
select GETDATE() as 'Data-Hora Atuais'

--Fun��es DAY(), MONTH() e YEAR() - retornan dia, m�s e ano valor inteiro
select DAY('2024-04-19') as 'Dia'
select MONTH('2024-04-19') as 'M�s'
select YEAR('2024-04-19') as 'Ano'

--Fun��o DATEADD(parte, valor, data)
select DATEADD(Month, 1, '19/04/2024') as 'Daqui h� um m�s'
select DATEADD(DAY, 5, '19/04/2024') as 'Daqui h� cinco dias'

--Fun��o DATEDIFF(parte, iniciao, fim)
select DATEDIFF(Day, '18/07/2020', '25/07/2020') as 'Diferen�a de dias'
select DATEDIFF(Year, '18/07/2016', '18/07/2020') as 'Diferen�a de anos'

--Fun��o DATENAME(parte, data)
select DATENAME(Day, '19/04/2024') as 'Dia'
select DATENAME(Month, '19/04/2024') as 'M�s'
select DATENAME(WEEKDAY, '19/04/2024') as 'Dia da Semana'

select 'Hoje � dia '+datename(DAY, '19/04/2024')+' de '+datename(MONTH, '19/04/2024')+
' de '+datename(YEAR, '19/04/2024')