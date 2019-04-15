-- Created based off of SQL Server Database

SELECT * 
FROM sys.tables

SELECT *
FROM sys.schemas

SELECT 
	s.name
	,t.name
FROM sys.tables t
LEFT JOIN sys.schemas s ON s.schema_id = t.schema_id 
WHERE s.name = 'dbo'
ORDER BY t.name ASC

SELECT COUNT(*)
FROM sys.tables t
LEFT JOIN sys.schemas s ON s.schema_id = t.schema_id 
WHERE s.name = 'dbo'
ORDER BY t.name ASC
