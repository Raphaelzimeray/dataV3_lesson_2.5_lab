-- première question 

SELECT c.category_id, c.name AS category_name, COUNT(f.film_id) AS film_count
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
GROUP BY c.category_id, c.name;

-- deuxième question 

SELECT s.staff_id, CONCAT(s.first_name, ' ', s.last_name) AS staff_name, SUM(p.amount) AS total_amount
FROM staff s
JOIN payment p ON s.staff_id = p.staff_id
WHERE YEAR(p.payment_date) = 2005 AND MONTH(p.payment_date) = 8
GROUP BY s.staff_id, s.first_name, s.last_name;

-- troisième question 

SELECT a.actor_id, CONCAT(a.first_name, ' ', a.last_name) AS actor_name, COUNT(f.film_id) AS film_count
FROM actor a 
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY film_count DESC LIMIT 1;

-- QUAtrième question 

SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name, COUNT(r.rental_id) AS rental_count
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY rental_count DESC LIMIT 1;

-- 5e question 

SELECT s.first_name, s.last_name, a.address
FROM staff s 
JOIN address a ON s.address_id = a.address_id;

-- 6 e question

SELECT f.film_id, f.title, COUNT(fa.actor_id) AS actor_count
FROM film f 
JOIN film_actor fa ON f.film_id = fa.film_id
GROUP BY f.film_id, f.title;

-- 7 e question 

SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name, SUM(p.amount) AS total_amount
FROM customer c 
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY last_name ASC;

-- 8 question 

SELECT c.category_id, c.name, COUNT(f.film_id) AS total_films
FROM category c 
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
GROUP BY c.category_id, c.name;

