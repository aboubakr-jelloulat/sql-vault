
-- Problem 26: Get all vehicles that their body is 'Sport Utility' and Year > 2020


select * from VehicleDetails
	inner join Bodies on VehicleDetails.BodyID = Bodies.BodyID
	where Bodies.BodyName like 'Sport Utility' and Year > 2020;
