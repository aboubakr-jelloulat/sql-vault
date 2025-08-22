USE C21_DB1


SELECT * FROM Students;

DECLARE @PageNumber AS INT, @RowsPerPage AS INT;

SET		@PageNumber = 2;  -- Set to the second page
SET		@RowsPerPage = 3; -- Displaying 3 rows per page

SELECT 
	StudentID, 
	Name, 
	Subject, 
	Grade

FROM Students	ORDER BY StudentID

	OFFSET (@PageNumber - 1) * @RowsPerPage ROWS -- (2 - 1) * 3 = 3 skip the first 3 row
	FETCH NEXT @RowsPerPage ROWS ONLY;

