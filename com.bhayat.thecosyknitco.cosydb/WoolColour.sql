CREATE TABLE [dbo].[WoolColour]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [WoolType] INT NOT NULL, 
    [Colour] INT NOT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Colours available for a specific wool type',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'WoolColour',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Internal ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'WoolColour',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Wool type ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'WoolColour',
    @level2type = N'COLUMN',
    @level2name = N'WoolType'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Colour ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'WoolColour',
    @level2type = N'COLUMN',
    @level2name = N'Colour'