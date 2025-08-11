
SELECT * FROM Sales

order by 
	CASE 
		WHEN SaleAmount > 1500 THEN 1
		ELSE 2
	END, SaleAmount desc  ;


