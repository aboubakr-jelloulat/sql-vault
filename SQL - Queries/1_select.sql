Select * from Student;

Select Student.* from Student;

Select ID, FirstName, LastName  From Student;

Select ID, FirstName, DateOfBirth From Student;

Select * from Departments;

Select * from Countries;


-- The SQL SELECT DISTINCT Statement

-- The SELECT DISTINCT statement in SQL is used to return unique values from a column or a combination of columns in a table.
	-- It removes duplicate rows from the result set

SELECT DISTINCT name FROM students;
-- ✅ Only unique names are returned.
