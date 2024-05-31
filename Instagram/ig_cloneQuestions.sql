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

-- We are running a new contest to see who can get the most likes on a single photo.
-- Who Won?
-- Identify most popular photo and user who created it.
SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- Our Investors want to know..
-- How many times does the average user post?
-- Calculate avg number of photos per user
SELECT 
(SELECT Count(*) FROM   photos) / (SELECT Count(*) FROM   users) AS avg; 