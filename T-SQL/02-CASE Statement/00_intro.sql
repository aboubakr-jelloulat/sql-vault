use C21_DB1;

select * from Employees

select  EmployeeID,

	CASE DepartmentID
		WHEN 1 THEN 'Engineering'
		WHEN 2 THEN 'HR'
		WHEN 3 THEN 'Sales'
		ELSE        'Other'
	END   AS [Department Name]

From Employees

