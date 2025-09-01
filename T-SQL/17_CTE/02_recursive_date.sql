USE C21_DB1;

GO




DECLARE @StartDate DATE = '2025-08-01'; -- Start of the date range
DECLARE @EndDate DATE = '2025-08-31';   -- End of the date range


WITH DateSeries AS 
(
    -- Anchor member: Start with the initial date
    SELECT @StartDate AS DateValue


    UNION ALL


    -- Recursive member: Add one day in each iteration
    SELECT DATEADD(day, 1, DateValue)
    FROM DateSeries
    WHERE DateValue < @EndDate
)
SELECT DateValue
FROM DateSeries;
