-- Update order_date
UPDATE movie
SET movie_rating = 'PG'
WHERE movie_rating = 'NC-17'; 

SELECT *
FROM movie