
DECLARE @a INT, @b INT, @Max INT;

SET @a = 10;
SET @b = 20;

IF @a > @b
    BEGIN 
        SET @Max = @a;
    END

ELSE
    BEGIN 
        SET @Max = @b;
    END

PRINT 'Max is : ';
PRINT   @Max;


-- ***** IF With AND / OR / NOT Example *****


-- AND 

DECLARE @age INT = 25, @Salary DECIMAL(10, 2) = 10000;

IF @age >= 20 AND @Salary >= 10000
	BEGIN
		PRINT 'ANA 9ABLA';
	END

ELSE
	BEGIN
		PRINT 'BARIA NKMEL 9RAYTI';
	END


-- OR

DECLARE @isStudent BIT = 1, @isEmployed BIT = 0;

IF @isStudent = 1 OR @isEmployed = 1
    BEGIN
        PRINT 'You are Qualified for the program.';
    END

ELSE
    BEGIN
        PRINT 'You are Qualified for the program.';
    END


-- NOT


DECLARE @status NVARCHAR(10) = 'Poor';

IF NOT (@status = 'Poor')
    BEGIN
        PRINT 'Oh My God, I love you';
    END
ELSE
    BEGIN
        PRINT 'Your status is Poor. I don t marry you';
    END

