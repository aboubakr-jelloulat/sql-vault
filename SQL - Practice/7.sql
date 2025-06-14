select * , cast ([Number Of Cars] as float) / cast ([Total Vehicles] as float ) as Perc from
(
	select Makes.Make, count (*) as [Number Of Cars], (select count (*) from VehicleDetails) as [Total Vehicles] from VehicleDetails

		inner join Makes on VehicleDetails.MakeID = Makes.MakeID

		where VehicleDetails.Year between 1950 and 2000
		group by Makes.Make

) Q1	order by [Number Of Cars] desc;