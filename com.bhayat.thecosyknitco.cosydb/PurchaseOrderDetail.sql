CREATE TABLE [dbo].[PurchaseOrderDetail]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [IsWool] BIT NOT NULL, 
    [WoolType] INT NULL, 
    [WoolColour] INT NULL, 
    [Description] NVARCHAR(MAX) NOT NULL, 
    [Quantity] INT NOT NULL, 
    [UnitPrice] NUMERIC(8, 2) NOT NULL DEFAULT 0.00, 
    [NetPrice] NUMERIC(8, 2) NOT NULL DEFAULT 0.00, 
    [Discount] NUMERIC(8, 2) NOT NULL DEFAULT 0.00, 
    [Total] NUMERIC(8, 2) NOT NULL DEFAULT 0.00, 
    [Notes] NVARCHAR(255) NULL, 
    [PurchaseOrderID] INT NOT NULL 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Table of all purchaes made (line detail)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Internal ID of purchased item',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Indicates a wool purchase',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = N'COLUMN',
    @level2name = N'IsWool'
GO

GO

GO

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ID of the wool type',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = N'COLUMN',
    @level2name = N'WoolType'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ID of the Wool Colour',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = N'COLUMN',
    @level2name = N'WoolColour'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Item description - Can be auto populated as WoolType and Colour',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = N'COLUMN',
    @level2name = N'Description'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Item quantity',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = N'COLUMN',
    @level2name = N'Quantity'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Cost per unit/Kg of the item',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = N'COLUMN',
    @level2name = N'UnitPrice'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Base cost of the item',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = N'COLUMN',
    @level2name = N'NetPrice'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Discount amount per line',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = N'COLUMN',
    @level2name = N'Discount'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Per line notes',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = N'COLUMN',
    @level2name = N'Notes'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Total for the order line',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = N'COLUMN',
    @level2name = N'Total'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Internal ID linking to purchase order',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrderDetail',
    @level2type = N'COLUMN',
    @level2name = N'PurchaseOrderID'