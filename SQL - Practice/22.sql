
-- Problem 22: Get percentage of vehicles that has no doors specified


select
(

	cast (  (select count(*) as [Total With No Specified Doors] from VehicleDetails
		where NumDoors is Null)  as float )

		/

		cast (  (select count (*)   as [Total of Vehicles] from VehicleDetails)   as float)


)  as [Perc Of No Specified Doors]