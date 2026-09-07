SELECT
    branch_name,
    SUM(Amount) / COUNT(DISTINCT `Account Exe ID`) AS headcount_productivity
FROM
(
    SELECT branch_name, Amount, `Account Exe ID` FROM brokerage
    UNION ALL
    SELECT branch_name, Amount, `Account Exe ID` FROM fees
) t
GROUP BY branch_name;