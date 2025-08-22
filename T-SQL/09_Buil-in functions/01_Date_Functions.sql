use C21_DB1;

--  Date funcitons:

SELECT GETDATE() AS CurrentDateTime
GO

-- Getting the system date and time with fractional seconds and time zone offset
SELECT SYSDATETIME() AS SystemDateTime
GO

-- Adding 10 days to the current date

SELECT DATEADD(day, 10, GETDATE()) AS DatePlus10Days
GO

-- Calculating the difference in days between two dates

SELECT DATEDIFF(day, '2024-08-24', '2020-08-24') AS DaysSinceStartOfYear
GO

-- Extracting the year part from the current date
SELECT DATEPART(year, GETDATE()) AS CurrentYear
GO


-- Extracting the Month part from the current date
SELECT DATEPART(MONTH, GETDATE()) AS CurrentYear
GO


-- Extracting the Day part from the current date
SELECT DATEPART(Day, GETDATE()) AS CurrentYear
GO

-- Getting the name of the current month
SELECT DATENAME(month, GETDATE()) AS CurrentMonthName
GO


-- Extracting the day from the current date
SELECT DAY(GETDATE()) AS CurrentDay
GO

-- Extracting the month from the current date
SELECT MONTH(GETDATE()) AS CurrentMonth
GO

-- Extracting the year from the current date
SELECT YEAR(GETDATE()) AS CurrentYear
GO

-- Converting a datetime to a different format,The third argument, 103, specifies the style code for the conversion. 
--In SQL Server, style code 103 represents the date format as DD/MM/YYYY. 


SELECT CONVERT(varchar, GETDATE(), 103) AS [Date Style]
GO

SELECT CONVERT(varchar, GETDATE(), 106) AS [Date Style]
GO

SELECT CONVERT(varchar, GETDATE(), 110) AS [Date Style]
GO

-- Casting a datetime to a different data type

SELECT CAST(GETDATE() AS date) AS DateOnly
GO

SELECT CAST(GETDATE() AS nvarchar) AS DateOnly
GO

-- Getting the last day of the current month

SELECT EOMONTH(GETDATE()) AS [Last Day Of Current Month]
GO



