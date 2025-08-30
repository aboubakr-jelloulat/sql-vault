/*
===========================================
   CURSORS IN T-SQL (Explanation)
===========================================

1. What is a Cursor?
   - A cursor is a database object in SQL Server
     that lets you process query results row by row.
   - SQL normally works with sets (all rows at once),
     but cursors allow row-by-row operations.

2. How does a Cursor work?
   Typical steps:
   - DECLARE: Define the cursor with a SELECT statement.
   - OPEN: Execute the query and store the result set.
   - FETCH: Retrieve rows one at a time.
   - PROCESS: Do something with each row (inside a loop).
   - CLOSE: Release the result set.
   - DEALLOCATE: Free memory used by the cursor.

3. Example workflow:
   DECLARE CursorName CURSOR FOR SELECT ...;
   OPEN CursorName;
   FETCH NEXT FROM CursorName INTO variable;
   WHILE @@FETCH_STATUS = 0
       BEGIN
           -- Do something with the row
           FETCH NEXT FROM CursorName INTO variable;
       END
   CLOSE CursorName;
   DEALLOCATE CursorName;

4. Why do we need a Cursor?
   - When set-based operations (UPDATE, JOIN, MERGE, etc.)
     cannot handle the business logic.
   - Useful for:
       * Applying different rules per row.
       * Calling procedures/functions for each row.
       * Row-by-row conditional processing.

5. Downsides of Cursors:
   - Slower than set-based operations (row-by-row = overhead).
   - Uses more memory.
   - Code is more complex.
   - Best avoided on large datasets when set-based SQL is possible.

===========================================
   SUMMARY:
   Cursor = Row-by-row iterator in SQL Server.
   Use only when necessary, otherwise prefer set-based SQL.
===========================================
*/

