-- CTE (Common Table Expression)
-- 1. Improves readability & maintainability (step-by-step logic).
-- 2. Avoids repeating the same subquery multiple times.
-- 3. Supports recursion (hierarchies, trees).
-- 4. Exists only during query execution (not stored permanently).
-- 5. Usually inlined by the optimizer (not materialized in memory).
-- 6. If referenced multiple times, may be re-executed (perf hit).
-- Use CTE for clarity or recursion, not for performance/storage.



USE C21_DB1;

GO

CREATE TABLE dbo.Ericsson_Employees
(
    EmployeeID	INT IDENTITY(1,1) PRIMARY KEY,
    Name		NVARCHAR(50),
    Sales	DECIMAL(10, 2),
	Department	NVARCHAR(50)
);

GO


INSERT INTO DBO.Ericsson_Employees(Name, Sales, Department) VALUES 

('Aboubakr jell', 50000, 'IT'),
('Sander Boss', 70000, 'IT'),
('John dev', 70000, 'HR'),
('DON Moie', 70000, 'Sales'),
('Vini perira', 60000, 'IT'),
('Hej Hej', 40000, 'Marketing'),
('Aybou atre', 60000, 'IT')



GO



-- SubQuery 


SELECT * FROM 
(
	SELECT EmployeeID, Name, Sales FROM dbo.Ericsson_Employees WHERE Department = 'IT'

)SalesStaff;

GO
-- CTE 

WITH SalesStaff AS
(
	SELECT EmployeeID, Name, Sales FROM dbo.Ericsson_Employees WHERE Department = 'IT'

)	SELECT * FROM SalesStaff; 



-- ex 2 :

SELECT * FROM 
(
	SELECT Department, SUM(Sales) AS [Total Sales] FROM dbo.Ericsson_Employees
		GROUP BY Department 

) DepartmentsSales;


GO

-- CTE

WITH DepartmentsSales AS 
(
	SELECT Department, SUM(Sales) AS [Total Sales] FROM dbo.Ericsson_Employees
		GROUP BY Department 

) SELECT * FROM DepartmentsSales ORDER BY [Total Sales] DESC;