-- select restaurant database
USE restaurant_db;

-- 1. View the order_details table.

SELECT *
FROM order_details;

-- 2. What is the date range of the table?

SELECT *
FROM order_details
ORDER BY order_date;

-- or 

SELECT
	MIN(order_date),
    MAX(order_date) 
FROM order_details;

-- 3. How many orders were made within the date range?

SELECT COUNT(DISTINCT order_id)
FROM order_details;

/*
The total number of orders are 5370 orders.
*/

-- 4. How many items were ordered within this date range?

SELECT COUNT(*)
FROM order_details;

/*
The total number of items ordered were 12234 items.
*/

-- 5. Which orders has the most number of items?

SELECT
	order_id,
    COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- 6. How many orders has more than 12 items?

SELECT COUNT(*) 
FROM
	(SELECT
		order_id,
		COUNT(item_id) AS num_items
	FROM order_details
	GROUP BY order_id
	HAVING num_items > 12) as num_orders;
    
/*
The total number of orders with more than 12 items is 20.
*/