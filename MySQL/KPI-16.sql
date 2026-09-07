SELECT
ROUND(
SUM(revenue_amount) / COUNT(opportunity_id),
2
) AS Average_Deal_Size
FROM opportunity;