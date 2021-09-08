WITH supply AS
(
SELECT date_trunc('day', evt_block_time) AS day, COUNT(DISTINCT "minter") AS suppliers
FROM creamfinance."CErc20Delegate_evt_Mint"
WHERE evt_block_time > now() - interval '30 days' AND evt_block_time < now() - interval '1 days' 
GROUP BY 1
ORDER BY 1 DESC),

demand AS
(
SELECT date_trunc('day', evt_block_time) AS day, COUNT(DISTINCT "borrower") AS borrowers
FROM creamfinance."CErc20Delegate_evt_Borrow"
WHERE evt_block_time > now() - interval '30 days' AND evt_block_time < now() - interval '1 days' 
GROUP BY 1
ORDER BY 1 DESC
)

SELECT s.day, suppliers, borrowers
FROM supply s
LEFT JOIN demand d ON s.day = d.day
ORDER BY 1 DESC