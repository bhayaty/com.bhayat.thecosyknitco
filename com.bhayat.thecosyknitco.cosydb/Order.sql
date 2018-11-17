CREATE TABLE [dbo].[Order]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OrderNumber] NVARCHAR(10) NOT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'All orders received',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Order',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Internal ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Order',
    @level2type = N'COLUMN',
    @level2name = N'ID'