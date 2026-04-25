SELECT * FROM customers;
SELECT * FROM orders;

-- Query 1: DISTINCT (Unique Values)
-- Business Question: "Which unique product categories have we actually sold items in?"

SELECT DISTINCT product_category
FROM orders;

-- Query 2: DISTINCT with Multiple Columns
-- Business Question: "Which customers have made a purchase, and what category did they buy from? (Show unique pairs only)"

SELECT DISTINCT customer_name, product_category 
FROM orders;

-- Query 3: HAVING (Filtering Groups)
-- Business Question: "Which product categories have generated more than $1,000 in total revenue?"

SELECT 
   product_category,
   SUM(total_price) AS category_revenue
FROM orders
GROUP BY product_category
HAVING SUM(total_price) > 1000;

-- Query 4: Combining WHERE and HAVING
-- Business Question: "For Electronics only, which customers have spent more than $500 total?"

SELECT
   customer_name,
   SUM(total_price) AS electronics_spend
FROM orders
WHERE product_category ='Electronics'
GROUP BY customer_name
HAVING SUM(total_price) > 500;
   
   
































