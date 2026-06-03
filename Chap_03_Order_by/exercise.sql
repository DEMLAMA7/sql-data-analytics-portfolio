-- Show all orders sorted by order_date, most recent first.
SELECT 
    order_id, order_date
FROM
    orders
ORDER BY order_date ASC;

-- Show all customers sorted by city alphabetically, then by name within each city.
SELECT 
    first_name, city
FROM
    customers
ORDER BY city ASC;

-- Show orders above Rs. 100 sorted by amount from lowest to highest. 
SELECT 
    *
FROM
    payments
ORDER BY payment_amount ASC;