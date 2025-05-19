-- In SQL, we can copy data from one database table to a new table using the SELECT INTO command. For example :

SELECT *
INTO Students_Copy
FROM Students;

SELECT * FROM Students;


-- The syntax of the SQL INSERT INTO SELECT statement is:

-- INSERT INTO destination_table (column1, column2, column3, ...)
-- SELECT column1, column2, column3, ...
-- FROM source_table;

-- Here, the SQL command copies all data from the Students table to the new Students_Copy table.

-- Note: The SELECT INTO statement creates a new table. 
-- If the database already has a table with the same name, SELECT INTO gives an error.


-- Copy a specific column : Copy Selected Columns Only
SELECT Login, Email
INTO Students_Copy2
FROM Students;

SELECT * FROM Students_Copy2;


-- Copy schema without data  -- trick

SELECT * 
INTO Student_table
FROM Students
WHERE 5 = 6;  -- 5 = 6 is always false, so no data is copied; only the structure
