USE CrimeDW;
GO
CREATE VIEW [dbo].[vAssocSeqLineCrime]
AS
SELECT Fact.ID, Crime.ID, Postcode.postcode, Type_of_crime_location.type_of_crime_location
FROM [dbo].[FactTable] AS Fact 
JOIN [dbo].[DimCrime] AS Crime ON Fact.Crime_ID = Crime.ID 
JOIN [dbo].[DimType] AS Type_of_crime_location ON Fact.Beat_ID = Type_of_crime_location.ID
JOIN [dbo].[DimLocation] AS Postcode ON Fact.Location_ID = Postcode.ID;
GO