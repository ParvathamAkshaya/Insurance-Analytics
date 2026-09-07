SELECT
    COUNT(opportunity_id) AS Closed_Lost_Count
FROM opportunity
WHERE stage = 'Lost';

SELECT
    `Account Exe ID`,
    `Account Executive`,
    COUNT(opportunity_id) AS Lost_Count
FROM opportunity
WHERE stage = 'Lost'
GROUP BY `Account Exe ID`, `Account Executive`
ORDER BY Lost_Count DESC;

SELECT
    branch,
    COUNT(opportunity_id) AS Lost_Count
FROM opportunity
WHERE stage = 'Lost'
GROUP BY branch
ORDER BY Lost_Count DESC;