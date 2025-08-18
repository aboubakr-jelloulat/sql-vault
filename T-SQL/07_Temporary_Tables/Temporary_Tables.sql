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






--- ********************   Differences between temporary tables and normal (permanent) tables:   ********************


-- Temporary Tables: They are created in the tempdb database and exist only for the duration of the session or connection that created them. 
--     Local temporary tables (prefixed with #) are visible only to the connection that created them,
--     while global temporary tables (prefixed with ##) are visible to all connections but still exist only until the last connection using them is closed.




--     Normal Tables: Permanent tables are created in a user-defined database and persist until they are explicitly dropped by a user. 
--         They are visible and accessible to any user with the appropriate permissions, regardless of the user session or connection.




-- 2. Performance and Storage

-- Temporary Tables: They are stored in the tempdb database, which is a system database recreated every time SQL Server restarts.
--     Operations on temporary tables generally have less logging and lower locking overhead, which can lead to performance benefits, 
--     especially for complex queries and large data manipulations.


-- Normal Tables: Permanent tables are stored in the database in which they are created and are subject to more extensive logging and locking




-- 5. Backup and Recovery
-- Temporary Tables: They are not included in database backups and cannot be recovered after a server restart or crash.


