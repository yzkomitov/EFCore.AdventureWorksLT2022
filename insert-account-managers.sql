INSERT INTO [SalesLT].[AccountManager] ([AccountManagerName])
VALUES 
    ('Alice Johnson'),
    ('Bob Smith'),
    ('Carol Williams'),
    ('David Brown'),
    ('Emma Jones'),
    ('Frank Miller'),
    ('Grace Davis'),
    ('Henry Wilson'),
    ('Ivy Moore'),
    ('Jack Taylor'),
    ('Kathy Anderson'),
    ('Liam Thomas'),
    ('Mona White'),
    ('Nathan Harris'),
    ('Olivia Martin'),
    ('Paul Thompson'),
    ('Quinn Clark'),
    ('Rachel Lewis'),
    ('Sam Young'),
    ('Tina Hall');
GO

INSERT INTO [AdventureWorksLT2022].[SalesLT].[CustomerAccountManager] (CustomerId, AccountManagerId)
SELECT CustomerId, ABS(CHECKSUM(NEWID()) % 20) + 1
FROM [AdventureWorksLT2022].[SalesLT].[Customer]
GO