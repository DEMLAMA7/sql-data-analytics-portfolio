--  Show the top 3 most expensive products
SELECT 
    *
FROM
    products
ORDER BY price DESC
LIMIT 3;

-- Show just the 5 most recently signed-up customers
SELECT 
    *
FROM
    customers
ORDER BY join_date DESC
LIMIT 5;

-- OFFSET 1 --> skip first 