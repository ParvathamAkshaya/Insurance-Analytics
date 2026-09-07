SELECT
    branch,
    SUM(CASE WHEN stage='Won' THEN 1 ELSE 0 END) /
    COUNT(*) AS branch_conversion_ratio
FROM opportunity
GROUP BY branch;