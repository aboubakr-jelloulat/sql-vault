USE C21_DB1;


BEGIN TRY
	INSERT INTO Employees3(EmployeeID, NAME, Position) VALUES (1, 'Sander Boss', 'Game Devlopper');
	INSERT INTO Employees3(EmployeeID, NAME, Position) VALUES (1, 'Venisus Perira', 'Backend Enginner');

END TRY 

BEGIN CATCH 
	PRINT 'OOOOOOPS !!! An error ' + ERROR_MESSAGE();

END CATCH



	-- ERROR_MESSAGE(): Returns the complete text of the error message.
	-- ERROR_NUMBER(): Returns the error number.
	-- ERROR_SEVERITY(): Returns the severity.
	-- ERROR_STATE(): Returns the error state number.
	-- ERROR_PROCEDURE(): Returns the name of the stored procedure or trigger where the error occurred.
	-- ERROR_LINE(): Returns the line number where the error occurred.



