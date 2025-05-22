-- ✅ ✅  ✅ Aggregate functions: COUNT, SUM, AVG, MIN, MAX  ✅ ✅ ✅ 

SELECT TotalCount  = COUNT(MonthlySalary),
       TotalSum    = SUM(MonthlySalary),
       Average     = AVG(MonthlySalary),
       MinSalary   = MIN(MonthlySalary),
       MaxSalary   = MAX(MonthlySalary)
FROM Employees;


SELECT TotalCount  = COUNT(MonthlySalary),
       TotalSum    = SUM(MonthlySalary),
       Average     = AVG(MonthlySalary),
       MinSalary   = MIN(MonthlySalary),
       MaxSalary   = MAX(MonthlySalary)
FROM Employees 
WHERE DepartmentID = 7;


SELECT TotalEmployees = COUNT(ID) 
FROM Employees;


-- ✅ ✅  ✅  COUNT only counts NOT NULL values  ✅ ✅ ✅

SELECT ResignedEmployees = COUNT(ExitDate) 
FROM Employees; 


SELECT ResignedEmployees = COUNT(ExitDate) 
FROM Employees
WHERE DATEDIFF(YEAR, DateOfBirth, GETDATE()) BETWEEN 50 AND 60;


-- GROUP BY is used to group rows with the same value in a column
-- Often used with aggregate functions: COUNT(), MAX(), MIN(), SUM(), AVG()

SELECT TotalCount  = COUNT(MonthlySalary),
       TotalSum    = SUM(MonthlySalary),
       Average     = AVG(MonthlySalary),
       MinSalary   = MIN(MonthlySalary),
       MaxSalary   = MAX(MonthlySalary)
FROM Employees 
WHERE DepartmentID = 1;


SELECT DepartmentID,
       TotalCount  = COUNT(MonthlySalary),
       TotalSum    = SUM(MonthlySalary),
       Average     = AVG(MonthlySalary),
       MinSalary   = MIN(MonthlySalary),
       MaxSalary   = MAX(MonthlySalary)
FROM Employees
GROUP BY DepartmentID
ORDER BY DepartmentID DESC;


-- The HAVING clause is used to filter groups (not rows)
-- WHERE is used before grouping; HAVING is used after grouping
-- HAVING works with aggregate functions like SUM(), AVG(), COUNT(), etc.

-- Difference between WHERE and HAVING:

-- 1. WHERE Clause:
--    - Filters rows before grouping or aggregation
--    - Can be used with any column (not necessarily an aggregate)
--    - Used in SELECT, UPDATE, DELETE

-- 2. HAVING Clause:
--    - Filters groups after aggregation (GROUP BY)
--    - Only used with aggregate functions

SELECT DepartmentID,
       TotalCount  = COUNT(MonthlySalary),
       TotalSum    = SUM(MonthlySalary),
       Average     = AVG(MonthlySalary),
       MinSalary   = MIN(MonthlySalary),
       MaxSalary   = MAX(MonthlySalary)
FROM Employees
GROUP BY DepartmentID
HAVING SUM(MonthlySalary) > 200000
ORDER BY DepartmentID;



-- Same solution without having  ✅ interview Question 
select * from 
(

   select DepartmentID, TotalCount=Count(MonthlySalary), 
	   TotalSum=Sum(MonthlySalary),
	   Average=Avg(MonthlySalary),
	   MinSalary=Min(MonthlySalary),
	   MaxSalary=Max(MonthlySalary) 
	   
	   from Employees
	
       Group By DepartmentID
	  
) R1

where R1.TotalCount> 200000;




