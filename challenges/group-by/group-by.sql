-- We have two staff members, with staff ID's 1 and 2, we want to give a bonus to the staff member that handled the most payments (number of payments not total amount)
-- How many payments did each staff member handle and who gets the bonus?

SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount) DESC


-- Corporate HQ is conducting a study on the relationship between replacment cost and a movie MPAA rating (e.b. G, PG, R)
-- What is the average replacment cost per MPAA rating? (use film table)
-- Note: you may need to expand the AVG column to view the correct results... or you can use ROUND() to remove digits.


SELECT rating, ROUND(AVG(replacement_cost),2) FROM film
GROUP BY rating


-- We are running a promotion to reqard our top 5 customers with coupons, what are the customer ids of the top 5 customers by total spend?

SELECT customer_id, SUM(amount) from payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5
