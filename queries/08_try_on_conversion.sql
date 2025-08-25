-- How many users tried on at home?
SELECT 
    is_home_try_on,
    COUNT(*) AS users
FROM joined
GROUP BY is_home_try_on;
