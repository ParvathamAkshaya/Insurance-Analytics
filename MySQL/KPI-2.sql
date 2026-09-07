SELECT
SUM(Amount) AS CrossSell_Brokerage
FROM brokerage
WHERE income_class = 'Cross Sell';
SELECT
SUM(Amount) AS CrossSell_Fees
FROM fees
WHERE income_class = 'Cross Sell';
SELECT
SUM(`Cross sell Budget`) AS CrossSell_Budget
FROM individual_budget;
SELECT
ROUND(
(
(
SELECT SUM(Amount)
FROM brokerage
WHERE income_class = 'Cross Sell'
)
+
(
SELECT SUM(Amount)
FROM fees
WHERE income_class = 'Cross Sell'
)
)
*100
/
(
SELECT SUM(`Cross sell Budget`)
FROM individual_budget
),2
) AS Cross_Sell_Achievement_Percentage;