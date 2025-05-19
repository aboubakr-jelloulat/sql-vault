-- DELETE Syntax
-- DELETE FROM table_name WHERE condition;

DELETE FROM Students
WHERE Gender IS NULL;

DELETE FROM Students
WHERE Login = 'methalla';

SELECT * FROM Students;
