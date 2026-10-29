SELECT * FROM pizza_sales;

--Total Revenue
SELECT
	SUM(total_price) AS total_revenue
FROM pizza_sales;


--Average Order Value
SELECT
	SUM(total_price) / COUNT(DISTINCT order_id) AS average_order_value
FROM pizza_sales;


--Total Pizza Quantity
SELECT
	SUM(quantity) AS total_pizza_sold
FROM pizza_sales;


--Total Order Size
SELECT
	COUNT(DISTINCT order_id)
FROM pizza_sales;


--Average Pizza Per Order
SELECT
	CAST(
	CAST(SUM(quantity) AS DECIMAL (10,2)) / 
	CAST(count(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL (10,2))
FROM pizza_sales;


--Daily Trend for Total Orders
SELECT 
	DATENAME(DW, order_date) AS order_day,
	COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATENAME(DW, order_date);


--Monthly Trend for Total Orders
SELECT 
	DATENAME(MM, order_date) AS order_month,
	COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATENAME(MM, order_date)
ORDER BY total_orders DESC;


--Percentage of Sales by Pizza Category
SELECT 
	pizza_category,
	SUM(total_price) AS total_sales,
	(SUM(total_price) / (SELECT SUM(total_price) FROM pizza_sales )) * 100 AS pct
FROM pizza_sales
GROUP BY pizza_category
ORDER BY pct DESC;


--Percentage of Sales by Pizza Size
SELECT 
	pizza_size,
	SUM(total_price) AS total_sales,
	(SUM(total_price) / (SELECT SUM(total_price) FROM pizza_sales )) * 100 AS pct
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pct DESC;


--Top 5 Pizza by Revenue
SELECT TOP 5
	pizza_name,
	SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC;


--Bottem 5 Pizza by Revenue
SELECT TOP 5
	pizza_name,
	SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue ASC;


--Top 5 Pizza by Total Orders
SELECT TOP 5
	pizza_name,
	SUM(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders DESC;


--Bottom 5 Pizza by Total Orders
SELECT TOP 5
	pizza_name,
	SUM(quantity) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders ASC;


--Top 5 Pizza by Quantity
SELECT TOP 5
	pizza_name,
	SUM(Quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity DESC;


--Bottem 5 Pizza by Quantity
SELECT TOP 5
	pizza_name,
	SUM(Quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity ASC;