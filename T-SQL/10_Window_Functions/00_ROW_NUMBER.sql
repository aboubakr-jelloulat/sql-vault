USE C21_DB1



CREATE  TABLE Students
(
	StudentID INT PRIMARY KEY,
	NAME		NVARCHAR(50),
	Subject		NVARCHAR(50),
	Grade		INT

);


INSERT INTO Students (StudentID, NAME, Subject, Grade) VALUES
(1, 'Alice',   'Math',    90),
(2, 'Bob',     'Science', 85),
(3, 'Charlie', 'English', 78),
(4, 'David',   'Math',    88),
(5, 'Emma',    'Science', 92),
(6, 'Frank',   'English', 84),
(7, 'Grace',   'Math',    75),
(8, 'Hassan',  'Science', 80),
(9, 'Ivy',     'English', 80);


SELECT * FROM Students


USE C21_DB1


SELECT * FROM Students;

SELECT 
	StudentID, 
	NAME, 
	Subject, 
	Grade, 
	ROW_NUMBER() OVER (ORDER BY Grade DESC) AS [Row Number]

FROM	Students ORDER BY Grade DESC


		--  ROW_NUMBER() is a window function that assigns 1, 2, 3, … to rows.
		-- OVER (...) tells the function which rows to consider and how to order them.
		-- ORDER BY Grade DESC inside the OVER says: number rows from highest grade to lowest. The highest grade gets row number 1.

        