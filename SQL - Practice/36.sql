

--   Problem 36: Get all vehicles that have Engin_CC below average


select Vehicle_Display_Name from  VehicleDetails
	where Engine_CC <  (select avg(Engine_CC) as [Maximum Engine_CC] from VehicleDetails)