SELECT
    SUM(usd_amount) AS volume
FROM dex."trades" t                                                                             
WHERE
 (token_a_address = '\x2ba592F78dB6436527729929AAf6c908497cB200' OR token_b_address = '\x2ba592F78dB6436527729929AAf6c908497cB200')
 AND  block_time > now() - interval '24 hours'
AND category = 'Aggregator';