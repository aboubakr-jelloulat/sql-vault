
--  Problem 28: Get all vehicles that their body is 'Coupe' or 'Hatchback' or 'Sedan'
	--and manufactured in year 2008 or 2020 or 2021

select  bodyName, VehicleDetails.* from VehicleDetails
inner join Bodies on VehicleDetails.BodyID = Bodies.BodyID
	where Bodies.BodyName in ('Coupe' , 'Hatchback', 'Sedan') and Year in (2008, 2020, 2021);