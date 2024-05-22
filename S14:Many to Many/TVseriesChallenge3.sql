-- match up every reviewers first and last name with what rating they made
-- first name, last name

SELECT 
    first_name, last_name, rating
FROM
    reviewers
        JOIN
    reviews ON reviews.reviewer_id = reviewers.id;

