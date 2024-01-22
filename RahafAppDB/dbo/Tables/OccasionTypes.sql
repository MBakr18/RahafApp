CREATE TABLE [dbo].[OccasionTypes]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] VARCHAR(50) NOT NULL, 
    [Description] VARCHAR(200) NOT NULL, 
    [Price] MONEY NOT NULL, 
)
