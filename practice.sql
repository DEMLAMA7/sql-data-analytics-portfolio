CREATE DATABASE online_store_advanced;

USE online_store_advanced;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    join_date DATE,
    salary DECIMAL(10 , 2 )
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10 , 2 ),
    stock_quantity INT,
    FOREIGN KEY (category_id)
        REFERENCES categories (category_id)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id)
        REFERENCES orders (order_id),
    FOREIGN KEY (product_id)
        REFERENCES products (product_id)
);

CREATE TABLE reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    rating INT,
    review_date DATE,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
    FOREIGN KEY (product_id)
        REFERENCES products (product_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_method VARCHAR(50),
    payment_amount DECIMAL(10 , 2 ),
    payment_date DATE,
    FOREIGN KEY (order_id)
        REFERENCES orders (order_id)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10 , 2 )
);

INSERT INTO categories (category_name)
VALUES
('Electronics'),
('Furniture'),
('Accessories'),
('Books'),
('Clothing');

INSERT INTO customers
(first_name, last_name, email, city, join_date, salary)
VALUES
('John', 'Smith', 'john@example.com', 'New York', '2024-01-10', 5000),
('Emma', 'Johnson', 'emma@example.com', 'Chicago', '2024-02-15', 6500),
('Michael', 'Brown', 'michael@example.com', 'Dallas', '2024-03-01', 7200),
('Sophia', 'Williams', 'sophia@example.com', 'Seattle', '2024-03-18', 5800),
('Daniel', 'Miller', 'daniel@example.com', 'Boston', '2024-04-05', 6100),
('Olivia', 'Davis', 'olivia@example.com', 'Miami', '2024-04-15', 8000),
('James', 'Wilson', 'james@example.com', 'Denver', '2024-05-01', 4500),
('Isabella', 'Moore', 'isabella@example.com', 'Austin', '2024-05-10', 9000),
('Ethan', 'Taylor', 'ethan@example.com', 'Chicago', '2024-05-20', 5200),
('Mia', 'Anderson', 'mia@example.com', 'Dallas', '2024-06-01', 7600);

INSERT INTO products
(product_name, category_id, price, stock_quantity)
VALUES
('Laptop', 1, 1200, 10),
('Smartphone', 1, 800, 20),
('Tablet', 1, 600, 15),
('Office Chair', 2, 150, 12),
('Desk Lamp', 2, 45, 30),
('Bookshelf', 2, 200, 8),
('Headphones', 3, 90, 25),
('Keyboard', 3, 70, 18),
('Mouse', 3, 40, 40),
('Novel', 4, 25, 50),
('Notebook', 4, 15, 60),
('T-Shirt', 5, 30, 35),
('Jeans', 5, 60, 20),
('Jacket', 5, 120, 10);

INSERT INTO orders
(customer_id, order_date, status)
VALUES
(1, '2024-05-01', 'Completed'),
(2, '2024-05-02', 'Completed'),
(3, '2024-05-03', 'Completed'),
(4, '2024-05-05', 'Pending'),
(5, '2024-05-07', 'Completed'),
(1, '2024-05-08', 'Completed'),
(2, '2024-05-10', 'Cancelled'),
(6, '2024-05-12', 'Completed'),
(7, '2024-05-15', 'Completed'),
(8, '2024-05-16', 'Pending'),
(9, '2024-05-18', 'Completed'),
(10, '2024-05-20', 'Completed');

INSERT INTO order_items
(order_id, product_id, quantity)
VALUES
(1, 1, 1),
(1, 7, 2),
(2, 4, 1),
(2, 5, 2),
(3, 2, 1),
(4, 10, 3),
(5, 12, 2),
(5, 13, 1),
(6, 3, 1),
(6, 8, 1),
(7, 9, 2),
(8, 1, 1),
(8, 4, 1),
(9, 11, 5),
(10, 14, 1),
(11, 2, 1),
(11, 7, 1),
(12, 6, 1),
(12, 10, 2);

INSERT INTO reviews
(customer_id, product_id, rating, review_date)
VALUES
(1, 1, 5, '2024-05-03'),
(2, 4, 4, '2024-05-04'),
(3, 2, 5, '2024-05-05'),
(4, 10, 3, '2024-05-06'),
(5, 12, 4, '2024-05-08'),
(6, 1, 5, '2024-05-13'),
(7, 11, 4, '2024-05-16'),
(8, 14, 5, '2024-05-17'),
(9, 2, 4, '2024-05-19'),
(10, 6, 5, '2024-05-21');

INSERT INTO payments
(order_id, payment_method, payment_amount, payment_date)
VALUES
(1, 'Credit Card', 1380, '2024-05-01'),
(2, 'PayPal', 240, '2024-05-02'),
(3, 'Credit Card', 800, '2024-05-03'),
(4, 'Cash', 75, '2024-05-05'),
(5, 'Debit Card', 120, '2024-05-07'),
(6, 'Credit Card', 670, '2024-05-08'),
(7, 'PayPal', 80, '2024-05-10'),
(8, 'Credit Card', 1350, '2024-05-12'),
(9, 'Cash', 75, '2024-05-15'),
(10, 'Debit Card', 120, '2024-05-16'),
(11, 'Credit Card', 890, '2024-05-18'),
(12, 'PayPal', 250, '2024-05-20');

