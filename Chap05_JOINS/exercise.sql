-- Write an INNER JOIN to show each customer's name alongside their orders.
describe orders;
SELECT 
    c.first_name, o.order_id, o.order_date
FROM
    customers c
        INNER JOIN
    orders o ON c.customer_id = o.customer_id;

-- Write a LEFT JOIN to show all customers, including those with no orders.

SELECT 
    c.first_name, c.city, o.order_id
FROM
    customers c
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id;

-- Modify the LEFT JOIN query to show ONLY customers who have never placed an order.
SELECT 
    c.first_name, c.city
FROM
    customers c
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id
    where o.order_id is null;