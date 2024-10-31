USE restaurant_db;

-- 1.Combine the menu_items and order_details tables into a single table
SELECT *
FROM restaurant_db.order_details
LEFT JOIN restaurant_db.menu_items ON order_details.item_id = menu_items.menu_item_id;


-- 2.What were the least and most ordered items?What categories were they in?
SELECT item_name,category,COUNT(order_details_id) AS No_of_purchases
FROM restaurant_db.order_details
LEFT JOIN restaurant_db.menu_items ON order_details.item_id = menu_items.menu_item_id
GROUP BY item_name,category 
ORDER BY No_of_purchases DESC;
                

-- 3.What were the top 5 orders that spent the most money?
SELECT order_id,SUM(price) AS Total_spent
FROM restaurant_db.order_details
LEFT JOIN restaurant_db.menu_items ON order_details.item_id = menu_items.menu_item_id
GROUP BY order_id
ORDER BY Total_spent DESC
LIMIT 5;


-- 4.View the details of the highest spend order. Which specific items were purchased?
SELECT category,COUNT(item_id) AS No_of_items
FROM restaurant_db.order_details
LEFT JOIN restaurant_db.menu_items ON order_details.item_id = menu_items.menu_item_id
WHERE order_id =440
GROUP BY category;   -- Ordered more Italian Food

-- 5.View the details of the top 5 highest spend orders
SELECT order_id,category,COUNT(item_id) AS No_of_items
FROM restaurant_db.order_details
LEFT JOIN restaurant_db.menu_items ON order_details.item_id = menu_items.menu_item_id
WHERE order_id IN (440,2075,1957,330,2675)
GROUP BY order_id,category; -- Italian food ordered more
