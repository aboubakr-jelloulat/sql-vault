USE C21_DB1;


GO


--  Inline Table-Valued Functions (ITVFs) in T-SQL


CREATE FUNCTION GetStudentsBySubject(@Subject NVARCHAR(50))		RETURNS TABLE

AS
	RETURN
		(
			SELECT * FROM Students WHERE Subject = @Subject

		)

GO




	SELECT * FROM dbo.GetStudentsBySubject('Math')


	--  EX : 2



	SELECT AVG(Grade)  FROM dbo.GetStudentsBySubject('Science')





----   P2 :   Using Inline Table-Valued Functions with JOIN in T-SQL





SELECT s.StudentID, s.NAME AS [Student Name], t.Name AS [Theacher Name], s.Grade
	
	FROM   dbo.GetStudentsBySubject('Math') s
	INNER JOIN Teachers t ON s.Subject = t.Subject


