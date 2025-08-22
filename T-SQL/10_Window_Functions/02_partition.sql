
-- PARTITION BY Subject = divides the rows into separate groups per subject. Ranking starts again inside each subject

USE C21_DB1


SELECT 
	StudentID,
	NAME,
	Subject,
	Grade,

	RANK() OVER (PARTITION BY Subject ORDER BY Grade DESC) AS [Grade Rank]

FROM Students











-- This query calculates per-subject statistics using window functions.
-- For each student row, it shows:
--   - The average grade of all students in the same subject (AVG() with PARTITION BY).
--   - The total grade of all students in the same subject (SUM() with PARTITION BY).
-- Window functions let us compute aggregates without collapsing rows,
-- so each student keeps their details while also showing group-level values.




SELECT 
    StudentID, 
    Name, 
    Subject, 
    Grade,
    AVG(Grade) OVER (PARTITION BY Subject) AS SubjectAvgGrade,
    SUM(Grade) OVER (PARTITION BY Subject) AS SubjectTotalGrade
FROM 
    Students
ORDER BY Subject;














