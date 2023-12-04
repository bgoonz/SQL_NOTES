-- We are launching a platinum service for our most loyal customers. We will assign platinum status to customers that have 40 or more transaction payments.
-- What customer_ids are eligible for platinum status?

-- Use payment table and recall that any column can be passed into a COUNT() call


SELECT customer_id, COUNT(amount) from payment
GROUP BY customer_id
HAVING COUNT(*) >= 40


-- What are the customer ids of customers who have spent more than $100 in payment transactions with our staff_id member 2?
SELECT customer_id, COUNT(amount) from payment
WHERE staff_id =2
GROUP BY customer_id
HAVING SUM(amount) >100
