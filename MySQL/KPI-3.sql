SELECT
SUM(Amount) AS Renewal_Brokerage
FROM brokerage
WHERE income_class = 'Renewal';
SELECT
SUM(Amount) AS Renewal_Fees
FROM fees
WHERE income_class = 'Renewal';
SELECT
SUM(`Renewal Budget`) AS Renewal_Budget
FROM individual_budget;
SELECT
ROUND(
(
(
SELECT SUM(Amount)
FROM brokerage
WHERE income_class = 'Renewal'
)
+
(
SELECT SUM(Amount)
FROM fees
WHERE income_class = 'Renewal'
)
)
*100
/
(
SELECT SUM(`Renewal Budget`)
FROM individual_budget
),2
) AS Renewal_Achievement_Percentage;