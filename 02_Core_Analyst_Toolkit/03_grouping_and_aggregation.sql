SELECT * FROM orders;

-- Query 1: Basic Aggregation (The Whole Table)
-- Business Question: "What is our total revenue and total items sold?"

SELECT
   SUM(total_price) AS total_revenue,
   SUM(quantity) AS total_items_sold,
   COUNT(order_id) AS total_number_of_orders
FROM orders;

-- Query 2: The GROUP BY Clause
-- Business Question: "How much revenue did we make per product category?"

SELECT
   product_category,
   SUM(total_price) AS category_revenue
FROM orders
GROUP BY product_category;

-- Query 3: Combining GROUP BY and ORDER BY
-- Business Question: "What is our best-selling category by revenue, ranked from highest to lowest?"

SELECT
   product_category,
   SUM(total_price) AS category_revenue
FROM orders
GROUP BY product_category
ORDER BY category_revenue DESC;


-- Query 4: Average Order Value (AOV)
-- Business Question: "On average, how much do customers spend when they buy Electronics vs Clothing?"

SELECT
   product_category,
   AVG(total_price) AS average_spend
FROM orders
GROUP BY product_category;










   