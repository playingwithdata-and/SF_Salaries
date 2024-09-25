-- use data_new
-- 1	Show all columns and rows in the table.

SELECT * FROM Salaries;


-- 2	Show only the EmployeeName and JobTitle columns.
SELECT EmployeeName, JobTitle
FROM Salaries;


-- 3	Show the number of employees in the table.
SELECT COUNT(*)
FROM Salaries;

-- 4	Show the unique job titles in the table.
SELECT distinct JobTitle
FROM Salaries;


-- 5	Show the job title and overtime pay for all employees with 
-- overtime pay greater than 50000.
SELECT JobTitle, OvertimePay
FROM Salaries
WHERE	OvertimePay > 50000;

-- 6	Show the average base pay for all employees.
SELECT avg(basepay)
FROM Salaries;


-- 7	Show the top 10 highest paid employees.
SELECT EmployeeName, TotalPay
FROM Salaries
ORDER BY TotalPay DESC
OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY;


-- 8	Show the average of BasePay, OvertimePay, and OtherPay for each employee:
SELECT EmployeeName, AVG(BasePay) AS AVG_BasePay, AVG(OvertimePay) AS AVG_OvertimePay, AVG(OtherPay) AS AVG_OtherPay
FROM Salaries
GROUP BY EmployeeName;

-- 9	Show all employees who have the word "Manager" in their job title.
SELECT EmployeeName, JobTitle
FROM Salaries
WHERE JobTitle LIKE '%Manager%';


-- 10	Show all employees with a job title not equal to "Manager".
SELECT EmployeeName, JobTitle
FROM Salaries
WHERE JobTitle <> 'Manager';


-- 11	Show all employees with a total pay between 50,000 and 75,000.
SELECT *
FROM Salaries
WHERE TotalPay BETWEEN 50000 AND 75000;

-- 12	Show all employees with a base pay less than 50,000 
-- or a total pay greater than 100,000.
SELECT *
FROM Salaries
WHERE BasePay < 50000 AND TotalPay > 100000


-- 13	Show all employees with a total pay benefits value 
-- between 125,000 and 150,000 and a job title containing the word "Director".
SELECT *
FROM Salaries
WHERE TotalPayBenefits BETWEEN 125000 AND 150000 
AND JobTitle LIKE '%Director%';


-- 14	Show all employees ordered by their total pay benefits in descending order.
SELECT *
FROM Salaries
ORDER BY TotalPayBenefits DESC;


-- 15	Show all job titles with an average base pay of 
-- at least 100,000 and order them by the average base pay in descending order.
SELECT JobTitle, AVG(BasePay) AS  AVG_BasePay
FROM Salaries
GROUP BY JobTitle
HAVING AVG(BasePay) > 100000
ORDER BY AVG(BasePay) DESC;


-- 16	Update the base pay of all employees with 
-- the job title containing "Manager" by increasing it by 10%.
UPDATE salaries
SET BasePay = BasePay * 1.1
WHERE JobTitle LIKE '%Manager%';

SELECT *
FROM Salaries;

