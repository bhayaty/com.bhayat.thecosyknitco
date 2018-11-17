CREATE TABLE [dbo].[Customer]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(255) NOT NULL, 
    [Surname] NVARCHAR(255) NULL, 
    [HouseNameNumber] NVARCHAR(255) NOT NULL, 
    [StreetAddress] NVARCHAR(255) NOT NULL, 
    [AddressLine2] NVARCHAR(255) NULL, 
    [AddressLine3] NVARCHAR(255) NULL, 
    [City] NVARCHAR(255) NOT NULL, 
    [County] NVARCHAR(255) NULL, 
    [PostCode] NVARCHAR(100) NOT NULL, 
    [Country] INT NOT NULL, 
    [HomePhone] NVARCHAR(15) NULL, 
    [Mobile] NVARCHAR(15) NULL, 
    [Email] NVARCHAR(15) NOT NULL, 
    [Instagram] NVARCHAR(255) NULL, 
    [Notes] NVARCHAR(255) NULL, 
    [IsBrandRep] BIT NOT NULL DEFAULT 0, 
    [IsKeyCustomer] BIT NOT NULL DEFAULT 0, 
    [UniqueDiscountCode] INT NULL, 
    [SecondaryUniqueDiscountCode] INT NULL 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'All customers details',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Internal Customer ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'First and other names',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'FirstName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Surname(s)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'Surname'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'House name or number',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'HouseNameNumber'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Customer street address',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'StreetAddress'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Customer address line 2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'AddressLine2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Customer Address Line 3',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'AddressLine3'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Customer address city',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'City'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Customer address County',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'County'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Customer address postcode',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'PostCode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Customer address country ID look up',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'Country'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Home phone number',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'HomePhone'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Mobile phone number',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'Mobile'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'E-mail address',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'Email'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Instagram username',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'Instagram'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Additional notes on the customer',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'Notes'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Is this a Brand Rep?',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'IsBrandRep'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Mark customer as a key customer',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'IsKeyCustomer'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'This customers personal unique discount code',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'UniqueDiscountCode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'This customers discount code they can offer others',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customer',
    @level2type = N'COLUMN',
    @level2name = N'SecondaryUniqueDiscountCode'