USE C21_DB1;

DECLARE @Amount		DECIMAL (10, 2);
DECLARE @Withdraw	DECIMAL (10, 2);

SET	@Amount		=	850;
SET	@Withdraw	=	100;


WHILE (@Amount > 0)
	BEGIN
			SET @Amount	= @Amount - @Withdraw;

			IF (@Amount < 0)
				BEGIN
					PRINT 'You Cant Withdraw Again';
					BREAK;
				END


		PRINT 'New Balance : ' + CAST (@Amount AS VARCHAR);

	END