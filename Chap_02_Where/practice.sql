
 -- Q: Show all orders over Rs. 50,000
SELECT 
    order_id, product, amount
FROM
    orders
WHERE
    amount > 50000;

describe customers;
select join_date from customers;
-- Show customers from Chicago or Dallas who signed up in 2024
SELECT first_name, city, join_date
from customers 
where city 	in ("Chicago" or "Dallas")
and join_date >= "2024-02-02";

-- Q: Find customers whose email is not from Gmail
select first_name, email
from customers
where email not like '%gmail.com';