
-- The SELECT TOP clause is used to specify the number of records to return

-- This will show top 5 Students.
Select top 5 * from Students;


-- This will show top 10% of the data.
select top 10 percent * from Students;

-- this will show the all scholarship ordered from the heighest to lowest.
select  MonthlySalary from Students
	order by MonthlySalary Desc;



-- this will show the all scholarship ordered from the heighest to lowest without redundancy.
select distinct MonthlySalary from Students
	order by MonthlySalary Desc;

-- this will show the heighest 3 scholarship.
select  distinct  top 3 MonthlySalary from Students
	order by MonthlySalary Desc;


--This will show all Students who takes one of the heighest 3 scholarship.

select ID , FirstName, MonthlySalary from Students where MonthlySalary In 
(
	select  distinct  top 3 MonthlySalary from Students
	order by MonthlySalary Desc -- means it lists the highest salaries first
)
Order By MonthlySalary Desc -- This sorts the final result so that students with the highest salaries appear first



--This will show all Students who takes one of the Lowest 3 scholarship.
select ID , FirstName, MonthlySalary from Students where MonthlySalary In
(
	select  distinct  top 3 MonthlySalary from Students
	order by MonthlySalary ASC
)
Order By MonthlySalary ASC
