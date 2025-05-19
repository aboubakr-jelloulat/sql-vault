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


-- Copy all columns from one table to another table:

INSERT INTO table2
SELECT * FROM table1
WHERE Salary >= 1000;

-- Copy only some columns from one table into another table:

INSERT INTO table2 (column1, column2, column3)
SELECT column1, column2, column3
FROM table1
WHERE age >= 30;


---------


--The INSERT INTO SELECT statement is used to copy records from one table to another existing table. For example,

INSERT INTO new_table
SELECT *
FROM OldTable;

-- Here, the SQL command copies all records from the old_table  to the new_table table.

-- Note: To run this command,

-- the database must already have a table named new_table
-- the column names of the Old_table t and the old_table  must match

-- ✅ Create a new table with the right structure
CREATE TABLE new_table (
    Login nvarchar(10) PRIMARY KEY NOT NULL,
    Level float NOT NULL,
    scholarship smallmoney NULL,
    Gender char(1) NULL,
    Phone INT NOT NULL,
    Email nvarchar(30) NULL
);

-- ✅ View the (initially empty) new table
SELECT * FROM new_table;

-- ✅ Insert selected rows from the Students table
INSERT INTO new_table (Login, Level, scholarship, Gender, Phone, Email)
SELECT Login, Level, scholarship, Gender, Phone, Email
FROM Students
WHERE scholarship >= 500;

-- ✅ View new_table with inserted data
SELECT * FROM new_table;
