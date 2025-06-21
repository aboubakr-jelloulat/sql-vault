

-- Problem 35: Get all vehicles that have the Maximum Engine_CC



select Vehicle_Display_Name from  VehicleDetails
	where Engine_CC = (select max(Engine_CC) as [Maximum Engine_CC] from VehicleDetails)