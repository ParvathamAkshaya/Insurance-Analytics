SHOW COLUMNS FROM brokerage;
SELECT
    t.client_name,
    SUM(t.total_revenue) AS revenue_per_client
FROM
(
    SELECT `ï»¿client_name` AS client_name, Amount AS total_revenue
    FROM brokerage

    UNION ALL

    SELECT `ï»¿client_name` AS client_name, Amount AS total_revenue
    FROM fees
) t
GROUP BY t.client_name;