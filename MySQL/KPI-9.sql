SELECT
    SUM(revenue_amount) AS Open_Opportunity_Revenue
FROM opportunity
WHERE stage IN ('Qualify Opportunity','Propose Solution');