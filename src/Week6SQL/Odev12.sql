SELECT COUNT(*) FROM film
WHERE length > (SELECT AVG(length) FROM film);

---------------------------------------------------------

SELECT COUNT(*) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

---------------------------------------------------------

SELECT * FROM film WHERE rental_rate = (SELECT MIN(rental_rate) from film) AND
replacement_cost = (SELECT MIN(replacement_cost) FROM film);

---------------------------------------------------------

SELECT payment.customer_id, COUNT(payment.customer_id) AS "Alisveris Miktari", customer.first_name, customer.last_name FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY "Alisveris Miktari" DESC;