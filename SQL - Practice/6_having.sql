
-- Problem  : Get All Makes that have manufactured more than 12000 Cars in years 1950 to 2000

select Makes.Make, count (*) as [Number of Vehicles] from VehicleDetails

	inner join Makes on VehicleDetails.MakeID = Makes.MakeID

	where (VehicleDetails.Year between 1950 and 2000)
group by Makes.Make
having  count (*) >= 12000
order by [Number of Vehicles] Desc



-- interview Question without using Having

select * from
(

	select Makes.Make, count (*) as [Number Of Cars] from VehicleDetails

		inner join Makes on VehicleDetails.MakeID = Makes.MakeID

		where VehicleDetails.Year between 1950 and 2000
		group by Makes.Make

) Q1 Where [Number Of Cars] >= 12000