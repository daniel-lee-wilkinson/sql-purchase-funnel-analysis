-- Create joined table
WITH joined AS (
    SELECT DISTINCT
        SUBSTR(q.user_id, 1, 8) AS user_id,
        CASE WHEN h.user_id IS NOT NULL THEN 'True' ELSE 'False' END AS is_home_try_on,
        CASE 
            WHEN h.number_of_pairs = '' OR h.number_of_pairs IS NULL THEN 'NULL'
            ELSE CAST(h.number_of_pairs AS INTEGER)
        END AS number_of_pairs,
        CASE WHEN p.user_id IS NOT NULL THEN 'True' ELSE 'False' END AS is_purchase
    FROM quiz q
    LEFT JOIN home_try_on h ON q.user_id = h.user_id
    LEFT JOIN purchase p ON q.user_id = p.user_id
)
