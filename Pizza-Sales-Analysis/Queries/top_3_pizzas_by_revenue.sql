
-- Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pt.name, SUM(o.quantity * p.price) AS revenue
FROM
    pizzas p
        JOIN
    pizza_types pt ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    order_details o ON p.pizza_id = o.pizza_id
GROUP BY pt.name
ORDER BY revenue DESC LIMIT 3;
