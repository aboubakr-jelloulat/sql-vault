USE C21_DB1;

PRINT 'Print Numbers From 1 To 5 :';


DECLARE @Cnt INT = 0;

WHILE (@Cnt <= 5)
	BEGIN 
		PRINT 'Counter : ' + CAST(@Cnt AS VARCHAR);
		SET @Cnt = @Cnt + 1;

	END;

PRINT '';
PRINT 'Print Numbers From 5 To 1 :';

SET @Cnt = 5;

WHILE (@Cnt > 0)
	BEGIN
		PRINT 'Counter : ' + CAST(@Cnt AS NVARCHAR);
		SET @Cnt = @Cnt - 1;

	END;