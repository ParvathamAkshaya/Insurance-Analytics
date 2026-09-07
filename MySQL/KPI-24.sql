SELECT
    `Account Executive`,
    income_class,
    SUM(Amount) / COUNT(*) AS avg_invoice_value
FROM invoice
GROUP BY `Account Executive`, income_class;