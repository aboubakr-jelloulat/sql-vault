

	-- Problem 45: Get Number of Models Per Make

select Makes.Make, count (*) as [Number of Models]  from Makes
		inner join MakeModels ON Makes.MakeID = MakeModels.MakeID
		group by Make
		order by [Number of Models] desc
		