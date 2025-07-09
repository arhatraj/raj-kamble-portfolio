
-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pt.category,
    ROUND(SUM(o.quantity * p.price) / (SELECT 
            ROUND(SUM(o.quantity * p.price), 2) AS total_sales
        FROM
            pizzas p
                JOIN
            pizza_types pt ON pt.pizza_type_id = p.pizza_type_id
                JOIN
            order_details o ON p.pizza_id = o.pizza_id) * 100,2) AS revenue
FROM
    pizza_types pt
        JOIN
    pizzas p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    order_details o ON p.pizza_id = o.pizza_id
GROUP BY category;
