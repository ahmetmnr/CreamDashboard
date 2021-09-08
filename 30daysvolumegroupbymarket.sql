SELECT  project,                                                                                       
        date_trunc('day', block_time),                                                                 
        SUM(usd_amount) as usd_volume                                                                               
FROM dex."trades" t                                                                                    
WHERE block_time > date_trunc('day', now()) - interval '30 days'                                                          
AND block_time < date_trunc('day', Now())
AND category = 'DEX'
and  (token_a_address = '\x2ba592F78dB6436527729929AAf6c908497cB200' OR token_b_address = '\x2ba592F78dB6436527729929AAf6c908497cB200')
AND "exchange_contract_address" != '\xf9c1fA7d41bf44ADe1dd08D37CC68f67Ae75bF92' 
GROUP BY 1, 2;