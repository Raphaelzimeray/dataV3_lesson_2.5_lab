-- 1er question 

SELECT DISTINCT last_name
FROM actor;

-- 2 e question 

SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1;

-- 3 e question 

SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id;

-- 4 e question 

SELECT release_year, COUNT(*) AS film_count
FROM film
GROUP BY release_year;

-- 5 e question 

SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating;

-- 6e question 

SELECT rating, ROUND(AVG(length), 2) AS avg_length
FROM film
GROUP BY rating;

-- 7E question 

SELECT rating
FROM film
GROUP BY rating
HAVING AVG(length) > 120;

-- 8 e question 

SELECT title, length, RANK() over (ORDER BY length DESC)
FROM film
WHERE length is not null and length > 0;




