:setvar SqlSamplesSourceDataPath "D:\UWA\2023-Sem 1\Data Warehousing\Project 1\"

:setvar DatabaseName "CrimeDW"

BULK INSERT [dbo].[DimBeat] FROM '$(SqlSamplesSourceDataPath)dimBeat.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
    DATAFILETYPE='char',
	FIRSTROW = 2,
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);

BULK INSERT [dbo].[DimCrime] FROM '$(SqlSamplesSourceDataPath)dimCrime.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
    DATAFILETYPE='char',
	FIRSTROW = 2,
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);

BULK INSERT [dbo].[DimLocation] FROM '$(SqlSamplesSourceDataPath)dimLocation.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
    DATAFILETYPE='char',
	FIRSTROW = 2,
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);

BULK INSERT [dbo].[DimTime] FROM '$(SqlSamplesSourceDataPath)dimTime.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
    DATAFILETYPE='char',
	FIRSTROW = 2,
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);

BULK INSERT [dbo].[DimType] FROM '$(SqlSamplesSourceDataPath)dimType.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
    DATAFILETYPE='char',
	FIRSTROW = 2,
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);


BULK INSERT [dbo].[FactTable] FROM '$(SqlSamplesSourceDataPath)factTable.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
    DATAFILETYPE='char',
	FIRSTROW = 2,
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    --KEEPIDENTITY,
    TABLOCK
);
