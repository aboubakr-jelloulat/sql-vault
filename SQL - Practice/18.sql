
--Problem 18: Get total vehicles per DriveTypeName Per Make and order them per make asc then per total Desc

--Get total vehicles per DriveTypeName Per Make and order them per make asc then per total Desc

SELECT        distinct Makes.Make, DriveTypes.DriveTypeName, Count(*) AS Total
FROM            DriveTypes INNER JOIN
                         VehicleDetails ON DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID INNER JOIN
                         Makes ON VehicleDetails.MakeID = Makes.MakeID

Group By Makes.Make, DriveTypes.DriveTypeName

Order By Make ASC, Total Desc