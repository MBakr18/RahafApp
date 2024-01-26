CREATE PROCEDURE [dbo].[spOccasions_GetAvailableOccasions]
	@occasionDate DATE
AS
BEGIN
	SET NOCOUNT ON;
	select B.Id, (C.FirstName + ' ' + C.LastName) as "Full Name", OT.Id,
	OT.Title , OT.Description, OT.Price
	from 
		Bookings B inner join Occasions O on B.OccasionId = O.ID
	inner join 
		Clients C on B.ClientId = C.ID 
	inner join 
		OccasionTypes OT on O.OccasionTypeId = OT.ID 
	Where 
		O.OccasionDate = @occasionDate
END
