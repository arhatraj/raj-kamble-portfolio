
-- Identify the highest-priced pizza.

SELECT 
    t.name, p.price AS highest_priced_pizza
FROM
    pizzas p
        JOIN
    pizza_types t ON p.pizza_type_id = t.pizza_type_id
ORDER BY price DESC
LIMIT 1;
