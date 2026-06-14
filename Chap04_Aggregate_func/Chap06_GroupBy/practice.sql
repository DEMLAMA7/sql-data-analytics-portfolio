
-- SYNTAX	 
-- SELECT column_to_group_by, AGGREGATE_FUNCTION(column)
-- FROM table_name
-- GROUP BY column_to_group_by;  

-- Total revenue by product category
SELECT 
    product_name, SUM(price * stock_quantity) AS totatl_revenue
FROM
    products
GROUP BY product_name;
		
        
-- Q: How many orders did each customer place
SELECT 
    customer_id, COUNT(*) AS total_orders
FROM
    orders
GROUP BY customer_id;