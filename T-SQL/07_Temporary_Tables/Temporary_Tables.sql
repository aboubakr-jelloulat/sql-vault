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


DROP TABLE #StudentTable;



--- ********************    Differences between Temp Table vs Variable Table ********************



-- Temporary Tables: Created using the CREATE TABLE statement, with the table name prefixed by # for local temporary tables (visible only in the current session) or
--      ## for global temporary tables (visible to all sessions). They are stored in the tempdb database.

-- Table Variables: Declared using the DECLARE statement and have a similar structure to permanent tables. The syntax is DECLARE @TableName TABLE (column definitions). 
--     They have a limited scope and are typically used within the function, stored procedure, or batch in which they are declared.




-- Table Variables: Automatically cleaned up at the end of the batch, function, or stored procedure in which they are defined.


-- Temporary Tables: Exist until they are explicitly dropped using the DROP TABLE command or until the session/connection that created them is closed.



