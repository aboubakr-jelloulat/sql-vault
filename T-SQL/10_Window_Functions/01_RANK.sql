
-- RANK():
-- A window function that assigns a ranking number to each row
-- based on the ORDER BY clause within OVER().
-- Rows with the same value receive the same rank.
-- The next rank is skipped after a tie (gappy ranking).
-- Example: values [100, 90, 90, 80] → ranks [1, 2, 2, 4]



SELECT 
	StudentID, 
	NAME, 
	Subject, 
	Grade, 

	RANK() OVER (ORDER BY Grade DESC) AS [Row Number]

FROM	Students ORDER BY Grade DESC







-- Rows with the same value receive the same rank.
-- Unlike RANK(), it does not skip numbers after ties.
-- Example: values [100, 90, 90, 80] → dense ranks [1, 2, 2, 3]



USE C21_DB1

SELECT 
	StudentID, 
	NAME, 
	Subject, 
	Grade, 

	DENSE_RANK() OVER (ORDER BY Grade DESC) AS [Row Number]

FROM	Students ORDER BY Grade DESC

