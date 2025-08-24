USE C21_DB1;


GO



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


