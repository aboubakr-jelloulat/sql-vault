-- 		✅   ✅    ✅  Exists

-- In SQL, the EXISTS keyword is used to test for the existence of any record in a subquery. It returns TRUE if the subquery returns at least one row, and FALSE if it returns no rows

SELECT name
FROM Students s
WHERE EXISTS (
    SELECT 1
    FROM Enrollments e
    WHERE e.student_id = s.student_id
);



SELECT name
FROM Students s
WHERE NOT EXISTS (
    SELECT 1
    FROM Enrollments e
    WHERE e.student_id = s.student_id
);


/*	✅	✅  ✅   ✅	UNION	✅   ✅   ✅  ✅ 	*/

-- The UNION operator is used to combine the result-set of two or more SELECT statements.

-- 	Every SELECT statement within UNION must have the same number of columns
-- 	The columns must also have similar data types
-- 	The columns in every SELECT statement must also be in the same order


select * from ActiveEmployees

select * from ResignedEmployees


select * from ActiveEmployees
Union
select * from ResignedEmployees

-- 🆘 Note: The column names in the result-set are usually equal to the column names in the first SELECT statement


--this will remove the redundancy from the resultset (distinct results only)
select * from Departments
union 
select * from Departments;

--this will append data regardeless of any redundancy
select * from Departments
union ALL
select * from Departments;






-- ✅  ✅   ✅   ✅ CASE Expression   ✅   ✅   ✅ ✅ 

-- Select employee ID, first and last name, and translate Gendor into a readable title
SELECT ID, FirstName, LastName, 
	GendorTitle = 
		CASE 
			WHEN Gendor = 'M' THEN 'Male'      -- If gender is 'M', label as Male
			WHEN Gendor = 'F' THEN 'Female'    -- If gender is 'F', label as Female
			ELSE 'Unknown'                     -- Any other case (e.g., NULL), label as Unknown
		END
FROM Employees;


-- Select employee details including job status based on ExitDate
SELECT ID, FirstName, LastName, 
	GendorTitle = 
		CASE 
			WHEN Gendor = 'M' THEN 'Male' 
			WHEN Gendor = 'F' THEN 'Female'
			ELSE 'Unknown'
		END,
	job_status = 
		CASE
			WHEN ExitDate IS NULL THEN 'Active'     -- If ExitDate is NULL, employee is still active
			WHEN Gendor IS NOT NULL THEN 'RESIGNED' -- If ExitDate is not null and gender exists, mark as resigned
		END
FROM Employees;


-- Create a view to encapsulate gender title and job status logic
CREATE VIEW CheckismaleAndjobStatus AS
SELECT ID, FirstName, LastName, 
	GendorTitle = 
		CASE 
			WHEN Gendor = 'M' THEN 'Male' 
			WHEN Gendor = 'F' THEN 'Female'
			ELSE 'Unknown'
		END,
	job_status = 
		CASE
			WHEN ExitDate IS NULL THEN 'Active'
			WHEN Gendor IS NOT NULL THEN 'RESIGNED'
		END
FROM Employees;


-- Retrieve data from the newly created view
SELECT * FROM CheckismaleAndjobStatus;


-- Calculate new salary based on gender with bonus:
--  Female: 20% raise, Male: 50% raise
SELECT ID, 
	FullName = FirstName + LastName,              -- Concatenate first and last names as FullName
	MonthlySalary, 
	NewSalary = 
		CASE 
			WHEN Gendor = 'F' THEN MonthlySalary * 1.2  -- 20% raise for females
			WHEN Gendor = 'M' THEN MonthlySalary * 1.5  -- 50% raise for males
		END
FROM Employees;
