

-- Problem 44: Get Total Number Of Doors Manufactured by 'Ford'


select Makes.Make, sum(VehicleDetails.NumDoors) as [Total Number of Doors]	From VehicleDetails

	inner join Makes on VehicleDetails.MakeID = Makes.MakeID

	group by Makes.Make

	Having Make = 'Ford';