  WITH traders AS (

  SELECT project, trader_a AS trader,  date_trunc('day', block_time) as day
  FROM dex."trades"
  WHERE block_time > now() - interval '30 days'
  AND  (token_a_address = '\x2ba592F78dB6436527729929AAf6c908497cB200' OR token_b_address = '\x2ba592F78dB6436527729929AAf6c908497cB200')
  UNION 
  
  SELECT project, trader_b AS trader,   date_trunc('day', block_time) as day 
  FROM dex."trades"
  WHERE block_time > now() - interval '30 days'
  AND  (token_a_address = '\x2ba592F78dB6436527729929AAf6c908497cB200' OR token_b_address = '\x2ba592F78dB6436527729929AAf6c908497cB200')
  
)

  SELECT project,day, COUNT(distinct trader) AS traders
  FROM traders
  GROUP BY 1,2


ORDER BY 2 asc;
