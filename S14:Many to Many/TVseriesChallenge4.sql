-- IDENTIFY series that has no reviews

SELECT 
    title AS unreviewed_series
FROM
    series
        LEFT JOIN
    reviews ON series.id = reviews.series_id
WHERE
    rating IS NULL;
 
 
SELECT 
    title AS unreviewed_series
FROM
    reviews
        RIGHT JOIN
    series ON series.id = reviews.series_id
WHERE
    rating IS NULL;