USE C21_DB1;

GO


WITH Numbers AS
(
	SELECT 1 AS nb

	UNION ALL

	SELECT nb + 1 FROM Numbers WHERE nb < 10

) 
	SELECT * FROM Numbers;



-- ex 02




CREATE TABLE Employees7 (
    EmployeeID INT PRIMARY KEY,
    ManagerID INT NULL,
    Name VARCHAR(50)
);

INSERT INTO Employees7 (EmployeeID, ManagerID, Name) VALUES

(1, NULL, 'CEO'),
(2, 1, 'VP of Sales'),
(3, 1, 'VP of Marketing'),
(4, 2, 'Sales Manager'),
(5, 2, 'Sales Representative'),
(6, 3, 'Marketing Manager'),
(7, 4, 'Sales Associate'),
(8, 6, 'Marketing Specialist'),
(9, 1, 'VP IT');

GO 






USE C21_DB1;

GO






WITH EmployeeTreeHierarchy AS (
    -- Anchor member: This selects the root of the hierarchy (CEO in this case) and starts at Level 0
    SELECT EmployeeID, 
	ManagerID, Name, 
	CAST(Name AS VARCHAR(MAX)) AS 'Hierarchy', 0 AS Level
    FROM Employees7
    WHERE ManagerID IS NULL

    UNION ALL

    -- Recursive member: This part of the CTE builds the hierarchy and increments the Level by 1
    SELECT e.EmployeeID, e.ManagerID, e.Name, 
	CAST(ETH.Hierarchy + ' -> ' + e.Name AS VARCHAR(MAX)), 
	ETH.Level + 1 AS Level
    FROM Employees7 e
    INNER JOIN EmployeeTreeHierarchy ETH ON e.ManagerID = ETH.EmployeeID
)
-- This SELECT statement retrieves the hierarchical data with Level
SELECT * FROM EmployeeTreeHierarchy
ORDER BY Hierarchy;

