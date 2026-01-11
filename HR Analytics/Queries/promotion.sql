SELECT
    YEAR(review_date) AS year,
    COUNT(*) AS promotions
FROM performance_reviews
WHERE promotion = TRUE
GROUP BY YEAR(review_date)
ORDER BY year;
