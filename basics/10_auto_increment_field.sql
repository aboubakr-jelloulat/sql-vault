USE DB1;

-- ✅ Create a table with auto-incrementing ID starting from 40
CREATE TABLE Departments
(
    ID INT IDENTITY(40, 1) NOT NULL,  -- Starts from 40, increments by 1
    Name NVARCHAR(200) NOT NULL,
    PRIMARY KEY (ID)
);

-- ✅ View the table
SELECT * FROM Departments;

-- ✅ Insert a row; ID will be 40
INSERT INTO Departments (Name)
VALUES ('HR');

-- ✅ Show the last inserted identity value
PRINT @@IDENTITY;  -- Example: 40

-- ✅ Delete all rows (this does NOT reset identity!)
DELETE FROM Departments;

-- ✅ Insert again; ID will be 41 (NOT 40 again)
INSERT INTO Departments (Name)
VALUES ('Ecomerce');

-- ✅ Show the new identity value
PRINT @@IDENTITY;  -- Example: 41
