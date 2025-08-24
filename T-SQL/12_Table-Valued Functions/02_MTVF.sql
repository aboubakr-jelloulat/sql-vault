

-- ================================================
-- Multi-Statement Table-Valued Function (MTVF)
-- - Returns a table variable defined inside the function
-- - Uses BEGIN...END block, allows multiple statements
-- - More flexible (can use conditional logic, loops, multiple inserts)
-- - Slower performance (less query optimization)
-- - Best for complex logic
-- ================================================



USE C21_DB1;

GO

CREATE FUNCTION dbo.GetTopPerformingStudents()	
RETURNS @Result TABLE  
(
    _StudentID INT,
    _Name NVARCHAR(50),
    _Subject NVARCHAR(50),
    _Grade INT
)
AS
BEGIN
    INSERT INTO @Result (_StudentID, _Name, _Subject, _Grade)
    SELECT TOP (3) StudentID, Name, Subject, Grade
    FROM Students
    ORDER BY Grade DESC;

    RETURN;
END;


GO



SELECT * FROM dbo.GetTopPerformingStudents()



-- Can I use DELETE and UPDATE inside TVFs?


--     Inline TVF (ITVF) ❌ Not possible


--     Multi-Statement TVF (MTVF) ✅ Yes, possible




CREATE FUNCTION dbo.GetProcessedStudents(@MinGrade INT)
RETURNS @Result TABLE
(
    StudentID INT,
    Name NVARCHAR(50),
    Grade INT,
    Remark NVARCHAR(50)
)
AS
BEGIN
    -- Step 1: Insert initial data
    INSERT INTO @Result (StudentID, Name, Grade, Remark)
    SELECT StudentID, Name, Grade, 'Pending'
    FROM Students
    WHERE Grade >= @MinGrade;

    -- Step 2: Update remarks
    UPDATE @Result
    SET Remark = CASE 
                    WHEN Grade >= 90 THEN 'Excellent'
                    WHEN Grade >= 75 THEN 'Good'
                    ELSE 'Average'
                 END;

    -- Step 3: Delete failing students (if any slipped in)
    DELETE FROM @Result
    WHERE Grade < 50;

    RETURN;
END;
GO
