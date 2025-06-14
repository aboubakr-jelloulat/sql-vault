-- Problem 9: Get all vehicles that runs with GAS


select * from VehicleDetails
	inner join FuelTypes on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
	Where FuelTypes.FuelTypeName = N'GAS'

		-- What does N mean in SQL?
		-- 	The N stands for National character set, and it is used to tell SQL Server: "This string is in Unicode."