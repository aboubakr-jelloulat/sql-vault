
-- Problem 16: Get all Makes that manufactures DriveTypeName = FWD

select distinct Makes.Make, DriveTypes.DriveTypeName from VehicleDetails
inner join Makes on VehicleDetails.MakeID = Makes.MakeID
inner join DriveTypes on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
where DriveTypes.DriveTypeName like 'FWD'
