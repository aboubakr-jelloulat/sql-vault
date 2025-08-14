USE C21_DB1;


DECLARE @NAME		NVARCHAR(50);
DECLARE @CurrentID	INT;
DECLARE @MAX		INT;

SELECT @CurrentID = MIN(EmployeeID) FROM Employees;
SELECT @MAX       = MAX(EmployeeID) FROM Employees;


WHILE (@CurrentID IS NOT NULL AND @CurrentID <= @MAX)
	BEGIN
		SELECT @NAME = Name FROM Employees WHERE EmployeeID = @CurrentID;

		PRINT @NAME;

		SELECT @CurrentID = MIN(EmployeeID) FROM Employees WHERE EmployeeID > @CurrentID

	END
