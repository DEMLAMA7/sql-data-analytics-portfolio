-- Find total revenue and order count grouped by category.

SELECT 
    product_name,
    SUM(price * stock_quantity) AS total_revenue,
    COUNT(*) AS total_orders
FROM
    products
GROUP BY product_name;


-- Find total amount spent by each customer_id, sorted highest to lowest.

SELECT 
    c.customer_id, c.first_name, SUM(p.payment_amount)
FROM
    customers c
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id
        LEFT JOIN
    payments p ON o.order_id = p.order_id
GROUP BY c.customer_id , c.first_name;

-- Find the maximum order amount per customer_id. 
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    MAX(p.payment_amount) AS max_order_amount
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
        JOIN
    payments p ON o.order_id = p.order_id
GROUP BY c.customer_id , c.first_name , c.last_name
ORDER BY max_order_amount DESC;