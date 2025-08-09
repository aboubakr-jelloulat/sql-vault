
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
