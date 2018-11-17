CREATE TABLE [dbo].[BlanketShippingCost]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Courier] INT NOT NULL, 
    [Wool] INT NOT NULL, 
    [Blanket] INT NOT NULL, 
    [Cost] NUMERIC(8, 2) NOT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Courier ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'BlanketShippingCost',
    @level2type = N'COLUMN',
    @level2name = 'Courier'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Wool ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'BlanketShippingCost',
    @level2type = N'COLUMN',
    @level2name = N'Wool'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Blanket ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'BlanketShippingCost',
    @level2type = N'COLUMN',
    @level2name = N'Blanket'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Shipping cost',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'BlanketShippingCost',
    @level2type = N'COLUMN',
    @level2name = N'Cost'