
-- Problem 53: Get all employees that have manager or does not have manager along with Managers
-- 	name, incase no manager name the same employee name as manager to himself


 select Employees.Name, Employees.ManagerID, Employees.Salary,

					CASE
							WHEN  Managers.Name is null THEN Employees.Name
							ELSE Managers.Name
					END	as [Managers Name]
		from Employees
		left join Employees as Managers ON Employees.ManagerID = Managers.EmployeeID



	