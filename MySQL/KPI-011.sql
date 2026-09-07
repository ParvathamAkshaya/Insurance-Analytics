SELECT
    SUM(revenue_amount) AS Closed_Won_Revenue
FROM opportunity
WHERE stage = 'Won';

SELECT
    `Account Exe ID`,
    `Account Executive`,
    SUM(revenue_amount) AS Won_Revenue
FROM opportunity
WHERE stage = 'Won'
GROUP BY `Account Exe ID`, `Account Executive`
ORDER BY Won_Revenue DESC;

SELECT
    branch,
    SUM(revenue_amount) AS Won_Revenue
FROM opportunity
WHERE stage = 'Won'
GROUP BY branch
ORDER BY Won_Revenue DESC;