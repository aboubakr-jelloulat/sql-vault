
--   Problem 34: Get all vehicles that have the minimum Engine_CC



select Vehicle_Display_Name  from VehicleDetails
	where Engine_CC =  (select min(Engine_CC) as [Minimum Engine CC] from VehicleDetails );


