WITH RankedOrders AS (
    SELECT
        order_id,
        customer_id,
        order_date,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id
            ORDER BY order_date DESC
        ) AS rn
    FROM Orders
)
SELECT
    order_id,
    customer_id,
    order_date
FROM RankedOrders
WHERE rn = 1;