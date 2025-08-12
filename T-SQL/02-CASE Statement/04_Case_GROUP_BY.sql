
use C21_DB1;




SELECT	
		
		[Performance Category],
		COUNT(*)	AS	[Number Of Employees],
		AVG(Salary) AS	[Average Salary]

FROM 
	(
		SELECT 
			Name, Department, Salary, [Performance Category] = 
				CASE
					WHEN PerformanceRating >= 80 THEN 'High'
					WHEN PerformanceRating >= 60 THEN 'Medium'
					ELSE 'Low'
				END 

		FROM Employees2

	) AS [Performance Table]   GROUP BY [Performance Category]


