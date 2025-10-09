USE AdventureWorks;
GO
SELECT * FROM sys.tables;

SELECT
s.name AS SchemaName,
t.name AS TableName
FROM
sys.tables t
JOIN
sys.schemas s ON t.schema_id =s.schema_id
ORDER BY
s.name, t.na
me;