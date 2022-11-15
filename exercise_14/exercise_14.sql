-- the average film length by category
-- include the category name and avg length
SELECT category.name, AVG(film.length) as avg

from category left join film_category
on category.category_id = film_category.category_id

LEFT JOIN film
on film_category.film_id = film.film_id


group by category.name
