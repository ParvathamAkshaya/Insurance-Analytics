SELECT
income_class,
SUM(amount) AS Invoice_Amount
FROM invoice
GROUP BY income_class;
SELECT SUM(`New Budget`) AS New_Budget
FROM individual_budget;
SELECT SUM(`Cross sell Budget`) AS CrossSell_Budget
FROM individual_budget;
SELECT SUM(`Renewal Budget`) AS Renewal_Budget
FROM individual_budget;

SELECT
ROUND(
(
SELECT SUM(amount)
FROM invoice
WHERE income_class='New'
)
*100/
(
SELECT SUM(`New Budget`)
FROM individual_budget
),2
) AS New_Invoice_Achievement;
SELECT
ROUND(
(
SELECT SUM(amount)
FROM invoice
WHERE income_class='Cross Sell'
)
*100/
(
SELECT SUM(`Cross sell Budget`)
FROM individual_budget
),2
) AS CrossSell_Invoice_Achievement;

SELECT
ROUND(
(
SELECT SUM(amount)
FROM invoice
WHERE income_class='Renewal'
)
*100/
(
SELECT SUM(`Renewal Budget`)
FROM individual_budget
),2
) AS Renewal_Invoice_Achievement;