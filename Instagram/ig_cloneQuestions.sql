-- We want to reward our users who have been around the longest.
-- Find the 5 oldest users.
SELECT * FROM users
ORDER BY created_at
LIMIT 5;

-- What day of the week do most users register on?
-- We need to figure out when to schedule and ad campaign.
-- Most popular registration date
SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;