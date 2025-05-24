-- A VIEW is a virtual table that is based on the result of a SELECT query.
-- It does not store the data itself but fetches it from the underlying tables.
-- Views are useful for:
-- 1. Simplifying complex queries.
-- 2. Improving security by restricting access to specific columns or rows.
-- 3. Presenting a consistent, logical representation of the data.

-- Create a view named 'ShortDetailEmployees' showing only selected columns from 'Employees' table
CREATE VIEW ShortDetailEmployees AS
SELECT ID, FirstName, LastName, Gendor FROM Employees;

-- Use the view just like a regular table to see the simplified employee details
SELECT * FROM ShortDetailEmployees;



-- Create a view named 'BasicStudentInfo' to show selected columns from 'Students' table
CREATE VIEW BasicStudentInfo AS
SELECT StudentID, FullName, Major FROM Students;

-- Use the view to get the basic student information
SELECT * FROM BasicStudentInfo;

