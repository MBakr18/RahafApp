CREATE TABLE [dbo].[Occasions]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OccasionTypeId] INT NOT NULL, 
    [OccasionDate] DATE NOT NULL, 
    CONSTRAINT [FK_Occasions_OccasionTypes] FOREIGN KEY (OccasionTypeId) REFERENCES OccasionTypes(Id)
)
