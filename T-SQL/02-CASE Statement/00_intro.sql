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





SELECT SaleId, SaleAmount,

	CASE 
		WHEN SaleAmount <= 100 THEN 'Weak'
		WHEN SaleAmount BETWEEN 101 AND 200 THEN 'Good'
		WHEN SaleAmount BETWEEN 201 AND 300 THEN 'Very Good'
		WHEN SaleAmount > 300 THEN 'Exellent'
		ELSE 'NOT SPECIFIED'

		END AS [Sale Level] 
FROM Sales
