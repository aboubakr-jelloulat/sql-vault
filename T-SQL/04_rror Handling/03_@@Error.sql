-- @@ERROR provides the error number of the last T-SQL statement that was executed. If the last statement was successful, @@ERROR returns 0


USE C21_DB1;


INSERT INTO Departments (DepartmentID, Name)
VALUES (1, 'Business'); -- 'DepartmentID' is a primary key and '1' already exists

DECLARE @ErrorNumber INT = @@ERROR;


IF @ErrorNumber <> 0
BEGIN
    PRINT 'An error occurred during the insert operation.';
    PRINT 'The error number is: ' + CAST(@ErrorNumber AS VARCHAR);
END