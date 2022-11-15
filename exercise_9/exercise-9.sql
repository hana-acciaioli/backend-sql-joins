-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL
SELECT title

from film left join inventory
ON film.film_id = inventory.film_id

LEFT JOIN rental
on rental.inventory_id = inventory.inventory_id

WHERE rental.rental_id IS NULL 
AND inventory.inventory_id IS NOT NULL