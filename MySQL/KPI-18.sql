SELECT
    opportunity_id,
    `Account Exe ID`,
    `Account Executive`,
    branch,
    stage,
    revenue_amount
FROM opportunity
WHERE stage = 'Won'
ORDER BY revenue_amount DESC
LIMIT 10;