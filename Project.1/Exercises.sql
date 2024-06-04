-- Challenge 1
-- Find Earliest Date A User Joined
SELECT 
    DATE_FORMAT(MIN(created_at), "%M %D %Y") as earliest_date 
FROM users;

-- Challenge 2
-- Find Email of Earliest User
SELECT * 
FROM   users 
WHERE  created_at = (SELECT Min(created_at) 
                     FROM   users); 

-- Challenge 3
-- Users According to the Month they Joined
SELECT Monthname(created_at) AS month, 
       Count(*)              AS count 
FROM   users 
GROUP  BY month 
ORDER  BY count DESC; 

-- Challenge 4
-- Cound Number of Users with Yahoo Emails
SELECT Count(*) AS yahoo_users 
FROM   users 
WHERE  email LIKE '%@yahoo.com'; 

-- Challenge 5
-- Calculate Total Number of Users for Each Email Host
SELECT CASE 
         WHEN email LIKE '%@gmail.com' THEN 'gmail' 
         WHEN email LIKE '%@yahoo.com' THEN 'yahoo' 
         WHEN email LIKE '%@hotmail.com' THEN 'hotmail' 
         ELSE 'other' 
       end      AS provider, 
       Count(*) AS total_users 
FROM   users  
GROUP  BY provider 
ORDER  BY total_users DESC; 