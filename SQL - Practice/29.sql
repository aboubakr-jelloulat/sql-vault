

-- Problem 29: Return found=1 if there is any vehicle made in year 1950


select found = 1  where
	exists (
			select top 1 * from VehicleDetails where Year = 1950
			)




--EXISTS is a boolean operator in SQL

-- Take only the first row using TOP 1 : This is useful for performance — we don’t need all rows, just to check if one exists.