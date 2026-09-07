
select * from invoice;
SELECT
    `Account Executive`,
    COUNT(*) AS total_invoices
FROM invoice
GROUP BY `Account Executive`;