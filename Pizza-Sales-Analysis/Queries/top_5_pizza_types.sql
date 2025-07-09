
-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    t.name, SUM(o.quantity) AS total_orders
FROM
    pizza_types t
        JOIN
    pizzas p ON t.pizza_type_id = p.pizza_type_id
        JOIN
    order_details o ON p.pizza_id = o.pizza_id
GROUP BY name
ORDER BY total_orders DESC
LIMIT 5;  
