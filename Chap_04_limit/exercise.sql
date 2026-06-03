-- Show the top 2 orders by amount.
describe products;
SELECT 
    *
FROM
    products
ORDER BY price ASC
LIMIT 2;

-- Show only 1 customer — the one who signed up most recently.
SELECT 
    *
FROM
    customers
ORDER BY join_date DESC
LIMIT 1;

-- Show orders 3 and 4 when sorted by amount ascending (use OFFSET).
 describe payments;
SELECT 
    *
FROM
    payments
ORDER BY payment_amount ASC
LIMIT 2 OFFSET 2;
