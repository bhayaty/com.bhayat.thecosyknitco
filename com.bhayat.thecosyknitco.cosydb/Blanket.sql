CREATE TABLE [dbo].[Blanket]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(255) NOT NULL, 
	[Description] NVARCHAR(MAX) NULL, 
    [LengthCM] DECIMAL(6, 2) NOT NULL, 
    [WidthCM] DECIMAL(6, 2) NOT NULL, 
    [LengthIN] DECIMAL(6, 2) NOT NULL, 
    [WidthIN] DECIMAL(6, 2) NOT NULL, 
    [RequiredWool] DECIMAL(6, 2) NOT NULL, 
    [ShippingLengthCM] DECIMAL(6, 2) NULL, 
    [ShippingWidthCM] DECIMAL(6, 2) NULL, 
    [ShippingHeightCM] DECIMAL(6, 2) NULL, 
    [ShippingLengthIN] DECIMAL(6, 2) NULL, 
    [ShippingWidthIN] DECIMAL(6, 2) NULL, 
    [ShippingHeightIN] DECIMAL(6, 2) NULL, 
    [ShippingWeightKg] DECIMAL(6, 2) NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Blanket Internal ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Blanket Name',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Blanket Length in cm',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'LengthCM'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Blanket Width in cm',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'WidthCM'
GO

GO

GO

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Blanket Width in inches',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'WidthIN'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Blanket Length in inches',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'LengthIN'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Amount of Wool required in Kg',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'RequiredWool'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Length of folded blanket for shipping in cm',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'ShippingLengthCM'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Width of folded blanket for shipping in cm',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'ShippingWidthCM'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Height of folded blanket for shipping in cm',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'ShippingHeightCM'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Length of folded blanket for shipping in inches',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'ShippingLengthIN'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Width of folded blanket for shipping in inches',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'ShippingWidthIN'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Height of folded blanket for shipping in inches',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'ShippingHeightIN'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Types of Blankets',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Weight of the shipping item',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Blanket',
    @level2type = N'COLUMN',
    @level2name = N'ShippingWeightKg'