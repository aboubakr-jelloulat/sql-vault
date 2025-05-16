USE master; -- switch to master database

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'DB1')
BEGIN
    DROP DATABASE DB1;
END;
