SELECT *
FROM orders;

-- Query 1: The Category Filter
-- Business Question: "Who is buying Electronics?"
SELECT *
FROM orders
WHERE product_category = 'Electronics';

-- Query 2: Filtering with Math (and selecting specific columns)
-- Business Question: "Show me the names and amounts of orders over $200."
SELECT customer_name, quantity
FROM orders
WHERE total_price > 200.00;

-- Query 3: Sorting (ORDER BY) and Limiting (LIMIT)
-- Business Question: "Who made our Top 3 most expensive purchases overall?"
SELECT *
FROM orders
ORDER BY total_price DESC
LIMIT 3;

-- Query 4: Combining multiple filters using AND
-- Business Question: "Show me Clothing orders where the quantity was greater than 2."
SELECT *
FROM orders
WHERE product_category = 'Clothing'
AND quantity > 2;

