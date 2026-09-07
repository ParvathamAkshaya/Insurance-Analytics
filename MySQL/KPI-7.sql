SELECT
    branch_name,
    SUM(amount) AS Brokerage_Revenue
FROM brokerage
GROUP BY branch_name;
SELECT
    branch_name,
    SUM(amount) AS Fees_Revenue
FROM fees
GROUP BY branch_name;

SELECT
    branch_name,
    SUM(amount) AS Total_Revenue
FROM
(
    SELECT branch_name, amount FROM brokerage
    UNION ALL
    SELECT branch_name, amount FROM fees
) AS revenue
GROUP BY branch_name
ORDER BY Total_Revenue DESC;