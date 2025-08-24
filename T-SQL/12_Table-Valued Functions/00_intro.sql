-- ================================================
-- Inline Table-Valued Function (ITVF)
-- - Returns a table directly from a single SELECT
-- - No BEGIN...END block
-- - Acts like a parameterized view
-- - Faster performance (SQL Server can optimize easily)
-- - Best for simple queries
-- ================================================


-- ================================================
-- Multi-Statement Table-Valued Function (MTVF)
-- - Returns a table variable defined inside the function
-- - Uses BEGIN...END block, allows multiple statements
-- - More flexible (can use conditional logic, loops, multiple inserts)
-- - Slower performance (less query optimization)
-- - Best for complex logic
-- ================================================
