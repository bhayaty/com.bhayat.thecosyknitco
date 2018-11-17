CREATE TABLE [dbo].[Country]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Code] NVARCHAR(2) NOT NULL, 
    [Name] NVARCHAR(255) NOT NULL, 
    [Default] BIT NOT NULL DEFAULT 0
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'List of Countries',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Country',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Internal ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Country',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Short country code',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Country',
    @level2type = N'COLUMN',
    @level2name = 'Code'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Full name',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Country',
    @level2type = N'COLUMN',
    @level2name = N'Name'