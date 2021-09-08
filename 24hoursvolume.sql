
    SELECT
       SUM(usd_amount)/1000000 AS million_volume
    FROM dex."trades"
WHERE (token_a_address = '\x2ba592F78dB6436527729929AAf6c908497cB200' OR token_b_address = '\x2ba592F78dB6436527729929AAf6c908497cB200')
AND block_time > now() - interval '24 hours'
AND category = 'DEX'
AND "exchange_contract_address" != '\xf9c1fA7d41bf44ADe1dd08D37CC68f67Ae75bF92' 