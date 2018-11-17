CREATE TABLE [dbo].[Supplier]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(255) NOT NULL, 
    [Address1] NVARCHAR(100) NULL, 
    [Address2] NVARCHAR(100) NULL, 
    [AddressCity] NVARCHAR(100) NULL, 
    [AddressCounty] NVARCHAR(100) NULL, 
    [AddressPostCode] NVARCHAR(100) NULL, 
    [AddressCountry] INT NULL, 
    [Web] NVARCHAR(MAX) NULL, 
    [PrimaryEmail] NVARCHAR(255) NULL, 
    [PrimaryTelephone] NVARCHAR(15) NULL, 
    [ContactName] NVARCHAR(255) NULL, 
    [ContactEmail] NVARCHAR(255) NULL, 
    [ContactTelephone] NVARCHAR(15) NULL, 
    [Notes] NVARCHAR(MAX) NULL, 
    [StandardDeliveryCost] NUMERIC(8, 2) NULL, 
    [Active] BIT NOT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Suppliers Table',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Internal Supplier ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Name of the supplier',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Supplier address line 1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'Address1'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Supplier address line 2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'Address2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Supplier address City',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'AddressCity'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Supplier address county',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'AddressCounty'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Supplier Address Post Code',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'AddressPostCode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Supplier Address Country lookup',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'AddressCountry'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Supplier''s website',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'Web'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Primary e-mail address for supplier',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'PrimaryEmail'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Supplier primary telephone',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = 'PrimaryTelephone'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Named contact at the supplier',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'ContactName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Named contact email',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'ContactEmail'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Named contact telephone',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'ContactTelephone'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Additional notes',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'Notes'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Standard delivery cost for Wool from supplier',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'StandardDeliveryCost'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Indicates a supplier that you can use',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Supplier',
    @level2type = N'COLUMN',
    @level2name = N'Active'