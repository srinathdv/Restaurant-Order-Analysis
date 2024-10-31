USE restaurant_db;

-- 1.View the menu_items table.
SELECT *
FROM restaurant_db.menu_items;


-- 2.Write a query to find the number of items on the menu.
SELECT COUNT(menu_item_id) AS Number_of_items
FROM restaurant_db.menu_items;


-- 3.What are the least and most expensive items on the menu?
SELECT *
FROM restaurant_db.menu_items
ORDER BY price DESC;


-- 4.How many Italian dishes are on the menu?
SELECT COUNT(*) AS Italian_dishes
FROM restaurant_db.menu_items
WHERE category='Italian';


-- 5.What are the least and most expensive Italian dishes on the menu?
SELECT *
FROM restaurant_db.menu_items
WHERE category='Italian'
ORDER BY price DESC; -- ORDER BY PRICE-->To get Least_expensive dish on top


-- 6.How many dishes are in each category?
SELECT category,COUNT(*) AS No_ofdishes
FROM restaurant_db.menu_items
GROUP BY category;


-- 7.What is the average dish price within each category?
SELECT category,AVG(price)AS Avg_dish_price
FROM restaurant_db.menu_items
GROUP BY category;