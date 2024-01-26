using RahafAppLibrary.Models;

namespace RahafAppLibrary.Data;

public interface IDatabaseData
{
    List<OccasionModel> GetAvailableOccasions(DateTime occasionDate);

    void BookClient(string firstName, string lastName, string phoneNumber,
        int occasionTypeId, DateTime occasionDate, decimal depositAmount);

    List<BookingModel> SearchBookings(string lastName);
}