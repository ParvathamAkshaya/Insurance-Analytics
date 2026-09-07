use insurance_project;
SELECT
    stage,
    SUM(revenue_amount) AS Stage_Revenue
FROM opportunity
GROUP BY stage
ORDER BY Stage_Revenue DESC;