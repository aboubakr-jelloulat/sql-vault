USE C21_DB1



SELECT * FROM Teachers

SELECT * FROM Students



-- Declare 




CREATE FUNCTION GetAverageGrade (@Subject NVARCHAR(50))	RETURNS INT
AS
BEGIN
    DECLARE @Result INT;

    SELECT @Result = AVG(Grade)
    FROM Students
    WHERE Subject = @Subject;

    RETURN @Result;
END;






SELECT Name, Subject, dbo.GetAverageGrade(Subject)  AS [Average Grade]	FROM Teachers

-- Clean Code


SELECT Name, Subject, (SELECT AVG(Grade) FROM Students WHERE Subject = T.Subject)	FROM Teachers T









CREATE FUNCTION GetMax (@Subject NVARCHAR(50)) RETURNS INT
AS
	BEGIN
		DECLARE @Result INT;

		SELECT @Result = MAX(Grade) FROM Students WHERE Subject = @Subject;

		RETURN @Result;

	END



SELECT Name, Subject, dbo.GetMax(Subject) AS [Max Grade] FROM Teachers

