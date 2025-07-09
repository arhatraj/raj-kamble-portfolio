
-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    t.category, SUM(o.quantity) AS total_orders
FROM
    pizza_types t
        JOIN
    pizzas p ON t.pizza_type_id = p.pizza_type_id
        JOIN
    order_details o ON p.pizza_id = o.pizza_id
GROUP BY category
ORDER BY total_orders DESC
LIMIT 5; 
