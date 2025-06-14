--     Problem 10: Get all Makes that runs with GAS

select  distinct  Makes.Make, FuelTypes.FuelTypeName from VehicleDetails

	inner join Makes on VehicleDetails.MakeID = Makes.MakeID
	inner join FuelTypes on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID

		Where FuelTypes.FuelTypeName = N'GAS'
		order by Makes.Make