-- Method 1: The Traditional Subquery
-- Business Question: "Which orders are larger than our overall average order value?"
SELECT 
   order_id,
   customer_name,
   total_price
FROM orders
WHERE total_price > (
    -- This inner query runs first, calculates the average (~$439), and passes it to the outer query
	SELECT AVG(total_price) FROM orders
);


-- Method 2: The Modern CTE (Using WITH)
-- Business Question: "Calculate the total spent by each customer, then only show me the 'VIPs' who spent over $500 in total."

WITH CustomerTotals AS(
     -- Step 1: Create a temporary table of total spend per customer
	 SELECT
	     customer_name,
		 SUM(total_price) AS total_spent
	FROM orders
	GROUP BY customer_name
)
-- Step 2: Query that temporary table!

SELECT
   customer_name,
   total_spent
FROM CustomerTotals
WHERE total_spent > 500.00
ORDER BY total_spent DESC;











