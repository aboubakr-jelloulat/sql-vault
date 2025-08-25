
--   Dynamic SQL

    -- Dynamic SQL means building SQL statements as strings at runtime and then executing them


use C21_DB1;


DECLARE @sql NVARCHAR(MAX);
SET @sql = 'SELECT * FROM Students WHERE Grade > 80';
EXEC (@sql);  -- execute dynamic SQL




-- Procedure

CREATE PROCEDURE GenerateDaynamicSql1		@TableName	NVARCHAR(50)

AS
	BEGIN
			DECLARE @SQL NVARCHAR(MAX);

			SET @SQL = 'SELECT * FROM ' +  QUOTENAME(@TableName);

			EXEC(@SQL);

	END


GO



CREATE PROCEDURE GenerateDaynamicSql2		@TableName	NVARCHAR(50)

AS
	BEGIN
			DECLARE @SQL NVARCHAR(MAX);

			SET @SQL = 'SELECT * FROM ' +  QUOTENAME(@TableName);

			EXEC sp_executesql @SQL;

	END

	





DECLARE @TableName NVARCHAR(50)

DECLARE @Result INT

SET @TableName = 'Students'

EXECUTE @Result =  [dbo].[GenerateDaynamicSql1] @TableName


SET @TableName = 'Employees'

EXECUTE @Result = [dbo].[GenerateDaynamicSql2] @TableName
