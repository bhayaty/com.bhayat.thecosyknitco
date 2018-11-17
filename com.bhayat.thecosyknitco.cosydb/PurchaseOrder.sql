CREATE TABLE [dbo].[PurchaseOrder]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OrderDate] DATE NOT NULL, 
    [Supplier] INT NOT NULL, 
    [OrderNumber] NVARCHAR(50) NULL, 
    [Net] NUMERIC(8, 2) NOT NULL DEFAULT 0.00, 
    [Discount] NUMERIC(8, 2) NOT NULL DEFAULT 0.00, 
    [DeliveryCost] NUMERIC(8, 2) NOT NULL DEFAULT 0.00, 
    [OrderTotal] NUMERIC(8, 2) NOT NULL DEFAULT 0.00, 
    [OrderReceived] DATE NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'A complete purchase order consisting of purchase lines from the Purchase table',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrder',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Internal ID of the purchase Order',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrder',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Date of the order',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrder',
    @level2type = N'COLUMN',
    @level2name = N'OrderDate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Supplier ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrder',
    @level2type = N'COLUMN',
    @level2name = N'Supplier'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Order number as provided by the supplier',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrder',
    @level2type = N'COLUMN',
    @level2name = N'OrderNumber'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Net cost of the order',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrder',
    @level2type = N'COLUMN',
    @level2name = N'Net'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Any discount amount for the overall order',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrder',
    @level2type = N'COLUMN',
    @level2name = N'Discount'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Cost of delivery for the order',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrder',
    @level2type = N'COLUMN',
    @level2name = N'DeliveryCost'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Date the purchase order was received',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PurchaseOrder',
    @level2type = N'COLUMN',
    @level2name = N'OrderReceived'