USE C21_DB1;

DECLARE @nb1 INT, @nb2 INT;

SET @nb1 = 1337;
SET @nb2 = 42;

IF @nb1 > @nb2
	BEGIN
		PRINT 'Yes NB1 is grater than NB2';
	END
ELSE
	BEGIN
		PRINT 'NO NB2 is grater'
	END


-- ***** Nested IF Example *****


DECLARE @score INT;

SET @score = 40;

IF @score >= 90
	BEGIN
		PRINT 'GRADE A : Grandmaster';
	END

ELSE 
	BEGIN
		IF @score >= 70
			BEGIN
				PRINT 'GRADE B : International';
			END
		ELSE
			BEGIN
				PRINT 'GRADE A : Specialist';
			END
END

