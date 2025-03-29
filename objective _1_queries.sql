-- select restaurant database
USE restaurant_db;

-- 1. View the menu_tems tables.

SELECT * 
FROM menu_items;

-- 2. Find the number of items on the table.

SELECT COUNT(*)
FROM menu_items;

-- 3. What are the least and most expensive items on the menu?

SELECT * 
FROM menu_items
ORDER BY price ASC;

SELECT * 
FROM menu_items
ORDER BY price DESC;

/*
- Least expensive is Edumame in the Asian category.
- The most expensive menu item is Shrimp Scampi in the Italian cateogry.
*/

-- 4. How many italian dishes are on the menu?

SELECT COUNT(*)
FROM menu_items
WHERE category = 'Italian';

/*
- There a 9 items in the Italian cateogry.
*/

-- 5. What are the least and most expensive Italian dishes on the menu?

SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price ASC;

SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

/*
- Least expensive Italian dish is the Spaghetti.
- The most expensive Italian dish is the Shrimp.
*/

-- 6. How many dishes are in each category?

SELECT
	category,
	COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

/*
The number of dishes are American = 6 , Asian = 8m Mexican = 9 and Italian = 9
*/

-- 7. What is the averange dish price within each category?

SELECT
	category,
	AVG(price) AS avg_price
FROM menu_items
GROUP BY category;

