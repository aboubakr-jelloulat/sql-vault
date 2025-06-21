

--   Problem 39: Get the maximum 3 Engine CC


Select  distinct top 3 Engine_CC from VehicleDetails
	Order By Engine_CC Desc


	-- This returns the 3 highest (maximum) Engine_CC values.
	-- 	That’s what you want when the problem says: “Get the maximum 3 Engine_CC”


	-- TOP 3 alone			 = 		First 3 rows (random order)

	-- TOP 3 ORDER BY Engine_CC DESC 		= 	Top 3 maximum values of Engine_CC