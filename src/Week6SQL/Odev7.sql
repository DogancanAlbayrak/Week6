SELECT rating FROM film GROUP BY rating; -- Question 1

SELECT replacement_cost, COUNT(*) FROM film GROUP BY replacement_cost HAVING COUNT(*) > 50; -- Question 2

SELECT store_id, COUNT(*) FROM customer GROUP BY store_id; -- Question 3

SELECT country_id, COUNT(*) FROM city GROUP BY country_id ORDER BY COUNT(country_id) DESC; -- Question 4