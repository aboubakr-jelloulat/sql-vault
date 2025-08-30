/*
===========================================
   SCROLLABLE CURSORS IN T-SQL
===========================================

1. Definition:
   - Cursors that allow navigation in any direction,
     not just forward.
   - FETCH options: NEXT, PRIOR, FIRST, LAST,
     ABSOLUTE n, RELATIVE n.

2. Behavior:
   - Can jump to any row in result set.
   - Type of cursor (STATIC, DYNAMIC, KEYSET)
     decides if changes are visible or not.
   - More flexible than Forward-Only, but heavier.

3. Use Cases:
   - When you need random access to rows.
   - Applications with record browsing (next, prev).
   - Logic requiring comparison between rows.

4. Advantages:
   - Full navigation control over rows.
   - Works well for custom navigation logic.

5. Disadvantages:
   - Slower than Forward-Only.
   - Consumes more memory (may use tempdb).
   - Not ideal for large datasets.

===========================================
   SUMMARY:
   Scrollable Cursor = flexible row navigation.
   Use when you need random access, avoid if you
   only need simple sequential processing.
===========================================
*/


/*
===========================================
   SCROLLABLE CURSOR FETCH OPERATIONS
===========================================

1. FETCH FIRST
   - Moves the cursor to the first row of the result set.

2. FETCH LAST
   - Moves the cursor to the last row of the result set.

3. FETCH NEXT
   - Moves the cursor to the next row (forward).
   - Works with all cursor types.

4. FETCH PRIOR
   - Moves the cursor to the previous row (backward).
   - Requires a scrollable cursor (STATIC, DYNAMIC, KEYSET).

5. FETCH ABSOLUTE n
   - Moves the cursor directly to row number n.
   - n > 0 → counts from first row.
   - n < 0 → counts from last row (-1 = last row, -2 = second last).

6. FETCH RELATIVE n
   - Moves the cursor n rows relative to the current row.
   - n > 0 → forward, n < 0 → backward.

===========================================
   SUMMARY:
   Scrollable cursors allow full navigation:
   FIRST, LAST, NEXT, PRIOR, ABSOLUTE, RELATIVE.
   Use when row-by-row movement in any direction is needed.
===========================================
*/


USE C21_DB1;
GO

SELECT * FROM dbo.Students

GO


DECLARE @StudentID INT, @Name NVARCHAR(50), @Subject NVARCHAR(50);

-- 1. Declare a SCROLL cursor (STATIC here for stability)

DECLARE Scroll_Cursor CURSOR STATIC SCROLL FOR
    SELECT StudentID, Name, Subject FROM dbo.Students;

-- 2. Open cursor
OPEN Scroll_Cursor;

-- 3. Fetch first row
FETCH FIRST FROM Scroll_Cursor INTO @StudentID, @Name, @Subject;
PRINT 'First Row -> ' + @Name;

-- 4. Fetch last row
FETCH LAST FROM Scroll_Cursor INTO @StudentID, @Name, @Subject;
PRINT 'Last Row -> ' + @Name;

-- 5. Fetch absolute row 2
FETCH ABSOLUTE 2 FROM Scroll_Cursor INTO @StudentID, @Name, @Subject;
PRINT 'Second Row -> ' + @Name;

-- 6. Fetch prior (row before current)
FETCH PRIOR FROM Scroll_Cursor INTO @StudentID, @Name, @Subject;
PRINT 'Back to Row 1 -> ' + @Name;

-- 7. Close and deallocate
CLOSE Scroll_Cursor;
DEALLOCATE Scroll_Cursor;


