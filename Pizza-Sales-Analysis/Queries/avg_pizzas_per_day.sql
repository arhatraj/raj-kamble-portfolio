
-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    AVG(quantity)
FROM
    (SELECT 
        o.order_date, SUM(od.quantity) AS quantity
    FROM
        orders o
    JOIN order_details od ON o.order_id = od.order_id
    GROUP BY o.order_date) AS avg_order; 
