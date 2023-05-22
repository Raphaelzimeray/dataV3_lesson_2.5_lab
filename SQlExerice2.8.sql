-- 1 er question 

SELECT s.store_id, c.city, co.country
FROM store s 
JOIN address a ON a.address_id = s.address_id
JOIN city c ON c.city_id = a.city_id
JOIN country co ON c.country_id = co.country_id;

-- 2 e question 

SELECT c.store_id, SUM(p.amount)
FROM customer c 
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.store_id;

-- 3 e question 

SELECT c.name, MAX(f.length) AS maximum_length
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON f.film_id = fc.film_id
GROUP BY c.name;

-- 4 e question

SELECT f.film_id, f.title, COUNT(r.rental_id) AS rental_frequency
FROM film f 
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON r.inventory_id = i.inventory_id
GROUP BY f.film_id, f.title
ORDER BY rental_frequency DESC;


-- 5 e question 

SELECT c.name AS category_name, SUM(p.amount) AS gross_revenue
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON f.film_id = fc.film_id
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY c.name
ORDER BY gross_revenue DESC
LIMIT 5;

-- 6 e question 

SELECT f.title, CASE WHEN COUNT(i.inventory_id) > 0 THEN 'Yes' ELSE 'No' END AS availability
FROM film f 
JOIN inventory i ON f.film_id = i.film_id 
JOIN store s ON i.store_id = s.store_id
WHERE f.title = 'Academy Dinosaur' AND s.store_id = 1;

-- 7e question 

SELECT a1.actor_id AS actor1_id, a1.first_name AS actor1_first_name, a1.last_name AS actor1_last_name,
       a2.actor_id AS actor2_id, a2.first_name AS actor2_first_name, a2.last_name AS actor2_last_name
FROM film_actor fa1
JOIN film_actor fa2 ON fa1.film_id = fa2.film_id AND fa1.actor_id < fa2.actor_id
JOIN actor a1 ON fa1.actor_id = a1.actor_id
JOIN actor a2 ON fa2.actor_id = a2.actor_id;

