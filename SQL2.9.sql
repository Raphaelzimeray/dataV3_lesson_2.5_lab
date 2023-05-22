-- 1er question 

SELECT COUNT(DISTINCT(last_name))
FROM actor;

-- 2e question 

SELECT *,
    CASE
        WHEN DAYOFWEEK(rental_date) IN (1, 7) THEN 'weekend'
        ELSE 'workday'
    END AS day_type
FROM rental;

-- 3e question 

SELECT *
FROM film
WHERE title like '%ARMAGEDDON%';

-- 4 e question 

SELECT *
FROM film
ORDER BY length DESC LIMIT 10;

-- 5 E question 

SELECT COUNT(*)
FROM film
WHERE special_features like '%Behind the Scenes%';

-- 6 e question 

SELECT rating, AVG(length) AS avg_duration
FROM film
GROUP BY rating
HAVING AVG(length) > 120;

-- 7 e question 

SELECT DENSE_RANK() OVER(ORDER BY length DESC) as 'Rank', title, length
FROM film
WHERE length != 0 and length IS NOT NULL;




