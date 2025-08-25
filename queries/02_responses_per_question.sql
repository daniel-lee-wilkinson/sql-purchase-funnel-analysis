-- Step 2: How many responses per question?
SELECT 
    question, 
    COUNT(DISTINCT(user_id)) AS unique_responses 
FROM survey
GROUP BY question;
