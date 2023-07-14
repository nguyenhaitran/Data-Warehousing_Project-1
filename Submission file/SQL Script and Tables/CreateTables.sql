PRINT '';
PRINT '*** Creating Table DimBeat';
GO

Create table DimBeat
(
ID int primary key identity,
beat int not null,
zone_from_beat int not null
)
GO

PRINT '';
PRINT '*** Creating Table DimCrime';
GO

Create table DimCrime
(
ID int primary key identity,
crime varchar(30) not null,
type_of_crime varchar(8) not null
)
GO

PRINT '';
PRINT '*** Creating Table DimLocation';
GO

Create table DimLocation
(
ID int primary key identity,
road varchar(100) not null,
neighborhood varchar(100) not null,
postcode int not null,
npu varchar(10) not null,
county varchar(20) not null
)
GO

PRINT '';
PRINT '*** Creating Table DimTime';
GO

Create table DimTime
(
ID int primary key identity,
date_original varchar(10) not null,
date_str varchar(10) not null,
months int not null,
day_from_month int not null,
year_from_data int not null,
quater varchar(2) not null
)
GO

PRINT '';
PRINT '*** Creating Table DimType';
GO

Create table DimType
(
ID int primary key identity,
type_of_crime_location varchar(12) not null
)
GO

PRINT '';
PRINT '*** Creating Table FactTable';
GO

Create table FactTable
(
ID bigint primary key identity,
Location_ID int not null,
Time_ID int not null,
Beat_ID int not null,
Type_of_crime_location_ID int not null,
Crime_ID int not null,
Count_crime int not null
)
GO
