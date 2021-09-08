SELECT
    SUM(usd_amount)/1000000 AS million_volume
FROM dex."trades" t                                                                             
WHERE
 (token_a_address = '\x2ba592F78dB6436527729929AAf6c908497cB200' OR token_b_address = '\x2ba592F78dB6436527729929AAf6c908497cB200')
 AND  block_time > now() - interval '30 days'
AND category = 'Aggregator'
;