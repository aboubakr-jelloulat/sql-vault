
-- ✅   ✅    ✅  SQL DEFAULT Constraint  ✅   ✅    ✅ 

-- The DEFAULT constraint is used to set a default value for a column.

-- The default value will be added to all new records, if no other value is specified


CREATE TABLE Persons
(
    ID INT NOT NULL,                                 -- ID is required
    FirstName NVARCHAR(50) NOT NULL,                 -- FirstName is required
    LastName NVARCHAR(50),                           -- LastName is optional
    Age INT,                                          -- Age is optional
    City NVARCHAR(50) DEFAULT 'FES'                  -- If no value is given, 'FES' will be used
);


-- Explanation:
-- The DEFAULT constraint is used to provide a default value for a column.
-- In this case, if 'City' is not specified during INSERT, it will automatically be 'FES'.

-- View data in Persons table
SELECT * FROM Persons;


-- Create a table called 'Employees'
CREATE TABLE Employees
(
    ID INT NOT NULL,                                  -- ID is required
    Name NVARCHAR(50) NOT NULL,                       -- Name is required
    StartDate DATE DEFAULT GETDATE(),                 -- Default value is current date
    City VARCHAR(20)                                  -- City will get a default later using ALTER TABLE
);
GO

-- Explanation:
-- GETDATE() is a SQL Server function that returns the current date and time.
-- Here, it is used as a default for the StartDate column.

-- Add a DEFAULT constraint to the 'City' column
ALTER TABLE Employees
    ADD CONSTRAINT df_City DEFAULT 'FEZ' FOR City;
GO

-- Explanation:
-- This statement adds a named default constraint ('df_City') to the 'City' column of Employees table.
-- Now, if you insert an employee without specifying a city, 'FEZ' will be used by default.



--   ✅  ✅  ✅ SQL CHECK Constraint   ✅   ✅  ✅



-- Create a table 'Students' with a CHECK constraint on Age
CREATE TABLE Students
(
    ID INT NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    City NVARCHAR(50),
    
    Age INT CHECK (Age >= 18) -- Age must be 18 or older
);


-- Explanation:
-- CHECK (Age >= 18) ensures that only students aged 18 or older can be inserted.

SELECT * FROM Students;



DROP TABLE Students;


-- Create a table 'Employees' with a named CHECK constraint
CREATE TABLE Employees
(
    ID INT NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Country NVARCHAR(50),
    Age INT,

    CONSTRAINT CHK_valid CHECK (Age >= 18 AND Country = 'Morocco')
);
GO

-- Explanation:
-- CHK_valid is a named constraint.
-- It only allows rows where Age is 18 or more AND Country is exactly 'Morocco'.

-- Drop the named constraint from Employees table
ALTER TABLE Employees
    DROP CONSTRAINT CHK_valid;


-- Explanation:
-- This command removes the CHK_valid constraint from the Employees table.

-- View contents of Employees table
SELECT * FROM Employees;



--   ✅  ✅ ✅ ✅   SQL UNIQUE Constraint   ✅ ✅ ✅ ✅ 

-- The UNIQUE constraint ensures that all values in a column are different
-- A PRIMARY KEY constraint automatically has a UNIQUE constraint
-- However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY


-- 1️⃣ Create the 'Persons' table with a UNIQUE constraint on the 'ID' column directly
CREATE TABLE Persons (
    ID INT NOT NULL UNIQUE,                    -- 'ID' must be unique and cannot be NULL
    LastName VARCHAR(255) NOT NULL,            -- Required field
    FirstName VARCHAR(255),                    -- Optional field
    Age INT                                    -- Optional field
);


-- Explanation:
-- The 'UNIQUE' keyword ensures that the 'ID' column values are all different.
-- So you cannot insert two rows with the same ID.

-- 2️⃣ Create the same table again but this time using a named UNIQUE constraint on two columns
-- This is a second version showing a composite UNIQUE constraint (ID + LastName)

CREATE TABLE Persons (
    ID INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT,
    CONSTRAINT UC_Person UNIQUE (ID, LastName)  -- Named constraint on two columns
);


-- Explanation:
-- This means the combination of 'ID' and 'LastName' must be unique.
-- You can repeat 'ID' or 'LastName' separately, but not the exact same pair.

-- 3️⃣ Add a UNIQUE constraint to 'ID' column using ALTER TABLE
ALTER TABLE Persons
    ADD UNIQUE (ID);


-- 4️⃣ Add a named UNIQUE constraint on (ID, LastName) using ALTER TABLE
ALTER TABLE Persons
    ADD CONSTRAINT UC_Person UNIQUE (ID, LastName);


-- 5️⃣ Drop the named constraint from the table
ALTER TABLE Persons
    DROP CONSTRAINT UC_Person;


-- Explanation:
-- You can drop a UNIQUE constraint using its name with the DROP CONSTRAINT command.
-- In this case, we remove the UC_Person constraint.
