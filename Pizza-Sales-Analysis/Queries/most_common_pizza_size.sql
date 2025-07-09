
-- Identify the most common pizza size ordered.

SELECT 
    p.size, COUNT(*) AS common_size
FROM
    pizzas p
        JOIN
    order_details o ON p.pizza_id = o.pizza_id
GROUP BY p.size
LIMIT 1;
