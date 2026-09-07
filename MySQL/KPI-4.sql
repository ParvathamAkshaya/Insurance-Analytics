use insurance_project;
SELECT
    `Account Exe ID`,
    income_class,
    SUM(amount) AS Brokerage_Total
FROM brokerage
GROUP BY `Account Exe ID`, income_class;
SELECT
    `Account Exe ID`,
    income_class,
    SUM(amount) AS Fees_Total
FROM fees
GROUP BY `Account Exe ID`, income_class;
SELECT
    `Account Exe ID`,
    income_class,
    SUM(amount) AS invoice_Total
FROM invoice
GROUP BY `Account Exe ID`, income_class;
SELECT
    `Account Exe ID`,
    income_class,
    SUM(amount) AS Total_Revenue
FROM
(
    SELECT `Account Exe ID`, income_class, amount
    FROM brokerage

    UNION ALL

    SELECT `Account Exe ID`, income_class, amount
    FROM fees
) AS revenue
GROUP BY `Account Exe ID`, income_class;

SELECT
    r.`Account Exe ID`,
    r.income_class,
    r.Total_Revenue,
    IFNULL(i.Invoice_Total, 0) AS Invoice_Total,
    r.Total_Revenue - IFNULL(i.Invoice_Total, 0) AS Cash_Flow_Risk
FROM
(
    SELECT
        `Account Exe ID`,
        income_class,
        SUM(amount) AS Total_Revenue
    FROM
    (
        SELECT `Account Exe ID`, income_class, amount FROM brokerage
        UNION ALL
        SELECT `Account Exe ID`, income_class, amount FROM fees
    ) AS revenue
    GROUP BY `Account Exe ID`, income_class
) r
LEFT JOIN
(
    SELECT
        `Account Exe ID`,
        income_class,
        SUM(amount) AS Invoice_Total
    FROM invoice
    GROUP BY `Account Exe ID`, income_class
) i
ON r.`Account Exe ID` = i.`Account Exe ID`
AND r.income_class = i.income_class;