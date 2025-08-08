
use C21_DB1;

go

-- Step 1: Declare variables

DECLARE @DepartementID	INT;
DECLARE @StartDate		DATE;
DECLARE @EndDate		DATE;
DECLare @TotalEmployees INT;
DECLARE @DepartmentName	NVARCHAR(50);

-- Step 2: Initialize variables

SET @DepartementID = 2;
SET @StartDate = '2023-01-01';
SET @EndDate = '2023-12-31';


-- Step 3: Retrieve department name based on department ID

SELECT @DepartmentName = NAME FROM Departments WHERE DepartmentID = @DepartementID;


-- Step 4: Calculate the total number of employees in the specified department


SELECT @TotalEmployees = COUNT(*) FROM Employees
	WHERE DepartmentID = @DepartementID
	AND HireDate BETWEEN @StartDate AND @EndDate;


-- Step 5: Print the report

PRINT 'Department Report : ';
PRINT 'Department Name: ' + @DepartmentName;
PRINT 'Reporting Period: ' + CAST(@StartDate AS VARCHAR) + ' To ' + CAST (@EndDate AS VARCHAR); -- Cast int to String
PRINT 'Total Employees Hired in ' + CAST (@StartDate AS VARCHAR) + ' : ' + CAST (@TotalEmployees AS VARCHAR); 
