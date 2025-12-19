-- Customer ranking by spend
SELECT
    c.customer_name,
    SUM(oi.quantity * p.price) AS total_spent,
    RANK() OVER (
        ORDER BY SUM(oi.quantity * p.price) DESC
    ) AS spend_rank
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.customer_name;

-- Monthly cumulative revenue
SELECT
    month_start,
    monthly_revenue,
    SUM(monthly_revenue) OVER (
        ORDER BY month_start
        ROWS UNBOUNDED PRECEDING
    ) AS cumulative_revenue
FROM (
    SELECT
        DATEFROMPARTS(YEAR(o.order_date), MONTH(o.order_date), 1) AS month_start,
        SUM(oi.quantity * p.price) AS monthly_revenue
    FROM Orders o
    JOIN OrderItems oi ON o.order_id = oi.order_id
    JOIN Products p ON oi.product_id = p.product_id
    GROUP BY DATEFROMPARTS(YEAR(o.order_date), MONTH(o.order_date), 1)
) t;