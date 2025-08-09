

DECLARE @ErrorValue INT;


-- Simulating an error by dividing by zero

INSERT INTO Employees(NAME) VALUES ('NOT FOUND');

-- Check for errors

SET @ErrorValue = @@ERROR;



IF @ErrorValue <> 0
    BEGIN
        PRINT 'An error occurred: ' + CAST(@ErrorValue AS VARCHAR(10));
    END
ELSE
    BEGIN
        PRINT 'Operation completed successfully. Result: ' ;
    END

-- SHOW ERROR MESSAGE


DECLARE @ErrorMessage NVARCHAR(255);
SET @ErrorMessage = ERROR_MESSAGE();

IF @ErrorMessage IS NOT NULL
    BEGIN
        PRINT 'Error Message: ' + @ErrorMessage;
    END
ELSE
    BEGIN
        PRINT 'No error message available.';
    END

