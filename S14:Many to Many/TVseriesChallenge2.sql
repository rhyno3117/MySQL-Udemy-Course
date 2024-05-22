-- Show title and avg rating and sorted/ordered from lowest to highest

SELECT 
    title, 
    ROUND(AVG(rating),2) AS avg_rating
FROM
    series
        JOIN
    reviews ON series.id = reviews.series_id
GROUP BY title
ORDER BY avg_rating;
