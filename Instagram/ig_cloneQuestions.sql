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

-- We want to target our inactive users with an email campaign.
-- Find the users who have never posted a photo
-- Identify Inactive users (users with no photos)
SELECT username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;