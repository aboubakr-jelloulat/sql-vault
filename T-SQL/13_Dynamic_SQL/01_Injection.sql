


-- 🛑 What is SQL Injection?

--         SQL Injection is a hacking technique where an attacker injects malicious SQL code into your query string.

--         This happens when you build SQL with string concatenation (like your @SQL).

--         The attacker can change the meaning of the query, often to bypass security or read/change data they shouldn’t.






use C21_DB1;


DECLARE @SQL NVARCHAR(MAX);


-- Injected query

--SET @SQL = 'SELECT * FROM Employees WHERE EmployeeID = 6 or 1 = 1';   -- 1 = 1 always true 


-- Safe query (normal use)
SET @SQL = 'SELECT * FROM Employees WHERE EmployeeID = 6';

PRINT @SQL

EXECUTE (@SQL)



-- ✅ How to Prevent SQL Injection


DECLARE @SQL NVARCHAR(MAX);
SET @SQL = 'SELECT * FROM Employees WHERE EmployeeID = @EmpID';

EXEC sp_executesql @SQL, N'@EmpID INT', @EmpID = 6;