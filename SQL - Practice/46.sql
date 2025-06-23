
-- Problem 46: Get the highest 3 manufacturers that make the highest number of models

-- Get the highest 3 manufacturers that make the highest number of models

select distinct  top 3  Makes.Make, count (*) as [Number of Models]  from Makes
	inner join MakeModels on MakeModels.MakeID = Makes.MakeID
	group by Makes.Make
	order by [Number of Models] desc
	