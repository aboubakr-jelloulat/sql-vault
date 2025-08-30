/*
===========================================
   STATIC CURSORS IN T-SQL (Explanation)
===========================================

1. What is a Static Cursor?
   - A cursor that copies the entire result set
     into tempdb as a snapshot when opened.
   - After opening, it does not reflect any changes
     (INSERT, UPDATE, DELETE) in the base tables.

2. How does it work?
   - DECLARE ... CURSOR STATIC FOR SELECT ...
   - Result set is materialized (copied) into tempdb.
   - Cursor works only on this snapshot.
   - Scrollable: can move forward, backward, absolute.
   - Changes in underlying data are invisible.

3. When to use a Static Cursor?
   - When you need a consistent, unchanging view
     of data while iterating.
   - When scrolling flexibility is required.
   - Useful for reports, audits, or "frozen" views.

4. Downsides:
   - Consumes more memory (snapshot in tempdb).
   - Slower to open (copying data).
   - Does not see live changes in the underlying table.

===========================================
   SUMMARY:
   Static Cursor = snapshot (frozen copy) of data.
   Use when you need stability & scrollability,
   but avoid if you require live data or high performance.
===========================================
*/


USE C21_DB1;  
GO  


SELECT * FROM dbo.Students;  
GO  

-- 1. Declare a STATIC cursor on Students table
DECLARE Static_Cursor CURSOR STATIC FOR 
    SELECT StudentID, Name, Grade FROM dbo.Students;


-- 2. Open the cursor (load snapshot into tempdb)
OPEN Static_Cursor;


-- 3. Declare variables to hold fetched row values
DECLARE @StudentID INT, @Name NVARCHAR(50), @Grade INT;


-- 4. Fetch the first row into variables
FETCH NEXT FROM Static_Cursor INTO @StudentID, @Name, @Grade;


-- 5. Loop through all rows
WHILE @@FETCH_STATUS = 0
BEGIN 
    -- Print values (example logic, replace with your own)
    PRINT 'Hej! My Name is ' + @Name + ' , My Grade is ' + CAST(@Grade AS NVARCHAR(5));

    -- Fetch next row
    FETCH NEXT FROM Static_Cursor INTO @StudentID, @Name, @Grade;
END;


-- 6. Close the cursor (release snapshot)
CLOSE Static_Cursor;


-- 7. Deallocate cursor (free memory)
DEALLOCATE Static_Cursor;
