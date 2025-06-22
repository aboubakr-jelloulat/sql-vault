
-- Problem 43: Get Make and Total Number Of Doors Manufactured Per Make


select Makes.Make, sum(VehicleDetails.NumDoors) as [Total Number of Doors]	From VehicleDetails

	inner join Makes on VehicleDetails.MakeID = Makes.MakeID

	group by Makes.Make

	order by [Total Number of Doors] desc
	