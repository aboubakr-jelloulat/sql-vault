	-- Full Backup

-- What it is: A complete copy of the entire database (all data, schema, etc.) at that point in time.
-- If you run it again: The second full backup replaces the previous backup if the same file is used

	-- Differential Backup
-- It backs up only the data that changed 


--  1 * Full Back Up 

BACKUP	DATABASE DB1
	TO DISK = 'D:\DB1.bak';

--  DIFFERENTIAL BACKUP DATABASE

BACKUP DATABASE MyDatabase1
TO DISK = 'C:\MyDatabase1_backup.bak'
WITH DIFFERENTIAL;


-- Restore Database From Backup
RESTORE DATABASE MyDatabase1
FROM DISK = 'C:\MyDatabase1.bak';
