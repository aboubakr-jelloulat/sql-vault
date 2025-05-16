-- =============================================
-- T-SQL Script for SQL Server: Student Table
-- Includes constraints, error handling, and comments
-- =============================================
USE DB1;  -- switch database 
GO

-- Drop table if it already exists (avoid errors)
IF OBJECT_ID('dbo.Student', 'U') IS NOT NULL
    DROP TABLE dbo.Student;
GO

-- Create Student table with constraints
CREATE TABLE dbo.Student 
(
    LoginID INT NOT NULL PRIMARY KEY,
    Email NVARCHAR(255) NOT NULL UNIQUE,  -- Ensures emails are unique
    Level FLOAT NULL CHECK (Level >= 1.0 AND Level <= 4.0),  -- Validates level range
    Scholarship SMALLMONEY NULL,
    DateCreated DATETIME2 DEFAULT GETDATE()  -- Auto-sets creation timestamp
);
GO

-- Insert sample data with error handling
BEGIN TRY
    INSERT INTO dbo.Student (LoginID, Email, Level, Scholarship)
    VALUES 
        (1, 'student1@example.com', 2.5, 1000.50),
        (2, 'student2@example.com', NULL, NULL),
        (3, 'student3@example.com', 3.0, 1500.75);
    PRINT 'Data inserted successfully.';
END TRY
BEGIN CATCH
    PRINT 'Error inserting data: ' + ERROR_MESSAGE();
END CATCH
GO

-- Verify the table
SELECT * FROM dbo.Student;
GO