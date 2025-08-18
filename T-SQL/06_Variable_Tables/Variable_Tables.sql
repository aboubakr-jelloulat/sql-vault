USE C21_DB1;


-- A table variable is like a small temporary database table you can create and use inside a script for testing or quick calculations

DECLARE @StudentTable TABLE 
(
	StudentID INT IDENTITY(1,1),  -- Auto increment StudentID
	Name NVARCHAR(50),
	Specialist NVARCHAR (20)
);

-- Insert students with realistic human names
INSERT INTO @StudentTable (Name, Specialist) VALUES ('John Smith', 'IT');
INSERT INTO @StudentTable (Name, Specialist) VALUES ('Maria Lopez', 'Finance');
INSERT INTO @StudentTable (Name, Specialist) VALUES ('Ahmed Hassan', 'Marketing');
INSERT INTO @StudentTable (Name, Specialist) VALUES ('Sophie Martin', 'Sales');
INSERT INTO @StudentTable (Name, Specialist) VALUES ('Liam Brown', 'HR');
INSERT INTO @StudentTable (Name, Specialist) VALUES ('Emma Johnson', 'HR');

-- Example: get all IT specialists
SELECT * FROM @StudentTable WHERE Specialist = 'IT';
