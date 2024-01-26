CREATE TABLE [dbo].[Bookings]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
	[ClientId] INT NOT NULL,
	[OccasionId] INT NOT NULL, 
	[BookingDate] DATE NOT NULL DEFAULT GETDATE(),
	[DepositAmount] MONEY NOT NULL, 
	[RemainAmount] MONEY NOT NULL,
	[CheckedIn] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Bookings_Occasions] FOREIGN KEY ([OccasionId]) REFERENCES [Occasions](Id), 
	CONSTRAINT [FK_Bookings_Clients] FOREIGN KEY (ClientId) REFERENCES [Clients](Id)
)
