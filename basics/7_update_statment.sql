-- UPDATE Statement

-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

UPDATE Students
SET Login = 'ajelloul', scholarship = 5000
WHERE Login = 'oldlogin';

UPDATE Students
SET scholarship = scholarship + 1000
WHERE scholarship <= 500;

SELECT * FROM Students;

-- Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. The WHERE clause specifies which record(s) that should be updated. 
-- If you omit the WHERE clause, all records in the table will be updated!
