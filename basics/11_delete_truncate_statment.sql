USE DB1;

-- Create a table with an IDENTITY column starting from 40
CREATE TABLE Departments
(
    ID INT IDENTITY(40, 1) NOT NULL,
    Name NVARCHAR(200) NOT NULL,
    PRIMARY KEY (ID)
);

-- Insert a few rows
INSERT INTO Departments (Name) VALUES ('HR');
INSERT INTO Departments (Name) VALUES ('Finance');
INSERT INTO Departments (Name) VALUES ('IT');

-- Check current data
SELECT * FROM Departments;

-- Delete all rows, but identity is NOT reset
DELETE FROM Departments;

-- Insert one row after DELETE
INSERT INTO Departments (Name) VALUES ('Ecommerce');

-- See the identity value (it continues, not reset)
PRINT 'After DELETE: ' + CAST(@@IDENTITY AS VARCHAR);

-- Now TRUNCATE the table (this resets identity counter)
TRUNCATE TABLE Departments;

-- Insert again after TRUNCATE
INSERT INTO Departments (Name) VALUES ('Marketing');

-- Now identity will start again from 40
PRINT 'After TRUNCATE: ' + CAST(@@IDENTITY AS VARCHAR);

-- Final table view
SELECT * FROM Departments;

--  Summary  ✅ ✅


-- DELETE = keeps identity counter going.

-- TRUNCATE = resets identity counter to starting value (40 in your case).

-- @@IDENTITY = returns the last identity inserted in the session.