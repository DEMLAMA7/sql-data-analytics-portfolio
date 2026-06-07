-- Finding customers who NEVER ordered

SELECT 
    c.first_name, c.city
FROM
    customers c
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    o.order_id IS NULL;


-- These two queries return the same result:

-- RIGHT JOIN version
SELECT c.name, o.product
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

-- Equivalent LEFT JOIN version (preferred)
SELECT c.name, o.product
FROM orders o
LEFT JOIN customers c ON c.customer_id = o.customer_id;
