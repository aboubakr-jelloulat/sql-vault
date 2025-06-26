
--   Problem 51: Get all employees that have manager along with Manager's name.


-- Get all employees that have manager along with Manager's name.
-- this will select all data from employees that are managed by someone along with their manager name,
-- employees that have no manager will not be selected because we used inner join
-- Note we used inner join on the same table with diffrent alliace.



select Employees.Name, Employees.ManagerID, Employees.Salary, Employees.ManagerID, Managers.Name as [Manager Name] from Employees

	inner join Employees As Managers ON Employees.ManagerID = Managers.ManagerID
