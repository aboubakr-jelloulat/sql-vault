-- Problem 8: Get Make, FuelTypeName and Number of Vehicles per FuelType per Make

select Makes.Make, FuelTypes.FuelTypeName, count (*) as [Number Of Vehicles]  from VehicleDetails
	inner join Makes on VehicleDetails.MakeID = Makes.MakeID inner join FuelTypes on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
	where (VehicleDetails.Year between 1950 and 2000)
	group by Makes.Make, FuelTypes.FuelTypeName

	order by Makes.Make