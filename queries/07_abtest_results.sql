-- Which group converts better? (A vs B)
SELECT
    number_of_pairs,
    COUNT(*) AS users,
    SUM(CASE WHEN is_purchase = 'True' THEN 1 ELSE 0 END) AS purchasers,
    ROUND(
        100.0 * SUM(CASE WHEN is_purchase = 'True' THEN 1 ELSE 0 END) / COUNT(*), 
        2
    ) AS conversion_rate_pct
FROM joined
WHERE number_of_pairs IN (3, 5)
GROUP BY number_of_pairs
ORDER BY number_of_pairs;
