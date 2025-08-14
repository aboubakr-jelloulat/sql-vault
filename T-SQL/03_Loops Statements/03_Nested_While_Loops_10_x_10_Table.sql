USE C21_DB1;


DECLARE	@Factor1 INT;
DECLARE	@Factor2 INT;
DECLARE	@Result	 INT;

SET @Factor1 = 0;
SET @Factor2 = 0;
SET @Result  = 0;

WHILE (@Factor1 < 10)
	BEGIN
		SET @Factor1 = @Factor1 + 1;
		
		WHILE (@Factor2 <= 10)
			BEGIN
				SET @Result = @Factor1 * @Factor2;

				PRINT CAST(@Factor1 AS VARCHAR) + '  *  ' + CAST(@Factor2 AS VARCHAR) + '  =  ' +  CAST(@Result AS VARCHAR);

				SET @Factor2 = @Factor2 + 1;

			END;
			SET @Factor2 = 0;
			PRINT'';
			PRINT '*******************';
			PRINT'';
	END