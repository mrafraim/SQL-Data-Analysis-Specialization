-- Query 1: The Running Total (SUM OVER)
-- Business Question: "Show me every order chronologically, and calculate our running total revenue."

SELECT 
   order_id,
   order_date,
   customer_name,
   total_price,
   -- Add the total_price, ordered by date, row-by-row
   SUM(total_price) OVER (ORDER BY order_date) AS running_revenue_total
FROM orders;

-- Query 2: The Unique Ranker (ROW_NUMBER)
-- Business Question: "Rank the orders from most to least expensive WITHIN each product category."
SELECT
    product_category,
	customer_name,
	total_price,
	-- Reset the count (1, 2, 3...) every time the product_category changes
	ROW_NUMBER() OVER (PARTITION BY product_category ORDER BY total_price DESC) AS rank_in_category
FROM orders;

-- Query 3: The Time Traveler (LAG)
-- Business Question: "Show me each order, and right next to it, show me the price of the order that happened immediately before it."
SELECT
    order_date,
	customer_name,
	total_price AS current_order_price,
    -- Look at the row immediately preceding this one (based on date) and grab its total_price
	LAG(total_price) OVER (ORDER BY order_date) AS previous_order_price,
    -- Bonus: Now you can do math between the current row and the previous row!
    total_price - LAG(total_price) OVER (ORDER BY order_date) AS price_difference
FROM orders;













	


