-- find all customers first_name, last_name, address, and city
-- Similar to exercise 3 but with customer, address, city
SELECT customer.first_name, customer.last_name, address.address, city.city
FROM customer
LEFT JOIN address
ON customer.address_id = address.address_id
LEFT JOIN city
ON address.city_id = city.city_id