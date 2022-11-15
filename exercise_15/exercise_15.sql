-- the total run time of all inventory items if they were all played back to back
SELECT SUM(film.length) as sum

from film left join inventory
on film.film_id = inventory.film_id

WHERE inventory.inventory_id IS NOT NULL