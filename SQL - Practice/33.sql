
-- Problem 33: Get Minimum Engine CC , Maximum Engine CC , and Average Engine CC of all Vehicles


select
	[Minimum Engine CC] = min(Engine_CC),
	[Maximum Engine CC] = max(Engine_CC),
	[Average Engine CC] = avg(Engine_CC)

	from VehicleDetails
	