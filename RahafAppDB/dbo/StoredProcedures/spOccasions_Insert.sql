CREATE PROCEDURE [dbo].[spOccasions_Insert]
	@OccasionTypeId int,
	@OccasionDate Date
AS
BEGIN
	SET NOCOUNT on;
	INSERT INTO dbo.Occasions(OccasionTypeId, OccasionDate)
	VALUES (@OccasionTypeId, @OccasionDate)
END
