-- Temporary tables in T-SQL are used to store and process intermediate results. These tables are created in the tempdb database and are automatically deleted when they are no longer used.


-- Local Temporary Tables: Created with a single hash (#) symbol. 
--     Visible only to the connection that creates it and are deleted when the connection is closed.

            -- CREATE TABLE #TempTable (...)

 

-- Global Temporary Tables: Created with a double hash (##) symbol. Visible to all connections and are deleted when the last connection using it is closed.
    -- Syntax: CREATE TABLE ##TempTable (...)


    USE C21_DB1;


CREATE TABLE #StudentTable  
(
	StudentID INT IDENTITY(1,1),  -- Auto increment StudentID
	Name NVARCHAR(50),
	Specialist NVARCHAR (20)
);

-- Insert students with realistic human names
INSERT INTO #StudentTable (Name, Specialist) VALUES ('Sander Bos', 'IT');
INSERT INTO #StudentTable (Name, Specialist) VALUES ('Maria Lopez', 'Finance');
INSERT INTO #StudentTable (Name, Specialist) VALUES ('Ahmed Hassan', 'Marketing');
INSERT INTO #StudentTable (Name, Specialist) VALUES ('Sophie Martin', 'Sales');
INSERT INTO #StudentTable (Name, Specialist) VALUES ('Liam Brown', 'HR');
INSERT INTO #StudentTable (Name, Specialist) VALUES ('Emma Johnson', 'HR');


SELECT * FROM #StudentTable

-- Example: get all IT specialists
SELECT * FROM #StudentTable WHERE Specialist = 'IT';