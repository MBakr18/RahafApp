select B.Id, C.FirstName, C.LastName, OT.Title,
OT.Description,  O.OccasionDate, OT.Price,B.DepositAmount, B.RemainAmount
from Bookings B 
inner join Occasions O on B.OccasionId = O.ID
inner join Clients C on B.ClientId = C.ID 
inner join OccasionTypes OT on O.OccasionTypeId = OT.ID 
Where C.LastName = 'Bakr' And O.OccasionDate = '2024-01-03'