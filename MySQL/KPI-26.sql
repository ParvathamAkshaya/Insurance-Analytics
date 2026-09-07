SELECT
    branch_name,
    `Account Executive`,
    SUM(Amount) / COUNT(*) AS revenue_per_invoice
FROM invoice
GROUP BY branch_name, `Account Executive`;