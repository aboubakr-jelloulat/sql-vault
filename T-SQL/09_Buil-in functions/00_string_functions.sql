USE C21_DB1;


SELECT * FROM Employees

use C21_DB1;

-- String Functions

SELECT * FROM Employees


SELECT LEN(Name) AS NameLength FROM dbo.Employees
GO


SELECT UPPER(Name) AS [Upper Case Name] FROM dbo.Employees
GO


SELECT LOWER(Name) AS [Lower Case Name] FROM dbo.Employees
GO

-- Extracting the first three characters of each name using SUBSTRING
SELECT SUBSTRING(Name, 1, 3) AS NameSubstring FROM dbo.Employees
GO


-- Finding the position of '0' in each name using CHARINDEX
SELECT CHARINDEX('o', Name) AS [Char Position] FROM dbo.Employees
GO

-- Replacing 'Sales' with 'Marketing' in department names using REPLACE
SELECT REPLACE(Department, 'Sales', 'Marketing') AS NewDepartment FROM dbo.Employees2
GO

-- Concatenating the name and department with a hyphen in between using CONCAT
SELECT CONCAT(Name, ' Work in :  ', Department) AS [Concatenated String] FROM dbo.Employees2
GO



SELECT CONCAT(UPPER(Name), ' Work in : ', LOWER(Department)) AS [Formatted Output] FROM dbo.Employees2
GO

-- Extracting the first 3 characters from the left side of the employee's name using LEFT
SELECT LEFT(Name, 3) AS LeftSubstring FROM dbo.Employees
GO

-- Extracting the last 3 characters from the right side of the employee's name using RIGHT
SELECT RIGHT(Name, 5) AS RightSubstring FROM dbo.Employees2
GO

-- Removing leading spaces from the employee's name using LTRIM
SELECT LTRIM(Name) AS NameWithNoLeadingSpaces FROM dbo.Employees
GO

-- Removing trailing spaces from the employee's name using RTRIM
SELECT RTRIM(Name) AS NameWithNoTrailingSpaces FROM dbo.Employees
GO


-- Removing spaces from the start and end of each name using LTRIM and RTRIM
SELECT LTRIM(RTRIM(Name)) AS TrimmedName FROM dbo.Employees
GO

-- Removing both leading and trailing spaces from the employee's name using TRIM
SELECT TRIM(Name) AS NameWithNoSpaces FROM dbo.Employees
GO


