SELECT * FROM customers;
SELECT * FROM orders;

-- Query 1: AND, OR, NOT (Using Parentheses)
-- Business Question: "Show me Home Goods orders OR any order over $500, but NOT from Tony Stark."

SELECT * FROM orders
WHERE (product_category ='Home Goods' OR total_price>500)
   AND (NOT customer_name = 'Tony Stark');

-- Query 2: The IN Operator
-- Business Question: "Show me all orders for Electronics and Clothing without using OR."

SELECT * FROM orders
WHERE product_category IN ('Electronics', 'Clothing');

-- Query 3: The BETWEEN Operator
-- Business Question: "Show me all orders placed in the first 5 days of October 2023."

SELECT * FROM orders
WHERE order_date BETWEEN '2023-10-01' AND '2023-10-05';


-- Query 4: The LIKE Operator (Pattern Matching)
-- Business Question: "Find any registered customer whose name starts with 'B' or whose email ends with '@weyland.com'."

SELECT * FROM customers
WHERE customer_name LIKE 'B%' OR email LIKE '%@weyland.com';












