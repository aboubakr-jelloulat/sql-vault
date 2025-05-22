

SELECT 2 * 5;

SELECT 2 * 5 - 5 - 5	FROM Employees;

SELECT ID, FirstName , NEW_SALARY = MonthlySalary / 2 FROM Employees
	ORDER BY FirstName DESC;

SELECT ID, FirstName + ' ' + LastName as FullName From Employees;
	-- or 

SELECT ID, FullName = FirstName + ' ' + LastName From Employees;


SELECT ID, MonthlySalary, YearlySalary = MonthlySalary * 12 From Employees;


SELECT ID, MonthlySalary, YearlySalary = MonthlySalary * 12, BonusAmount = BonusPerc * MonthlySalary From Employees; 

select * from Employees;


SELECT ID, FirstName + ' ' + LastName as FullName, Age = DATEDIFF (Year, DateOfBirth, getDate()) From Employees;

Select getdate();

	-- between

Select ID, FirstName + ' ' + LastName as FullName, MonthlySalary from Employees where
	MonthlySalary >= 500 and MonthlySalary <= 1000;

	-- you can use 

Select ID, FirstName + ' ' + LastName as FullName, MonthlySalary from Employees where
	MonthlySalary between  500 and  1000;


SELECT 
    ID, 
    FirstName + ' ' + LastName AS FullName, 
    DATEDIFF(YEAR, DateOfBirth, GETDATE()) AS Age
FROM 
    Employees
WHERE 
    DATEDIFF(YEAR, DateOfBirth, GETDATE()) BETWEEN 20 AND 30
ORDER BY 
    FirstName DESC;

