
-- Problem 17: Get total Makes that Mantufactures DriveTypeName=FWD

--Get total Makes that Mantufactures DriveTypeName=FWD


select count (*) as [Total Makes Mantufactures Drive Type Name FWD] from
(
	select distinct Makes.Make, DriveTypes.DriveTypeName from VehicleDetails
	inner join Makes on VehicleDetails.MakeID = Makes.MakeID
	inner join DriveTypes on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
	where DriveTypes.DriveTypeName like 'FWD'

)	Q1
