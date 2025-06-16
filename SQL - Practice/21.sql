  -- Problem 21: Get Total Vehicles that number of doors is not specified


select count(*) as [Total With No Specified Doors] from VehicleDetails
where NumDoors is Null