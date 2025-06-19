
-- Problem 30: Get all Vehicle_Display_Name, NumDoors and add extra column to describe number of doors by words,
	--and if door is null display 'Not Set'

select  Vehicle_Display_Name, NumDoors,

		[doors by words] = CASE

								WHEN NumDoors = 0 THEN 'ZERO Doors'
								WHEN NumDoors = 2 THEN 'TWO Doors'
								WHEN NumDoors = 3 THEN 'THREE Doors'
								WHEN NumDoors = 4 THEN 'FOUR Doors'
								WHEN NumDoors = 5 THEN 'FIVE Doors'
								WHEN NumDoors = 6 THEN 'SIX Doors'
								WHEN NumDoors = 8 THEN 'EIGHT Doors'
								WHEN NumDoors is null THEN 'Not Set'
								ELSE 'Unknown'

							END -- you can use as [doors by words]
	from VehicleDetails;


--select distinct  NumDoors   from VehicleDetails