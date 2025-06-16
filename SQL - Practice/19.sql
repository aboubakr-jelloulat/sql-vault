
--Problem 19: Get total vehicles per DriveTypeName Per Make then filter only results with total > 10,000

select Makes.Make, DriveTypes.DriveTypeName, count (*) as [total vehicles]

from	VehicleDetails

inner join Makes on VehicleDetails.MakeID = Makes.MakeID
inner join DriveTypes on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID

group by Makes.Make,DriveTypeName

having count (*) > 10000

order by Make asc, [total vehicles] desc