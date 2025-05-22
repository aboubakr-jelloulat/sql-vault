--  ✅ ✅ ✅ SQL LIKE Operator  ✅ ✅ ✅ 

-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column
	-- There are two wildcards often used in conjunction with the LIKE operator :
	-- 	* The percent sign (%) represents zero, one, or multiple characters
	-- 	* The underscore sign (_) represents one, single character
	

select * from Students;

--Finds any values that start with "a"
select ID, FirstName from Students
where FirstName like 'a%';


--Finds any values that end with "a"
select ID, FirstName from Students
where FirstName like '%a';


--Finds any values that have "jon" in any position
select ID, FirstName from Students
where FirstName like '%jon%';

--	Finds any values that start with "a" and ends with "a"
select ID, FirstName from Students
where FirstName like 'a%a';

-- Finds any values that have "a" in the second position
select ID, FirstName from Students
where FirstName like '_a%';

-- Finds any values that have "a" in the third position
select ID, FirstName from Students
where FirstName like '__a%';


-- Finds any values that start with "a" and are at least 3 characters in length
select ID, FirstName from Students
where FirstName like 'a__%';

-- Finds any values that start with "a" and are at least 4 characters in length
select ID, FirstName from Students
where FirstName like 'a___%';



--Finds any values that start with "a" or "b"
select ID, FirstName from Students
where FirstName like 'a%' or FirstName like 'b%' ;




--    ✅ SQL Wildcard Characters 


select ID, FirstName, LastName from Employees
Where firstName = 'Aboubaker' or FirstName ='Aboubakar'; 


-- will search form Aboubaker or Aboubakar
select ID, FirstName, LastName from Employees
Where firstName like 'Aboubak[ae]r';

-------------------------------------

--You can use Not  select all name != Aboubaker or Aboubakar
select ID, FirstName, LastName from Employees
Where firstName Not like 'Aboubak[ae]r';

--------------------

select ID, FirstName, LastName from Employees
Where firstName like 'a%' or firstName like 'b%' or firstName like 'c%';


-- search for all their first name start with a or b or c
select ID, FirstName, LastName from Employees
Where firstName like '[abc]%';


---------------------------------
-- search for all their first name start with any letter from a to f
select ID, FirstName, LastName from Employees
Where firstName like '[a-l]%'; -- like [abcdef]
---------------------------------