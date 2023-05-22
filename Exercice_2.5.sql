-- first question

SELECT * FROM actor 
WHERE first_name = "Scarlett";

-- second question 

SELECT COUNT(*)
FROM film;

SELECT DISTINCT title
FROM film;

-- troisième question 

SELECT MAX(length) AS max_duration
FROM film;

SELECT MIN(length) AS min_duration
FROM film;

-- 4th question
SELECT AVG(length) AS avg_duration
FROM film; 

-- 5 e question 

SELECT COUNT(DISTINCT last_name)
FROM actor; 

-- 6 E question 

SELECT DATEDIFF(second, MIN(rental_date), MAX(rental_date)) AS DateDiff
FROM rental;

-- 7 e question 

SELECT rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update, week(rental_date) AS week_day, month(rental_date) AS month
FROM rental LIMIT 20;

-- 8 e question 

SELECT *,
    CASE
        WHEN WEEKDAY(rental_date) IN (5, 6) THEN 'weekend'
        ELSE 'workday'
    END AS day_type
FROM rental;

-- 9 e question 

SELECT RELEASE_YEAR FROM film;

-- 10 e question 

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%';

-- 11 e question 

SELECT *
FROM film
WHERE title LIKE '%apollo';

-- 12 e question 

SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

-- 13 e question 

SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';









