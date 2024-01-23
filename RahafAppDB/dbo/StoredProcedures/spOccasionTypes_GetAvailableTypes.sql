CREATE PROCEDURE [dbo].[spOccasionTypes_GetAvailableTypes]
	@bookingDate DATE,
	@occasionDate DATE
AS
BEGIN
	SET NOCOUNT ON;
	select B.Id, (C.FirstName + ' ' + C.LastName) as "Full Name",
	OT.Title , OT.Description, OT.Price
	from 
		Bookings B inner join Occasions O on B.ID = O.ID
	inner join 
		OccasionTypes OT on OT.ID = O.ID
	inner join 
		Clients C on C.ID = B.ID
	Where 
		B.BookingDate = @bookingDate and O.OccasionDate = @occasionDate
END
