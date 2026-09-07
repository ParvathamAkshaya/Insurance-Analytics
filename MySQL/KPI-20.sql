SELECT
    `Account Executive`,
    COUNT(*) AS 'meetings per exec'
FROM meeting
GROUP BY `Account Executive`;