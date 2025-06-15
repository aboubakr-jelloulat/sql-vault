-- Problem 13: Get all Makes/Count Of Vehicles that manufactures more than 20K Vehicles

select Makes.Make, count (*) as [Number of Vehicles] from VehicleDetails
	inner join Makes on VehicleDetails.MakeID = Makes.MakeID
	group by Makes.Make
	Having count (*) >= 20000
	order by [Number of Vehicles] desc
