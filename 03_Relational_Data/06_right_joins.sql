-- 1. Add a customer with zero orders
INSERT INTO customers (customer_name, email, is_loyalty_member)
VALUES ('Peter Parker', 'peter@dailybugle.com', FALSE);

SELECT * FROM customers;

-- 2. The RIGHT JOIN
-- Business Question: "Show me a list of ALL registered customers, regardless of whether they have made an order."
SELECT 
    customers.customer_name,
    customers.email,
    orders.order_id,
    orders.total_price
FROM orders
RIGHT JOIN customers 
    ON orders.customer_name = customers.customer_name;

-- 3. The Business Use Case (Finding Zero-Purchase Users)
-- Business Question: "Which registered customers have never made a purchase so we can send them a promo email?"
SELECT 
    customers.customer_name,
    customers.email
FROM orders
RIGHT JOIN customers 
    ON orders.customer_name = customers.customer_name
WHERE orders.order_id IS NULL; -- Finding the missing data on the Left side!

-- To be honest, most analysts just swap the order of their tables and use a LEFT JOIN out of habit!