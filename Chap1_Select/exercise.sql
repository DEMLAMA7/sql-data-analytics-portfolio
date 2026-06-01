-- Write a query to show only order_id, product, and amount.
SELECT 
    order_id, product, amount
FROM
    orders;

-- Write a query to show product and amount, but rename them as item and price.
describe products;
SELECT 
    product_name AS product, price AS amount
FROM
    products;