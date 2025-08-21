USE C21_DB1;


CREATE TABLE People
(
    PersonID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(50)
)



INSERT INTO People(FirstName, LastName, Email)	VALUES ('Aboubakr', 'Jelloulat', 'abubakerjell@gmail.com');
INSERT INTO People(FirstName, LastName, Email)	VALUES ('Sander', 'bos', 'sanderbos@gmail.com');
INSERT INTO People(FirstName, LastName, Email)	VALUES ('Alice', 'Smith', 'alice.smith@example.com');
INSERT INTO People(FirstName, LastName, Email)	VALUES ('Bob', 'Johnson', 'bob.johnson@example.com');


SELECT * FROM People


-- 1 * Procedure Declaration : 

CREATE PROCEDURE SP_AddNewPerson -- if you need to edite use ALTER
	@FirstName		NVARCHAR(50),
	@LastName		NVARCHAR(50),
	@Email			NVARCHAR(50),
	@NewPersonID	INT	OUTPUT 

-- 2 * Procedure Body
AS
	BEGIN
		INSERT INTO People(FirstName, LastName, Email)	VALUES (@FirstName, @LastName, @Email);
		-- Capturing the new ID
		SET @NewPersonID = SCOPE_IDENTITY();  -- SCOPE_IDENTITY() → This function returns the last identity value generated in the current scope
	END



	-- *** 4. How to use this procedure

	DECLARE @GetPersonID INT; -- Declare a variable  to receive the output

EXEC	SP_AddNewPerson
	@FirstName = 'Jamil',
	@LastName = 'Zeynalov',
	@Email = 'Jamil.Zeynalov@gmail.com',

	@NewPersonID = @GetPersonID OUTPUT;



	SELECT @GetPersonID AS [New Person ID]



	
SELECT * FROM People