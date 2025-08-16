USE C21_DB1;


--THROW [error_number, message, state];

	--error_number: A constant or variable between 50000 and 2147483647.
	--message: The error message text. It should be a string less than 2048 characters.
	--state: A constant or variable between 0 and 255.


DECLARE @NewStockQty INT;

SET @NewStockQty = -19;

BEGIN TRY
		IF (@NewStockQty < 0)
			THROW 50001, 'Stock quantity cannot be Negative ', 1;
		UPDATE Products SET StockQuantity = @NewStockQty WHERE ProductID = 1;
	
END TRY

BEGIN CATCH
	SELECT 
		ERROR_MESSAGE() AS [ERROR MESSAGE],
		ERROR_NUMBER()  AS [ERROR NUMBER]

END CATCH 


