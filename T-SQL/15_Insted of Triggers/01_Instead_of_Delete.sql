use C21_DB1;


-- Drop FK if it exists
IF OBJECT_ID('dbo.DriverAudit', 'U') IS NOT NULL
BEGIN
    ALTER TABLE dbo.DriverAudit DROP CONSTRAINT FK_DriverAudit_Drivers;
END


-- Then drop Drivers table
IF OBJECT_ID('dbo.Drivers', 'U') IS NOT NULL DROP TABLE dbo.Drivers;


-- 2. Recreate Drivers table

CREATE TABLE dbo.Drivers
(
    DriverID       INT IDENTITY(1,1) PRIMARY KEY,
    FullName       NVARCHAR(100) NOT NULL,
    LicenseNumber  NVARCHAR(50)  NOT NULL,
    City           NVARCHAR(100) NOT NULL,
    IsActive       BIT NOT NULL DEFAULT 1
);
GO

-- 3. Recreate trigger

CREATE OR ALTER TRIGGER dbo.trg_Drivers_InsteadOfDelete
ON dbo.Drivers
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;

    PRINT 'Error: Direct delete is not allowed. Driver marked as inactive instead.';

    UPDATE d
    SET IsActive = 0
    FROM dbo.Drivers d
    INNER JOIN deleted x ON d.DriverID = x.DriverID;
END;
GO

-- 4. Insert test drivers

INSERT INTO dbo.Drivers (FullName, LicenseNumber, City) VALUES
(N'Aboubakr Jelloulat', 'ABC123', 'Casablanca'),
(N'Sander Boss',        'XYZ789', 'Rabat'),
(N'Maria Lopez',        'LMN456', 'Tangier');
GO



SELECT * FROM dbo.Drivers;
GO




DELETE FROM dbo.Drivers WHERE DriverID = 2;
GO


SELECT * FROM dbo.Drivers;
GO

