-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10
SELECT film.title, count(rental.inventory_id) as count

from rental left join inventory

on rental.inventory_id = inventory.inventory_id

left join film
on film.film_id = inventory.film_id

group by film.film_id
ORDER BY count DESC
LIMIT 10