USE C21_DB1


-- LAG() and LEAD() are window functions used to access values
-- from preceding or following rows without a self-join.
-- LAG(column, 1) → value from 1 row before.
-- LEAD(column, 1) → value from 1 row after.
-- Example: helps compare a student's grade with the previous or next student.



SELECT * FROM Students ORDER BY Grade DESC


SELECT 
    StudentID, 
    Name,
    LAG(Grade, 1) OVER (ORDER BY Grade DESC) AS [Previous Grade],
    Grade,
    LEAD(Grade, 1) OVER (ORDER BY Grade DESC) AS [Next Grade]

FROM	Students	ORDER BY Grade DESC;