

-- Problem 31: Get all Vehicle_Display_Name, year and add extra column to calculate the age of the car then sort the results by age desc.


select  Vehicle_Display_Name , Year, age = YEAR(GetDate()) - VehicleDetails.year
	from   VehicleDetails
		order by age desc;
		