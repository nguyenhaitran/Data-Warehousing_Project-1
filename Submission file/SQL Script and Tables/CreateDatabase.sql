PRINT ''
PRINT'*** Dropping Database';
GO

IF EXISTS (SELECT [name] FROM [master].[sys].[databases] WHERE [name]=N'CrimeDW')
DROP DATABASE CrimeDW;
GO

PRINT '';
PRINT '*** Creating Database';
GO

CREATE DATABASE CrimeDW
GO
USE CrimeDW
GO