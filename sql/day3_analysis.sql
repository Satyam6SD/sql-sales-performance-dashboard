--What is the total revenue generated from each customer?
SELECT 
    c.customer_name,
    SUM(p.amount) AS total_revenue
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name;
--What is the total revenue generated from each city?
SELECT 
    c.city,
    SUM(p.amount) AS city_revenue
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.city;
--Who are our top customers?
SELECT 
    c.customer_name,
    SUM(p.amount) AS total_revenue
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_revenue DESC;
--Who are our repeat customers?
SELECT 
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1;
--revenue by  customer?
SELECT c.customer_name, SUM(p.amount) AS total_revenue
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name;
--revenue by city
SELECT c.city, SUM(p.amount) AS city_revenue
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.city;
--repeat customers
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1;