INSERT INTO employees
(employee_name, department, salary)
VALUES
('Alice Green', 'Sales', 5500),
('Brian Lee', 'Sales', 6200),
('Catherine Hall', 'HR', 5000),
('David Young', 'IT', 9000),
('Eva Scott', 'IT', 8700),
('Frank Adams', 'Finance', 7500),
('Grace Baker', 'Finance', 7200),
('Henry Clark', 'Marketing', 6800);

-- understand the table now for this we use show databases then chec for tables

show tables;
-- countign how many categores are there 
describe categories;
describe products;

SELECT 
    categories, SUM(price)
FROM
    products
GROUP BY categories
HAVING SUM(price) >= 1000;
SELECT 
    *
FROM
    categories;
    
-- control + b to format it 

-- Show only categories where total revenue is above 10,000

-- from the start
-- select statement
-- Show all available tables 
SHOW tables;

-- display all customers info 
SELECT 
    *
FROM
    customers;

-- show all customers and their cities
SELECT 
    first_name AS name, city
FROM
    customers;

 -- Show me everything about all products.
SELECT 
    *
FROM
    products;
    
-- Write a query to show only order_id, product, and amount.
SELECT 
    order_id, product, amount
FROM
    orders;

-- Write a query to show all tables.
show tables;

-- Write a query to show product and amount, but rename them as item and price.
describe products;
SELECT 
    product_name AS product, price AS amount
FROM
    products;
describe orders;
SELECT 
    city
FROM
    customers;
-- where clause

SELECT 
    order_id, product, amount
FROM
    orders
WHERE
    amount > 50000;

describe customers;
SELECT 
    join_date
FROM
    customers;
-- Show customers from Chicago or Dallas who signed up in 2024
SELECT 
    first_name, city, join_date
FROM
    customers
WHERE
    city IN ('Chicago','Dallas')
        AND join_date >= '2024-02-02';

-- Q: Find customers whose email is not from Gmail
SELECT 
    first_name, email
FROM
    customers
WHERE
    email NOT LIKE '%gmail.com';

-- June 2, 2026 ....................................................................


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

-- ...............................................
-- June 3, 2026 

show tables;
-- practice order by

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

describe products;
-- Combine WHERE and ORDER BY
SELECT 
    product_id, product_name, price
FROM
    products
WHERE
    price >= 150
ORDER BY price DESC;

-- exercisee for the go
-- Show all orders sorted by order_date, most recent first.
SELECT 
    order_id, order_date
FROM
    orders
ORDER BY order_date DESC;

-- Show all customers sorted by city alphabetically, then by name within each city.
SELECT 
    first_name, city
FROM
    customers
ORDER BY city ASC , first_name ASC;

-- Show orders above Rs. 100 sorted by amount from lowest to highest. 
SELECT 
    *
FROM
    payments
ORDER BY payment_amount ASC;


-- home subqueries practice
-- Find products priced above category average
describe products;

SELECT 
    product_id, product_name, price
FROM
    products
WHERE
    price > (SELECT 
            AVG(price)
        FROM
            products);
            
SELECT employee_name,
       salary,
       department
FROM employees e
WHERE salary =
(
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = e.department_id
);
 
 
 -- limit practice 8:18
--  Show the top 3 most expensive products
SELECT 
    product_id, product_name, price
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

-- exercise 
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
 
 -- 4 JANE, 2006................................................
 -- Aggregate Functions ( count, min, max, avg, ,sum)
 
 
--  practice 
-- Count all customers including nulls
SELECT 
    COUNT(*) AS total_customers
FROM
    customers; 
    
--  count specific number of rows
SELECT 
    COUNT(first_name)
FROM
    customers;
 
 
 -- SUM() --> Adds up all values in a numeric column.
-- total revenue 
SELECT 
    SUM(price) AS total_revenue
FROM
    products;
    
-- Revenue from Laptop's only
describe products;
SELECT 
    SUM(price) AS laptops_revenue
FROM
    products
WHERE
    product_name = 'Laptop';
    
-- AVG() -->  Calculates the mean (sum ÷ count).

-- Average products value
SELECT 
    AVG(price)
FROM
    products;
    
-- Average ordeers in 
SELECT 
    AVG(price)
FROM
    products
WHERE
    product_name = 'Mouse';
 
 
-- MAX() and MIN() --> "What's our most expensive product sold?", "What's the minimum subscription price we've ever charged?"
-- MAX() 
SELECT 
    MAX(price) AS highest_order
FROM
    products;
    
-- MIN()
SELECT 
    MIN(price) AS lowest_order
FROM
    products; 
    
-- BOTH TOGETHER
SELECT 
    MAX(price) AS highest_order,
    MIN(price) AS lowest_order,
    MAX(price) - MIN(price) AS range_between_orders
FROM
    products;
    
    
-- exercise........................

-- Count the total number of orders.
SELECT 
    COUNT(*)
FROM
    orders;
    
-- Find the total revenue from the "Clothing" category.
SELECT 
    SUM(price) AS Jacket_revenue
FROM
    products
WHERE
    product_name = 'Jacket';

-- Find the average order amount across all orders.
SELECT 
    AVG(price) AS average_order
FROM
    products;

-- Find the highest and lowest order amounts.
SELECT 
    MAX(price) AS Highest_amount, MIN(price) AS Lowest_amount
FROM
    products;
    
-- Write one query that shows total orders, total revenue, and average order value all at once. 
describe products;
 SELECT 
    COUNT(*),
    SUM(price * stock_quantity) AS total_revenue,
    AVG(price)
FROM
    products;
