USE restaurant_db;

-- 1.View the order_details table.
SELECT *
FROM restaurant_db.order_details;


-- 2.What is the date range of the table?
SELECT MIN(order_date)AS Start_date,MAX(order_date)AS End_date
FROM restaurant_db.order_details;


-- 3.How many orders were made within this date range?
SELECT COUNT(DISTINCT order_id) AS No_of_orders
FROM restaurant_db.order_details;


-- 4.How many items were ordered within this date range?
SELECT COUNT(item_id) AS No_of_items
FROM restaurant_db.order_details;


-- 5.Which orders had the most number of items?
SELECT order_id,COUNT(item_id) AS No_of_items
FROM restaurant_db.order_details
GROUP BY order_id
ORDER BY No_of_items DESC;


-- 6.How many orders had more than 12 items?
SELECT COUNT(*)AS 'Orders_with_items>12'
FROM 
			(SELECT order_id,COUNT(item_id) AS No_of_items
				FROM restaurant_db.order_details
				GROUP BY order_id
				HAVING No_of_items > 12) AS No_of_orders;