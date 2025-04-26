SELECT * FROM moviesdb.movies;

use moviesdb;
SELECT * FROM movies;
SELECT title, release_year FROM movies WHERE release_year > 2020 ORDER BY release_year DESC;

SELECT 	movies.movie_id, financials.movie_id
FROM movies 
JOIN financials
ON movies.movie_id = financials.movie_id;

SELECT movies.title, financials.revenue
FROM movies 
INNER JOIN financials ON movies.movie_id = financials.movie_id;

SELECT movies.title, financials.revenue
FROM movies 
left JOIN financials ON movies.movie_id = financials.movie_id;

SELECT movies.title, financials.revenue
FROM movies 
right JOIN financials ON movies.movie_id = financials.movie_id;

select avg(revenue) 
from financials
where
budget = 200.00