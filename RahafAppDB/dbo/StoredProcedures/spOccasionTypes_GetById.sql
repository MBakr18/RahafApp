CREATE PROCEDURE [dbo].[spOccasionTypes_GetById]
	@Id INT
AS
BEGIN
	SET NOCOUNT on;
	SELECT * FROM dbo.OccasionTypes WHERE Id = @Id
END
