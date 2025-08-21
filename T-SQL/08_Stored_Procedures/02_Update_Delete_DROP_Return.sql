
USE C21_DB1;

GO


CREATE PROCEDURE SP_Update
    @PersonID   INT,
    @FirstName  NVARCHAR(50),
    @LastName   NVARCHAR(50),
    @Email      NVARCHAR(50)
AS
    BEGIN
        UPDATE People
            SET FirstName = @FirstName, LastName = @LastName, Email = @Email WHERE PersonID = @PersonID;
    END




EXEC SP_Update
	@PersonID   =  1,
    @FirstName  =  'Baker',
    @LastName   = 'Jelloulat',
    @Email      = 'bakerleet@gmail.com';


SELECT * FROM People




USE C21_DB1;

GO

--        UPDATE   

CREATE PROCEDURE SP_Update
    @PersonID   INT,
    @FirstName  NVARCHAR(50),
    @LastName   NVARCHAR(50),
    @Email      NVARCHAR(50)
AS
    BEGIN
        UPDATE People
            SET FirstName = @FirstName, LastName = @LastName, Email = @Email WHERE PersonID = @PersonID;
    END




EXEC SP_Update
	@PersonID   =  1,
    @FirstName  =  'Baker',
    @LastName   = 'Jelloulat',
    @Email      = 'bakerleet@gmail.com';


SELECT * FROM People



-- DELETE

CREATE PROCEDURE SP_DELETE_PERSON
    @PersonID INT

AS
    BEGIN
            DELETE FROM People WHERE PersonID = @PersonID;
    END


EXEC SP_DELETE_PERSON
	@PersonID = 4

select * from People



-- CHECK IS EXISTS




CREATE OR ALTER PROCEDURE SP_CHECK_IS_EXESIT
    @PersonID INT

AS
    BEGIN
            IF (EXISTS(SELECT * FROM People WHERE PersonID = @PersonID))
                RETURN 1;
            ELSE
                RETURN 0;
    END


DECLARE @Result INT;

EXEC @Result = SP_CHECK_IS_EXESIT @PersonID = 1

IF (@Result = 1)
    PRINT 'IS FOUND';
ELSE
    PRINT 'IS NOT FOUND';




-- DROP   


DROP PROCEDURE   SP_CHECK_IS_EXESIT


-- SP_HELPTEXT 

-- The sp_helptext command in SQL Server is a system stored procedure that is used to retrieve the text definition 
--     of a stored procedure, function, trigger, view, or user-defined function in a SQL Server database



EXEC sp_helptext SP_CHECK_IS_EXESIT