

-- Problem 32: Get all Vehicle_Display_Name, year, Age for vehicles that their age between 15 and 25 years old


select * from
	(
		select   Vehicle_Display_Name, Year, Year(GETDATE()) - Year as age
			from VehicleDetails
	) Q1

	where age between 15 and 25;
