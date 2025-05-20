CREATE TABLE Teacher
(
	ID INT NOT NULL,
	First_name VARCHAR(15) NOT NULL,
	Last_name VARCHAR(15) NOT NULL,
	Age INT,
	PRIMARY KEY (ID)
);

CREATE TABLE Course
(
	Course_id INT NOT NULL,
	Content NVARCHAR(20) NOT NULL,
	Course_Hours FLOAT,
	Teacher_id INT,

	-- Creat foreign key
	FOREIGN KEY (Teacher_id) REFERENCES Teacher(ID)
);


-- you can add it like this 
ALTER TABLE Course
	ADD FOREIGN KEY (Teacher_id) REFERENCES Teacher(ID);