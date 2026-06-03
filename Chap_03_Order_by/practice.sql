SELECT 
    *
FROM
    payments
ORDER BY payment_amount DESC;

-- Show customers sorted alphabetically by name
SELECT 
    first_name AS name, city
FROM
    customers
ORDER BY first_name ASC;

describe products;S
-- Combine WHERE and ORDER BY
SELECT 
    product_id, product_name, price
FROM
    products
WHERE
    price >= 150
ORDER BY price DESC;