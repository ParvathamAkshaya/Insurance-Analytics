SELECT
SUM(`New Budget`)
+ SUM(`Cross sell Budget`)
+ SUM(`Renewal Budget`) AS Total_Budget
FROM individual_budget;

SELECT
SUM(amount) AS Total_Placed_Revenue
FROM
(
    SELECT amount
    FROM brokerage

    UNION ALL

    SELECT amount
    FROM fees
) AS revenue;

SELECT
ROUND(
(
SELECT SUM(revenue_amount)
FROM opportunity
WHERE stage IN ('Qualify Opportunity','Propose Solution')
)
/
(
(
SELECT
SUM(`New Budget`)
+ SUM(`Cross sell Budget`)
+ SUM(`Renewal Budget`)
FROM individual_budget
)
-
(
SELECT
SUM(amount)
FROM
(
SELECT amount FROM brokerage
UNION ALL
SELECT amount FROM fees
) AS revenue
)
)
,2
) AS Pipeline_Coverage_Ratio;