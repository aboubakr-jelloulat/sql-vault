-- The ORDER BY keyword is used to sort the result-set in ascending or descending order.

-- The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword

select ID, FirstName,scholarship from Students
where CourseID=1
Order By FirstName ;

select ID, FirstName,scholarship from Students
where CourseID=1
Order By FirstName ASC;



select ID, FirstName,scholarship from Students
where CourseID=1
Order By FirstName desc;

select ID, FirstName,scholarship from Students
where CourseID=1
Order By scholarship Desc;

select ID, FirstName,scholarship from Students
where CourseID=1
Order By FirstName , scholarship ;


select ID, FirstName,scholarship from Students
where CourseID=1
Order By FirstName ASC, scholarship Desc;