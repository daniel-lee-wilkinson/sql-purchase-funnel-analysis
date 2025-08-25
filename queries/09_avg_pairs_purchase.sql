-- Step 9: Average number of pairs by purchase outcome
SELECT 
    is_purchase,
    ROUND(AVG(number_of_pairs), 1) AS avg_pairs
FROM joined
WHERE number_of_pairs IS NOT NULL
GROUP BY is_purchase;
