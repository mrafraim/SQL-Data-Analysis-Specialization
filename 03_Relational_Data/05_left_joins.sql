-- Query 1: The LEFT JOIN
-- Business Question: "Show me a list of ALL orders, and attach the customer's email if we have it."

SELECT
   orders.order_id,
   orders.customer_name,
   orders.total_price,
   customers.email,
   customers.is_loyalty_member
FROM orders
LEFT JOIN customers
   ON orders.customer_name = customers.customer_name;

-- Query 2: Using IS NULL for Data Auditing
-- Business Question: "Which orders were made by 'Guest' shoppers (people not in our customer database)?"

SELECT
   orders.order_id,
   orders.customer_name AS guest_shopper,
   orders.total_price
FROM orders
LEFT JOIN customers
   ON orders.customer_name = customers.customer_name
WHERE customers.customer_name IS NULL;  -- IS NULL is how you check for missing data in SQL