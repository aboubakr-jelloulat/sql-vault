-- AND + OR

Select * from Employees
	Where Gendor = 'F';  -- female employees

Select * from Employees
	Where MonthlySalary <= 500;  -- low salary

Select * from Employees 
	Where not MonthlySalary <= 500;  -- salary > 500

Select * From Employees
	Where MonthlySalary >= 500 and Gendor = 'F';  -- female with salary >= 500

Select * From Employees
	Where CountryID <> 1;  -- not equal to 1 (<> == !=)

Select * From Employees
	Where CountryID = 1 and MonthlySalary >= 500;  -- country = 1 and salary >= 500

Select * From Employees
	Where CountryID = 1 or MonthlySalary >= 100000;  -- either condition is true

Select * From Employees
	Where ExitDate is null;   -- still working

Select * From Employees 
	Where ExitDate is not null; -- already left

-- IN

Select * from Employees
	Where CountryID = 1 or CountryID = 2 or CountryID = 3 or CountryID = 4;

-- Better way using IN

Select * from Employees
	Where CountryID in (1, 2, 3, 4);

Select * from Employees
	Where FirstName in ('Miles') and LastName in ('Liu');  -- specific full name

Select Departments.Name from Departments
	Where 
		ID in (Select DepartmentID from Employees where MonthlySalary <= 500);  
-- return department names that have employees with salary <= 500

Select Departments.Name from Departments
	Where 
		ID not in (Select DepartmentID from Employees where MonthlySalary <= 200);  
-- return department names with no employees earning <= 200
