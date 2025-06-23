
-- Problem 50: Get all Fuel Types , each time the result should be showed in random order


-- Get all FuelTypes , each time the result should be showed in random order
-- Note that the NewID() function will generate GUID for each row


select * from FuelTypes
	order by NewID();