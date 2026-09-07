SELECT DISTINCT stage
FROM opportunity;

SELECT
    `Account Exe ID`,
    `Account Executive`,
    branch,
    COUNT(opportunity_id) AS Open_Opportunity_Count
FROM opportunity
WHERE stage IN ('Qualify Opportunity', 'Propose Solution')
GROUP BY
    `Account Exe ID`,
    `Account Executive`,
    branch
ORDER BY Open_Opportunity_Count DESC;