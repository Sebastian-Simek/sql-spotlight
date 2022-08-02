-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT country,
AVG (amount)
FROM country
LEFT JOIN city on city.country_id = country.country_id
LEFT JOIN address on address.city_id = city.city_id
LEFT JOIN customer on customer.address_id = address.address_id
LEFT JOIN payment on payment.customer_id = customer.customer_id
GROUP BY country.country_id
ORDER BY AVG DESC
LIMIT 10 OFFSET 1