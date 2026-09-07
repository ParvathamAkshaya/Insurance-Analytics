SELECT
    COUNT(opportunity_id) AS Total_Opportunities
FROM opportunity;

SELECT
ROUND(
(
SELECT COUNT(opportunity_id)
FROM opportunity
WHERE stage='Won'
)
*100/
(
SELECT COUNT(opportunity_id)
FROM opportunity
),2
) AS Conversion_Ratio;