-- Add new columns to the Students table

ALTER TABLE Students -- Replace 'Students' with your table name if different
	ADD Phone INT;

ALTER TABLE Students
	ADD Email NVARCHAR(20);

-- Rename a column: change 'Number' to 'Phone' in the Students table

EXEC sp_rename 'Students.Number', 'Phone', 'COLUMN';

-- Rename the table: change 'Students' to 'Employees'

EXEC sp_rename 'Students', 'Employees';

-- Modify a column: change 'Phone' to INT and make it NOT NULL

ALTER TABLE Students
	ALTER COLUMN Phone INT NOT NULL;

-- Delete a column: remove 'Email' from the Students table

ALTER TABLE Students
	DROP COLUMN Email;
