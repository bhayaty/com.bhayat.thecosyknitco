CREATE TABLE [dbo].[DiscountCode]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [DiscountCode] NVARCHAR(50) NOT NULL, 
    [Name] NVARCHAR(255) NOT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [StartDate] DATETIME2 NOT NULL, 
    [EndDate] DATETIME2 NOT NULL, 
    [IsProductDiscount] BIT NOT NULL, 
    [Product] INT NULL, 
    [DiscountPercent] DECIMAL(8, 2) NULL, 
    [DiscountAmount] DECIMAL(6, 2) NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Table of discount codes',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DiscountCode',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The actual discount code',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DiscountCode',
    @level2type = N'COLUMN',
    @level2name = N'DiscountCode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Friendly name/short description',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DiscountCode',
    @level2type = N'COLUMN',
    @level2name = N'Name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Full description of the discount code',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DiscountCode',
    @level2type = N'COLUMN',
    @level2name = N'Description'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Start Date when the code can be used',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DiscountCode',
    @level2type = N'COLUMN',
    @level2name = N'StartDate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Date when the code expires',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DiscountCode',
    @level2type = N'COLUMN',
    @level2name = N'EndDate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Product ID to which the discount relates (if product level discount)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DiscountCode',
    @level2type = N'COLUMN',
    @level2name = N'Product'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Is this a product level discount (if not, considered order level)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DiscountCode',
    @level2type = N'COLUMN',
    @level2name = N'IsProductDiscount'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Percentage discount',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DiscountCode',
    @level2type = N'COLUMN',
    @level2name = N'DiscountPercent'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Discount Amount (if monetary)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'DiscountCode',
    @level2type = N'COLUMN',
    @level2name = N'DiscountAmount'