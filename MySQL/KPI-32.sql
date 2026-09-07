show columns from individual_budget;
SELECT
    b.branch_name,
    SUM(b.new_budget) AS budget,
    p.placed_revenue,
    i.invoiced_amount
FROM individual_budget b
JOIN
(
    SELECT branch_name,
           SUM(Amount) AS placed_revenue
    FROM
    (
        SELECT branch_name, Amount FROM brokerage
        UNION ALL
        SELECT branch_name, Amount FROM fees
    ) x
    GROUP BY branch_name
) p
ON b.branch_name = p.branch_name
JOIN
(
    SELECT branch_name,
           SUM(Amount) AS invoiced_amount
    FROM invoice
    GROUP BY branch_name
) i
ON b.branch_name = i.branch_name
GROUP BY b.branch_name, p.placed_revenue, i.invoiced_amount;

SELECT
    b.`ï»¿Branch`,
    SUM(b.`New Budget` + b.`Cross Sell Budget` + b.`Renewal Budget`) AS total_budget,
    p.placed_revenue
FROM individual_budget b
JOIN
(
    SELECT
        branch_name,
        SUM(Amount) AS placed_revenue
    FROM
    (
        SELECT branch_name, Amount FROM brokerage
        UNION ALL
        SELECT branch_name, Amount FROM fees
    ) x
    GROUP BY branch_name
) p
ON b.`ï»¿Branch` = p.branch_name
GROUP BY b.`ï»¿Branch`, p.placed_revenue;