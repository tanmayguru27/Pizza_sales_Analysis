-- --Retrieve the total number of orders placed.
select count(order_id)as toatl_orders from orders1;


-- Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(order_details1.quantity * pizzas.price),
            2) AS total_sales
FROM
    order_details1
        JOIN
    pizzas ON pizzas.pizza_id = order_details1.pizza_id
    
    
-- Identify the highest-priced pizza.
SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;

-- Identify the most common pizza size ordered.
SELECT 
    pizzas.size,
    COUNT(order_details1.order_details_id) AS order_count
FROM
    pizzas
        JOIN
    order_details1 ON pizzas.pizza_id = order_details1.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;

-- List the top 5 most ordered pizza types along with their quantities.
SELECT 
    pizza_types.name, SUM(order_details1.quantity) AS quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details1 ON order_details1.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY quantity DESC
LIMIT 5;



