
--Problem 27: Get all vehicles that their Body is 'Coupe' or 'Hatchback' or 'Sedan'

select  bodyName, VehicleDetails.* from VehicleDetails
inner join Bodies on VehicleDetails.BodyID = Bodies.BodyID
	where Bodies.BodyName in ('Coupe' , 'Hatchback', 'Sedan')
