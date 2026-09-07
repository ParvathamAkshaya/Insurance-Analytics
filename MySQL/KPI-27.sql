SELECT
    `Account Executive`,
    policy_status,
    COUNT(*) AS policy_count
FROM dim_policy
GROUP BY `Account Executive`, policy_status;