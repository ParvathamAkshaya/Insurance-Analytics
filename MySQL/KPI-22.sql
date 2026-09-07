SELECT DISTINCT stage
FROM opportunity;

SELECT
    m.`Account Executive`,
    o.won_opportunities / m.total_meetings AS meeting_to_won_ratio
FROM
(
    SELECT `Account Executive`, COUNT(*) AS total_meetings
    FROM meeting
    GROUP BY `Account Executive`
) m
JOIN
(
    SELECT `Account Executive`, COUNT(*) AS won_opportunities
    FROM opportunity
    WHERE stage = 'Won'
    GROUP BY `Account Executive`
) o
ON m.`Account Executive` = o.`Account Executive`;