
-- Problem 24: Get all vehicles that have Engines > 3 Liters and have only 2 doors

-- Get all vehicles that have Engines > 3 Liters and have only 2 doors

select * from VehicleDetails
	where Engine_Liter_Display >  3 and NumDoors = 2;