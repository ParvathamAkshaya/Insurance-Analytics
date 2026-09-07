SELECT
    branch_name,
    COUNT(*) / COUNT(DISTINCT `Account Executive`) AS meeting_intensity
FROM meeting
GROUP BY branch_name;