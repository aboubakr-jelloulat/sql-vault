	-- INSERT

INSERT INTO Students
	VALUES (1, 'mail@gmail.com', 'M', 'Student 1');

	--  OR
INSERT INTO Students
	VALUES 
	(1, 'mail1@gmail.com', 'M', 'Student 1'),
	(2, 'mail2@gmail.com', 'M', 'Student 2'),
	(3, 'mail3@gmail.com', 'F', 'Student 3');


	-- insert only selected fields Reminder : you must insert not null filed 

INSERT INTO Students (ID, Name)
	VALUES (4, 'Student 5');


	-- delete table
DELETE FROM Students;