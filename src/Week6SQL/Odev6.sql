SELECT SUM(rental_rate) FROM film; -- Question 1

SELECT COUNT(title) FROM film WHERE title LIKE 'C%'; -- Question 2

SELECT rental_rate, length FROM film WHERE rental_rate = 0.99 ORDER BY length DESC LIMIT 1; -- Question 3

SELECT COUNT(DISTINCT replacement_cost) FROM film WHERE length > 150 -- Question 4