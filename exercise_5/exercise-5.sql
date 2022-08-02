-- find all film titles that an actor with the last_name Davis appears in
-- Similar to exercise 3 but with actor, film_actor, film
SELECT title FROM film
INNER JOIN film_actor on film_actor.film_id = film.film_id
INNER JOIN actor on actor.actor_id = film_actor.actor_id
WHERE last_name = 'Davis'