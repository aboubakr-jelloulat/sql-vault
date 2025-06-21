

-- Problem 37: Get total vehicles that have Engin_CC above average

select count (*) as [total vehicles] from

(
	select Vehicle_Display_Name from  VehicleDetails
		where Engine_CC <  (select avg(Engine_CC) as [Maximum Engine_CC] from VehicleDetails)

) Q1
