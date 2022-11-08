-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT city.city, SUM(payment.amount) as SUM

from city left join address
ON city.city_id = address.city_id

left join customer
on customer.address_id = address.address_id

left join rental
on rental.customer_id = customer.customer_id

left join payment
on payment.rental_id = rental.rental_id

WHERE payment.amount IS NOT NULL

Group by city.city_id
ORDER by SUM Desc

LIMIT 10