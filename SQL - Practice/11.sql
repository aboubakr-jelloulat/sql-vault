-- Problem 11: Get Total Makes that runs with GAS

select count (*) as [Total Makes Runs On Gas] from
(
	select  distinct  Makes.Make, FuelTypes.FuelTypeName from VehicleDetails

	inner join Makes on VehicleDetails.MakeID = Makes.MakeID
	inner join FuelTypes on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID

		Where FuelTypes.FuelTypeName = N'GAS'


) Q1