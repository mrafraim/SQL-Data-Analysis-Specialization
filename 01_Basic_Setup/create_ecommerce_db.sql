-- 1. Create the orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    product_category VARCHAR(50),
    order_date DATE,
    quantity INT,
    total_price NUMERIC(10, 2)  -- 10 total digits, 2 decimal places for currency
);

-- 2. Insert real-world sample data
INSERT INTO orders (customer_name, product_category, order_date, quantity, total_price)
VALUES 
    ('Sarah Connor', 'Electronics', '2023-10-01', 1, 899.99),
    ('John Wick', 'Clothing', '2023-10-02', 3, 120.50),
    ('Ellen Ripley', 'Electronics', '2023-10-03', 2, 450.00),
    ('Tony Stark', 'Home Goods', '2023-10-03', 1, 95.00),
    ('Bruce Wayne', 'Electronics', '2023-10-05', 5, 1250.00),
    ('Clark Kent', 'Clothing', '2023-10-06', 2, 45.99),
    ('Diana Prince', 'Home Goods', '2023-10-07', 4, 210.00);

-- 3. Verify the data
SELECT * FROM orders;