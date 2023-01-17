-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
SELECT category.name

from category left join film_category
on category.category_id = film_category.category_id

LEFT JOIN film
on film_category.film_id = film.film_id


left join inventory
ON film.film_id = inventory.film_id

LEFT JOIN rental
on rental.inventory_id = inventory.inventory_id

WHERE rental.rental_id IS NULL 
AND inventory.inventory_id IS NOT NULL
