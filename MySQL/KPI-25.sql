SELECT
    income_class,
    COUNT(*) AS invoice_count
FROM invoice
GROUP BY income_class;