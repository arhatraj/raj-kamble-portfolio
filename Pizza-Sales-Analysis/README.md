# 🍕 Pizza Sales Analysis

This SQL project analyzes a pizza sales database to answer key business questions using advanced SQL techniques such as **joins**, **aggregate functions**, **subqueries**, and **window functions**. Includes queries for total revenue, top pizza types, size trends, category-wise distribution, and more.

---


## 🧾 Database Schema Overview
Below are the tables and their key columns used in the project:

### 🧺 orders
| Column Name  | Data Type | Description             |
| ------------ | --------- | ----------------------- |
| `order_id`   | INT       | Unique order identifier |
| `order_date` | DATE      | Date of the order       |
| `order_time` | TIME      | Time of the order       |

### 🍕 pizzas
| Column Name     | Data Type | Description                   |
| --------------- | --------- | ----------------------------- |
| `pizza_id`      | TEXT      | Unique identifier for pizza   |
| `pizza_type_id` | TEXT      | Foreign key to `pizza_types`  |
| `size`          | TEXT      | Size of the pizza (S / M / L) |
| `price`         | DECIMAL   | Price of the pizza            |

### 🍕 pizza_types
| Column Name     | Data Type | Description                         |
| --------------- | --------- | ----------------------------------- |
| `pizza_type_id` | TEXT      | Unique identifier for pizza type    |
| `name`          | TEXT      | Name of the pizza                   |
| `category`      | TEXT      | Category (e.g., Classic, Veggie...) |
| `ingredients`   | TEXT      | Ingredients used in the pizza       |

### 🧾 order_details
| Column Name | Data Type | Description                                |
| ----------- | --------- | ------------------------------------------ |
| `order_id`  | INT       | Foreign key to `orders`                    |
| `pizza_id`  | TEXT      | Foreign key to `pizzas`                    |
| `quantity`  | INT       | Number of pizzas of that type in the order |

---

## 🧠 SQL Concepts Used

- Aggregate Functions: `SUM`, `AVG`, `COUNT`
- Joins: `INNER JOIN`
- Grouping: `GROUP BY`, `ORDER BY`
- Filtering: `WHERE`, `LIMIT`
- Date Functions: `HOUR()`
- Window Functions: `RANK()`, `OVER()`
- Subqueries
- CTEs (Common Table Expressions)

---

## 📊 Key Questions Answered

1. Total number of orders placed
2. Total revenue generated
3. Highest-priced pizza
4. Most common pizza size
5. Top 5 most ordered pizza types
6. Total quantity ordered by category
7. Distribution of orders by hour
8. Pizza count distribution by category
9. Average number of pizzas per day
10. Top 3 pizzas by revenue
11. Revenue percentage by pizza type
12. Cumulative revenue by date
13. Top 3 pizzas per category based on revenue
