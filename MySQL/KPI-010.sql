SELECT
    COUNT(opportunity_id) AS Closed_Won_Count
FROM opportunity
WHERE stage = 'Won';

SELECT
    `Account Exe ID`,
    `Account Executive`,
    COUNT(opportunity_id) AS Won_Count
FROM opportunity
WHERE stage = 'Won'
GROUP BY `Account Exe ID`, `Account Executive`
ORDER BY Won_Count DESC;

SELECT
    branch,
    COUNT(opportunity_id) AS Won_Count
FROM opportunity
WHERE stage = 'Won'
GROUP BY branch
ORDER BY Won_Count DESC;