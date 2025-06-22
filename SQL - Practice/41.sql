

--	Problem 41: Get all Makes that manufactures one of the Max 3 Engine CC

select distinct  Makes.Make from VehicleDetails
	inner join Makes on VehicleDetails.MakeID = Makes.MakeID
	where Engine_CC in
		(
			select distinct top 3 Engine_CC from VehicleDetails
				order by Engine_CC desc
		)
		Order By Make
		