/*
===========================================
   DYNAMIC CURSORS IN T-SQL (Explanation)
===========================================

1. What is a Dynamic Cursor?
   - A cursor that reflects real-time changes
     in the underlying tables.
   - No snapshot; always connected to live data.

2. How does it work?
   - Each FETCH pulls current row values.
   - If rows are inserted/updated/deleted during
     cursor lifetime, the cursor sees those changes.

3. When to use?
   - When real-time data visibility is required.
   - Example: monitoring live updates, session tracking,
     or dynamic reports where data changes during looping.

4. Downsides:
   - Slower performance (every fetch re-reads table).
   - Higher resource usage (CPU, locks).
   - Not good for large datasets.

===========================================
   SUMMARY:
   Dynamic Cursor = live, real-time view of data.
   Use when you must see ongoing changes,
   avoid when performance or stability is required.
===========================================
*/

USE C21_DB1;  
GO  

SELECT * FROM dbo.Students;  
GO  

DECLARE @StudentID INT, @Name NVARCHAR(50), @Subject NVARCHAR(50);

-- 1. Declare a DYNAMIC cursor
DECLARE Dynamic_Cursor CURSOR DYNAMIC FOR
    SELECT StudentID, Name, Subject 
    FROM dbo.Students
    WHERE Subject = 'Science'; -- Only fetch rows to be updated

-- 2. Open cursor
OPEN Dynamic_Cursor;

-- 3. Fetch first row
FETCH NEXT FROM Dynamic_Cursor INTO @StudentID, @Name, @Subject;

-- 4. Loop through rows
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Update the subject for this student
    UPDATE dbo.Students
    SET Subject = 'IT'
    WHERE StudentID = @StudentID; -- update current row only

    -- Fetch next row (will reflect live changes because it's dynamic)
    FETCH NEXT FROM Dynamic_Cursor INTO @StudentID, @Name, @Subject;
END;

-- 5. Close and deallocate
CLOSE Dynamic_Cursor;
DEALLOCATE Dynamic_Cursor;

GO
--  results : IT 
SELECT * FROM dbo.Students;
