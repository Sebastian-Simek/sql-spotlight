-- find all film titles with the category Action
-- use a LEFT JOIN FROM film onto film_category
-- use LEFT JOIN FROM film_categor onto category
SELECT film.title FROM film
INNER JOIN film_category on film.film_id = film_category.film_id
INNER JOIN category on category.category_id = film_category.category_id
WHERE category.name = 'Action';