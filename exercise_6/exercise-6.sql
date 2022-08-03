-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
SELECT title FROM customer
INNER JOIN rental on customer.customer_id = rental.customer_id
INNER JOIN inventory on rental.inventory_id = inventory.inventory_id
INNER JOIN film on inventory.film_id = film.film_id
WHERE customer.first_name = 'Roberta'