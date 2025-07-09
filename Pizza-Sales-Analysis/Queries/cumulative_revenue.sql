
-- Analyze the cumulative revenue generated over time.

SELECT 
	order_date, SUM(revenue) OVER (ORDER BY order_date) AS cumulative_revenue 
FROM 
	(SELECT o.order_date, SUM(od.quantity * p.price) AS revenue 
FROM 
	order_details od 
JOIN 
	pizzas p ON od.pizza_id = p.pizza_id 
JOIN 
	orders o ON od.order_id = o.order_id 
GROUP BY 
	o.order_date) AS sales;
