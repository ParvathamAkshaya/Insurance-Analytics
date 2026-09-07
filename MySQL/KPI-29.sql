SELECT
    d.Segment,
    SUM(i.Amount) AS total_revenue
FROM invoice i
JOIN dim_client d
ON i.`Client Name` = d.`Client Name`
GROUP BY d.Segment;