/*
===========================================
   FORWARD-ONLY CURSORS IN T-SQL
===========================================

1. Definition:
   - A simple, fast cursor that only moves forward
     through the result set (no backward, no jumping).
   - Think of it like reading a book page by page,
     but you can’t flip back.

2. Behavior:
   - FETCH NEXT gets one row at a time.
   - Once you pass a row, you cannot return to it.
   - No snapshot (unlike STATIC).
   - No live updates (unlike DYNAMIC).

3. Use Cases:
   - Best when you only need to process rows once,
     from top to bottom.
   - Example: exporting rows, generating reports,
     calling procedures for each row.

4. Advantages:
   - Fastest cursor type.
   - Uses least memory and resources.
   - Default type when not specified.

5. Disadvantages:
   - Cannot scroll backward or reposition.
   - Cannot see changes after the cursor is opened.
   - Still slower than set-based SQL.

===========================================
   SUMMARY:
   Forward-Only Cursor = one-way, fast row reader.
   Use when you only need sequential row processing.
===========================================
*/


USE C21_DB1;
GO

DECLARE @StudentID INT, @Name NVARCHAR(50), @Subject NVARCHAR(50);

-- 1. Declare a Forward-Only cursor
DECLARE ForwardOnly_Cursor CURSOR STATIC FORWARD_ONLY FOR
    SELECT StudentID, Name, Subject 
    FROM dbo.Students;

-- 2. Open the cursor
OPEN ForwardOnly_Cursor;

-- 3. Fetch first row
FETCH NEXT FROM ForwardOnly_Cursor INTO @StudentID, @Name, @Subject;

-- 4. Loop through rows (only forward)
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Student: ' + @Name + ', Subject: ' + @Subject;

    -- Move to next row
    FETCH NEXT FROM ForwardOnly_Cursor INTO @StudentID, @Name, @Subject;
END;

-- 5. Close and deallocate
CLOSE ForwardOnly_Cursor;
DEALLOCATE ForwardOnly_Cursor;


