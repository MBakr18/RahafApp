CREATE PROCEDURE [dbo].[spClients_Insert]
	@firstName VARCHAR(50),
	@lastName VARCHAR(50),
	@phoneNumber VARCHAR(20)
AS
BEGIN
	SET NOCOUNT on;
	IF NOT EXISTS (SELECT 1 FROM DBO.Clients WHERE FirstName= @firstName AND LastName =@lastName OR PhoneNumber = @phoneNumber)
	BEGIN
		INSERT INTO dbo.CLIENTS(FirstName, LastName, PhoneNumber)
		VALUES (@firstName, @lastName, @phoneNumber)
	END
	
	SELECT TOP 1 [Id], [FirstName], [LastName], [PhoneNumber]
	FROM [dbo].[Clients]
	WHERE [FirstName] = @firstName AND [LastName] = @lastName AND [PhoneNumber] = @phoneNumber
END
