-- 1. List all customers who live in Texas (use JOINs)
SELECT district, first_name, last_name
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE address.district = 'Texas';


-- 2. Get all payments above $6.99 with the Customer's Full Name
SELECT amount, first_name, last_name
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99

-- 3. Show all customers names who have made payments over $175(use subqueries)
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
	ORDER BY SUM(amount) DESC
)
GROUP BY first_name,last_name;

-- 4. List all customers that live in Nepal (use the city table)
-- Answer: Just Kevin. Kevin is Nepal's number 1 fan. 
SELECT customer.first_name, customer.last_name,country
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
FULL JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal';

-- 5. Which staff member had the most transactions?
-- Answer: Jon - 7304
SELECT first_name, COUNT(staff)
FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY first_name



-- 6. How many movies of each rating are there?
-- Answer: G: 178, PG: 194, PG-13: 223, R: 195, NC-17: 210
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY rating

-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
-- ???
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 6.99
)
GROUP BY first_name,last_name;

-- 8. How many free rentals did our stores give away?
-- Answer: 24
SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount