use insurance_project;
describe brokerage;
describe fees;
describe individual_budget;
select * from brokerage limit 5;
select * from fees limit 5;
select * from individual_budget limit 5;
SELECT SUM(Amount) AS Brokerage_New_Revenue
FROM brokerage
WHERE income_class = 'New';
SELECT SUM(Amount) AS fees_New_Revenue
FROM fees
WHERE income_class = 'New';
SELECT SUM(`New Budget`) AS Total_New_Budget
FROM individual_budget;
SELECT
(
    (
        SELECT SUM(Amount)
        FROM brokerage
        WHERE income_class = 'New'
    )
    +
    (
        SELECT SUM(Amount)
        FROM fees
        WHERE income_class = 'New'
    )
)
/
(
    SELECT SUM(`New Budget`)
    FROM individual_budget
) * 100 AS New_Business_Achievement_Percentage;
SELECT
ROUND(
(
    (
        SELECT SUM(Amount)
        FROM brokerage
        WHERE income_class = 'New'
    )
    +
    (
        SELECT SUM(Amount)
        FROM fees
        WHERE income_class = 'New'
    )
)
/
(
    SELECT SUM(`New Budget`)
    FROM individual_budget
) * 100, 2) AS New_Business_Achievement_Percentage;
SELECT SUM(Amount) FROM brokerage WHERE income_class = 'New';
SELECT SUM(Amount) FROM fees WHERE income_class = 'New';
SELECT SUM(`New Budget`) FROM individual_budget;