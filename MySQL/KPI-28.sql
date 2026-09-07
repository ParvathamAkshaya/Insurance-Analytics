SELECT
ROUND(
    SUM(CASE
            WHEN `income_class` = 'Renewal'
             AND renewal_status = 'Renewal'
            THEN 1 ELSE 0
        END) * 100.0
    /
    SUM(CASE
            WHEN `income_class` = 'Renewal'
            THEN 1 ELSE 0
        END),2
) AS renewal_hit_rate
FROM brokerage;