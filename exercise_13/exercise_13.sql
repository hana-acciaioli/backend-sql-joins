-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT country.country, AVG(payment.amount) as avg

from country left join city
ON country.country_id = city.country_id

left join address 
on address.city_id = city.city_id

left join customer
on customer.address_id = address.address_id

left join payment
on payment.customer_id = customer.customer_id

where payment.amount is not null
group by country.country_id
order by avg desc

limit 10
