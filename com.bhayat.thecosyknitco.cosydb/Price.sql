CREATE TABLE [dbo].[Price]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Blanket] INT NOT NULL, 
    [Wool] INT NOT NULL, 
    [WoolToPurchaseKg] NUMERIC(8, 2) NOT NULL, 
    [Supplier] INT NOT NULL, 
    [WoolPriceKg] NUMERIC(8, 2) NOT NULL, 
    [NetCost] NUMERIC(8, 2) NOT NULL, 
    [ShippingCost] NUMERIC(8, 2) NOT NULL, 
    [Price] NUMERIC(8, 2) NOT NULL, 
    [Profit] NUMERIC(8, 2) NOT NULL, 
    [ProfitPercent] NUMERIC(8, 2) NOT NULL, 
    [DiscountPercent] NUMERIC(8, 2) NOT NULL, 
    [DiscountPrice] NUMERIC(8, 2) NOT NULL, 
    [DiscountProfit] NUMERIC(8, 2) NOT NULL, 
    [DiscountProfitPercent] NUMERIC(8, 2) NOT NULL, 
    [MaxDiscountToOfferPercent] NUMERIC(8, 2) NOT NULL, 
    [CanOfferFreeShipping] BIT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Holds the price information for each blanket and wool combination',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Price internal ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Blanket ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'Blanket'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Wool ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'Wool'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The amount of wool you will need to actually purchase',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'WoolToPurchaseKg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Supplier ID - who is the supplier will dtermine the cost price',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'Supplier'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Cost of the Wool per Kg based on supplier price',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'WoolPriceKg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Cost of the Wool including delivery charge',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'NetCost'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The amount it will cost us to ship the product to the customer, based on values in the blanket shipping Cost table, the shipping charge, and whether free shipping applies',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'ShippingCost'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'How much we intend to charge the customer for the Blanket',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'Price'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'How much profit we will make in (£)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'Profit'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'How much profit we will make in %',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'ProfitPercent'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Any discount we may choose to apply (%)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'DiscountPercent'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Calculated price to charge based on Discount percentage',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'DiscountPrice'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Profit we will make based on the discount price',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'DiscountProfit'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Percentage of our discount price that is profit',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'DiscountProfitPercent'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The maximum discount percentage you can offer on that blanket ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'MaxDiscountToOfferPercent'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Value to indiciate whether you can offer free shipping (where applicable)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Price',
    @level2type = N'COLUMN',
    @level2name = N'CanOfferFreeShipping'