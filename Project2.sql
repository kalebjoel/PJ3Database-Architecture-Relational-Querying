SHOW DATABASES;
USE sakila;

DESCRIBE actor;

SHOW TABLES; 

SELECT * FROM film;

# Using SELF JOIN to figure out which customers live in the same city. 
SELECT A.name AS name1, B.name as name2, A.city
FROM customer_list A, customer_list B
WHERE A.ID < B.ID
AND A.city = B.city
ORDER BY A.City; 


# USING SELF JOIN to obtain movies that have the exat same runtime.
SELECT f1.length AS runtime_minutes, f1.title AS movie_1, f2.title AS movie_2
FROM film f1
INNER JOIN film f2 ON f1.length = f2.length
WHERE f1.film_id < f2.film_id
ORDER BY f1.length DESC, f1.title
LIMIT 20;