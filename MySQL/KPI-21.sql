SELECT
    m.`Account Executive`,
    o.total_opportunities / m.total_meetings AS meeting_opportunity_ratio
FROM
(
    SELECT `Account Executive`, COUNT(*) AS total_meetings
    FROM meeting
    GROUP BY `Account Executive`
) m
JOIN
(
    SELECT `Account Executive`, COUNT(*) AS total_opportunities
    FROM opportunity
    GROUP BY `Account Executive`
) o
ON m.`Account Executive` = o.`Account Executive`;