USE CrimeDW;
GO
CREATE VIEW [dbo].[vAssocSeqCrime]
AS
SELECT DISTINCT Fact.Crime_ID, Crime.crime
FROM [dbo].[FactTable] AS Fact 
JOIN [dbo].[DimCrime] AS Crime ON Fact.Crime_ID = Crime.ID 
GO