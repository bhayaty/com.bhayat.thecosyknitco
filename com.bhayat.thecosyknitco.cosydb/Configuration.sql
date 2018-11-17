CREATE TABLE [dbo].[Configuration]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(255) NULL, 
    [StandardShippingCharge] NUMERIC(8, 2) NOT NULL, 
    [FreeShippingThreshold] NUMERIC(8, 2) NOT NULL, 
    [IncludeFreeShipping] BIT NOT NULL, 
    [Active] BIT NOT NULL, 
    [CreatedDate] DATETIME2 NOT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Configuration Table - create a configuration set with different values',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Configuration',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Configuration Internal ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Configuration',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Friendly name for the configuration',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Configuration',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Description for the configuration',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Configuration',
    @level2type = N'COLUMN',
    @level2name = N'Description'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Standard charge to a customer for Shipping',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Configuration',
    @level2type = N'COLUMN',
    @level2name = N'StandardShippingCharge'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The threshold value above which free shipping applies',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Configuration',
    @level2type = N'COLUMN',
    @level2name = N'FreeShippingThreshold'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'indicates if free shipping should be applied (uses the threshold)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Configuration',
    @level2type = N'COLUMN',
    @level2name = N'IncludeFreeShipping'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Indicates if this is the active configuration',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Configuration',
    @level2type = N'COLUMN',
    @level2name = N'Active'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Date and time the configuration was created',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Configuration',
    @level2type = N'COLUMN',
    @level2name = N'CreatedDate'