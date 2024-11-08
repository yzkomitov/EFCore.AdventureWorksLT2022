IF NOT EXISTS
(
	SELECT 1
    FROM sys.tables
    WHERE name like 'AccountManager'
)
BEGIN
	CREATE TABLE [SalesLT].[AccountManager]
	(
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[AccountManagerName] [nvarchar](100) NOT NULL
	) 
	ON [PRIMARY]
END

IF NOT EXISTS
(
	SELECT 1
    FROM sys.tables
    WHERE name like 'CustomerAccountManager'
)
BEGIN
	CREATE TABLE [SalesLT].[CustomerAccountManager]
	(
		[CustomerId] [int] NOT NULL,
		[AccountManagerId] [int] NOT NULL
	) 
	ON [PRIMARY]
END