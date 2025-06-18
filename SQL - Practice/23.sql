
-- Problem 23: Get MakeID , Make, SubModelName for all vehicles that have SubModelName 'Elite'

-- Get MakeID , Make, SubModelName for all vehicles that have SubModelName 'Elite'

SELECT    distinct    VehicleDetails.MakeID, Makes.Make, SubModelName FROM VehicleDetails

INNER JOIN		SubModels ON VehicleDetails.SubModelID = SubModels.SubModelID
INNER JOIN		Makes ON VehicleDetails.MakeID = Makes.MakeID

	where SubModelName = N'Elite'