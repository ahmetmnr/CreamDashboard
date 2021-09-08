select  date_trunc('day', u.minute) "day",
 price  from prices.usd as u 

where symbol = 'CREAM' and minute in (select 
MAX(minute)  from prices.usd as u 

where symbol = 'CREAM' 
group by date_trunc('day', u.minute))
order by "day"