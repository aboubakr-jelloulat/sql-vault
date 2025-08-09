
use C21_DB1;


CREATE TABLE Sales 
(
	SaleId		INT PRIMARY KEY,
	SaleDate	Date,
	SaleAmount  DECIMAL (10, 2)

);


-- INSERT VALUES

INSERT INTO Sales (SaleId, SaleDate, SaleAmount) VALUES (1, '2023-06-01', 150.00);
INSERT INTO Sales (SaleId, SaleDate, SaleAmount) VALUES (2, '2023-06-03', 200.00);
INSERT INTO Sales (SaleId, SaleDate, SaleAmount) VALUES (3, '2023-06-05', 50.00);
INSERT INTO Sales (SaleId, SaleDate, SaleAmount) VALUES (4, '2023-07-10', 300.00);
INSERT INTO Sales (SaleId, SaleDate, SaleAmount) VALUES (5, '2023-07-11', 250.00);


select *  from Sales


USE C21_DB1;

DECLARE @Year INT;
DECLARE @Month INT;
DECLARE @TotalSales DECIMAL (10, 2);
DECLARE @TotalTransactions INT;
DECLARE @AverageSale DECIMAL (10, 2);

-- INIT
SET @Year = 2023;
SET @Month = 6;

-- Calculate Total Sales for specified Month & Year
SELECT @TotalSales = SUM(SaleAmount) 
FROM Sales
WHERE YEAR(SaleDate) = @Year AND MONTH(SaleDate) = @Month;

-- Calculate Total Number of Transactions
SELECT @TotalTransactions = COUNT(*) 
FROM Sales 
WHERE YEAR(SaleDate) = @Year AND MONTH(SaleDate) = @Month;

-- Calculate The Average Sale Value
IF @TotalTransactions > 0
    SET @AverageSale = @TotalSales / @TotalTransactions;
ELSE
    SET @AverageSale = 0;

-- Report
PRINT 'Monthly Sales Summary:';
PRINT 'Year: ' + CAST(@Year AS VARCHAR) + ' , Month: ' + CAST(@Month AS VARCHAR);
PRINT 'Total Sales: ' + CAST(@TotalSales AS VARCHAR);
PRINT 'Total Transaction : ' + CAST(@TotalTransactions AS VARCHAR);
PRINT 'Average Sale Value: ' + CAST(@AverageSale AS VARCHAR);





-- ********** Example 2  : Employee Attendance Report **********


USE C21_DB1;


CREATE TABLE EmployeeAttendance 
(
    RecordID INT PRIMARY KEY,
    EmployeeID INT,
    AttendanceDate DATE,
    Status VARCHAR(10) -- Values could be 'Present', 'Absent', 'Leave'
);

-- Inserting  data 

INSERT INTO EmployeeAttendance (RecordID, EmployeeID, AttendanceDate, Status) VALUES (1, 101, '2023-07-01', 'Present');
INSERT INTO EmployeeAttendance (RecordID, EmployeeID, AttendanceDate, Status) VALUES (2, 102, '2023-07-01', 'Absent');
INSERT INTO EmployeeAttendance (RecordID, EmployeeID, AttendanceDate, Status) VALUES (3, 103, '2023-07-01', 'Leave');
INSERT INTO EmployeeAttendance (RecordID, EmployeeID, AttendanceDate, Status) VALUES (4, 101, '2023-07-02', 'Present');
INSERT INTO EmployeeAttendance (RecordID, EmployeeID, AttendanceDate, Status) VALUES (5, 102, '2023-07-02', 'Present');



SELECT * FROM EmployeeAttendance


--  ************* START OF ATTENDANCE REPORT ******************** 


DECLARE @EmployeesID INT;
DECLARE @ReportMonth INT;
DECLARE @ReportYear INT;
DECLARE @TotalDays INT;
DECLARE @PresentDays INT;
DECLARE @AbsentDays INT;
DECLARE @LeaveDays INT;


-- Initialize variables

SET @EmployeesID = 101; 
SET @ReportMonth = 7; 
SET @ReportYear = 2023; 

-- Calculate the total number of days in a specific month 


-- Get total days in given month/year:
-- DATEFROMPARTS(2023,7,1) → '2023-07-01' (first day of month)
-- EOMONTH('2023-07-01') → '2023-07-31' (last date of month)
-- DAY('2023-07-31') → 31 (total days in month)

SET @TotalDays = DAY(EOMONTH(DATEFROMPARTS(@ReportYear, @ReportMonth, 1)));

-- Calculate the number of days present, absent, and on leave

SELECT @PresentDays = COUNT(*) 	FROM EmployeeAttendance
WHERE EmployeeID = @EmployeesID AND MONTH(AttendanceDate) = @ReportMonth AND YEAR(AttendanceDate) = @ReportYear AND Status = 'Present';

SELECT @AbsentDays = COUNT(*) 	FROM EmployeeAttendance
WHERE EmployeeID = @EmployeesID AND MONTH(AttendanceDate) = @ReportMonth AND YEAR(AttendanceDate) = @ReportYear AND Status = 'Absent';

SELECT @LeaveDays = COUNT(*) 	FROM EmployeeAttendance
WHERE EmployeeID = @EmployeesID AND MONTH(AttendanceDate) = @ReportMonth AND YEAR(AttendanceDate) = @ReportYear AND Status = 'Leave';

-- Print the attendance report

PRINT 'Attendance Report for Employee ID: ' + CAST(@EmployeesID AS VARCHAR);
PRINT 'Report Month: ' + CAST(@ReportMonth AS VARCHAR) + ', Year: ' + CAST(@ReportYear AS VARCHAR);
PRINT 'Total Days in Month: ' + CAST(@TotalDays AS VARCHAR);
PRINT 'Days Present: ' + CAST(@PresentDays AS VARCHAR);
PRINT 'Days Absent: ' + CAST(@AbsentDays AS VARCHAR);
PRINT 'Days on Leave: ' + CAST(@LeaveDays AS VARCHAR);






-- ********** Example 3  : loyalty   points  **********


USE C21_DB1;

CREATE TABLE Customers 
(
	CustomerID INT PRIMARY KEY,
	Name NVARCHAR(100),
	LoyaltyPoints INT
);

-- Inserting  data

INSERT INTO Customers (CustomerID, Name, LoyaltyPoints) VALUES (1, 'Sander Bos', 0);
INSERT INTO Customers (CustomerID, Name, LoyaltyPoints) VALUES (2, 'Aboubakr Jelloulat', 0);
INSERT INTO Customers (CustomerID, Name, LoyaltyPoints) VALUES (3, 'Karin ', 0);

SELECT * FROM Customers;


-- Create Purchases table

CREATE TABLE Purchases 
(
	PurchaseID INT PRIMARY KEY,
	CustomerID INT,
	PurchaseDate DATE,
	Amount DECIMAL(10, 2)
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);




-- Inserting  data

INSERT INTO Purchases (PurchaseID, CustomerID, PurchaseDate, Amount) VALUES (1, 1, '2025-07-01', 100.00);
INSERT INTO Purchases (PurchaseID, CustomerID, PurchaseDate, Amount) VALUES (2, 1, '2025-07-02', 200.00);
INSERT INTO Purchases (PurchaseID, CustomerID, PurchaseDate, Amount) VALUES (3, 2, '2025-07-03', 150.00);


SELECT * FROM Purchases;