-- Query 1: Basic Arithmetic & Rounding
-- Business Question: "Calculate a 15% discount for every order, the new price, and round it to 2 decimal places."

SELECT
   order_id,
   total_price AS original_price,
   ROUND(total_price * 0.15, 2) AS discount_amount,
   ROUND(total_price * 0.85, 2) AS discounted_price
FROM orders;


-- Query 2: Column Math (Profit Margin)
-- Business Question: "Assume each product has a flat $50 shipping/handling cost. What is our 'Net Revenue' per order?"
SELECT 
    order_id,
	customer_name,
	total_price,
	(total_price - 50.00) AS net_revenue
FROM orders
WHERE total_price > 50.00; -- Avoiding negative revenue

-- Query 3: CEIL and FLOOR
-- Business Question: "For shipping estimates, round every price UP to the nearest whole dollar."

SELECT 
    total_price,
    CEIL(total_price) AS shipping_estimate_up,
    FLOOR(total_price) AS shipping_estimate_down
FROM orders;












