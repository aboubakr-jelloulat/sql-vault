

USE C21_DB1

SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees2
GROUP BY Department;


SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees2
GROUP BY Department;



SELECT Department, AVG(PerformanceRating) AS AvgPerformanceRating
FROM Employees2
GROUP BY Department;



SELECT MIN(Salary) AS LowestSalary
FROM Employees2;



SELECT MAX(Salary) AS HighestSalary
FROM Employees2;




