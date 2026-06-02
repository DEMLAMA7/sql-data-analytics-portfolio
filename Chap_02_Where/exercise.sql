-- Find all orders where amount is greater than 100.
SELECT 
    order_id, payment_amount
FROM
    payments
WHERE
    payment_amount > 100;

-- Find all orders for customer_id = 1.
SELECT 
    *
FROM
    orders
WHERE
    customer_id = 1;

-- Find all orders where the product is either "Phone" or "Laptop".
SELECT 
    *
FROM
    products
WHERE
    product_name IN ('Phone' , 'Laptop');
    
-- Find all orders placed after January 11, 2024.
SELECT 
    *
FROM
    orders
WHERE
    order_date > '2024-01-11';

-- Find orders where amount is between 5,000 and 50,000.
SELECT 
    *
FROM
    payments
WHERE
    payment_amount BETWEEN 500 AND 5000;