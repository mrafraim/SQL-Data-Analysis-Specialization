-- 1. Create a new Customers table

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE,
    is_loyalty_member BOOLEAN
);

-- 2. Insert customer data
INSERT INTO customers (customer_name, email, is_loyalty_member)
VALUES 
    ('Sarah Connor', 'sarah@skynet.com', TRUE),
    ('John Wick', 'john@continental.com', FALSE),
    ('Ellen Ripley', 'ripley@weyland.com', TRUE),
    ('Tony Stark', 'tony@stark.com', TRUE),
    ('Bruce Wayne', 'bruce@wayne.com', FALSE);
    -- Notice: Clark Kent and Diana Prince (who made orders) are NOT in this table!

SELECT * FROM customers;
SELECT * FROM orders;

-- 3. The INNER JOIN
-- Business Question: "Show me the email addresses of the people who bought Electronics."

SELECT
    customers.customer_name,
	customers.email,
	orders.product_category,
	orders.total_price
FROM orders
INNER JOIN customers
    ON orders.customer_name = customers.customer_name -- This is the glue
WHERE orders.product_category = 'Electronics';







