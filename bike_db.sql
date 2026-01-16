CREATE DATABASE bike_db;
use bike_db;
select * from  products;

-- Show all products with price
SELECT product_name, list_price
FROM products;

-- Show products costing more than 1000
SELECT product_name, list_price
FROM products
WHERE list_price > 1000;

-- Count total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Show product with its brand
SELECT p.product_name, b.brand_name
FROM products p
JOIN brands b ON p.brand_id = b.brand_id;

-- Find average price of all products
SELECT AVG(list_price) AS avg_price
FROM products;


-- Total sales per order
SELECT order_id, SUM(quantity * list_price) AS total_sales
FROM order_items
GROUP BY order_id;

-- expensive products
SELECT product_name, list_price
FROM products
ORDER BY list_price DESC
LIMIT 5;

-- Total sales per order
SELECT order_id, SUM(quantity * list_price) AS total_sales
FROM order_items
GROUP BY order_id;


-- Total sales of all orders
SELECT SUM(quantity * list_price) AS total_sales
FROM order_items;



