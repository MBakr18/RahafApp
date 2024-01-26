CREATE PROCEDURE [dbo].[spBookings_Insert]
	@ClientId INT,
	@OccasionId INT,
	@DepositAmount MONEY,
	@RemainAmount MONEY,
	@CheckedIn BIT
AS
BEGIN
	SET NOCOUNT on;
	INSERT INTO dbo.Bookings(ClientId, OccasionId, DepositAmount, RemainAmount, CheckedIn)
	VALUES (@ClientId, @OccasionId, @DepositAmount, @RemainAmount, @CheckedIn)	
END
