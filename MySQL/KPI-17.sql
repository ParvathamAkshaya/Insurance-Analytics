SELECT
    opportunity_id,
    `Account Exe ID`,
    `Account Executive`,
    branch,
    stage,
    revenue_amount
FROM opportunity
WHERE stage IN ('Qualify Opportunity', 'Propose Solution')
ORDER BY revenue_amount DESC
LIMIT 10;