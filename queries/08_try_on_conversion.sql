-- How many users tried on at home?
SELECT 
    is_home_try_on,
    COUNT(*) AS users
FROM joined
GROUP BY is_home_try_on;


-- Step 8: Conversion rate from try-on → purchase
SELECT 
    is_home_try_on,
    COUNT(*) AS users,
    SUM(CASE WHEN is_purchase = 'True' THEN 1 ELSE 0 END) AS purchasers,
    ROUND(
        100.0 * SUM(CASE WHEN is_purchase = 'True' THEN 1 ELSE 0 END) / COUNT(*), 
        2
    ) AS conversion_rate_pct
FROM joined
GROUP BY is_home_try_on;
