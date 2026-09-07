SELECT
    branch_name,
    `Account Exe ID`,
    income_class,
    SUM(amount) AS Brokerage_Total
FROM brokerage
GROUP BY
    branch_name,
    `Account Exe ID`,
    income_class;
    SELECT
    branch_name,
    `Account Exe ID`,
    income_class,
    SUM(amount) AS Fees_Total
FROM fees
GROUP BY
    branch_name,
    `Account Exe ID`,
    income_class;
    
    SELECT
    branch_name,
    `Account Exe ID`,
    income_class,
    SUM(amount) AS Total_Revenue_Placed
FROM
(
    SELECT
        branch_name,
        `Account Exe ID`,
        income_class,
        amount
    FROM brokerage

    UNION ALL

    SELECT
        branch_name,
        `Account Exe ID`,
        income_class,
        amount
    FROM fees
) AS revenue
GROUP BY
    branch_name,
    `Account Exe ID`,
    income_class;