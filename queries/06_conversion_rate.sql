-- Step 5: Overall conversion rate
SELECT 
    ROUND(
        100.0 * SUM(CASE WHEN is_purchase = 'True' THEN 1 ELSE 0 END) / COUNT(*), 
        2
    ) AS overall_conversion_rate_pct
FROM joined;
