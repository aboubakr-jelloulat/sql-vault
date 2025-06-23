
-- Problem 47: Get the highest number of models manufactured


select max([Number of Models]) as [ highest number of models manufactured] from
	(
		select  Makes.Make, count (*) as [Number of Models]  from Makes
		inner join MakeModels on MakeModels.MakeID = Makes.MakeID
		group by Makes.Make

	) Q1;

