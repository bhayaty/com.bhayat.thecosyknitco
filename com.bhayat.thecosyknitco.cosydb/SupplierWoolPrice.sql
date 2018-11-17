CREATE TABLE [dbo].[SupplierWoolPrice]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Supplier] INT NOT NULL, 
    [Wool] INT NOT NULL, 
    [PriceKg] NUMERIC(8, 2) NOT NULL, 
    [Date] DATE NOT NULL 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Specific Wool prices for a supplier',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'SupplierWoolPrice',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Supplier ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'SupplierWoolPrice',
    @level2type = N'COLUMN',
    @level2name = N'Supplier'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Wool type ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'SupplierWoolPrice',
    @level2type = N'COLUMN',
    @level2name = N'Wool'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Wool price per Kg',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'SupplierWoolPrice',
    @level2type = N'COLUMN',
    @level2name = 'PriceKg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Date of price change (or date entered into the system) - Most recent date for given supplier is used',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'SupplierWoolPrice',
    @level2type = N'COLUMN',
    @level2name = N'Date'
GO

CREATE INDEX [IX_SupplierWoolPrices_Column] ON [dbo].[SupplierWoolPrice] ([Date] DESC, [Wool], [Supplier])
