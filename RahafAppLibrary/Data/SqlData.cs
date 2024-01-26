using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RahafAppLibrary.Databases;
using RahafAppLibrary.Models;

namespace RahafAppLibrary.Data
{
    public class SqlData : IDatabaseData
    {
        private readonly ISqlDataAccess _db;
        private const string ConnectionStringName = "SqlDb";
        public SqlData(ISqlDataAccess db)
        {
            _db = db;
        }
        
        public List<OccasionModel> GetAvailableOccasions(DateTime occasionDate)
        {
            return _db.LoadData<OccasionModel, dynamic>("dbo.spOccasions_GetAvailableOccasions",
                new { OccasionDate = occasionDate.Date },
                ConnectionStringName,
                true);
        }

        public void BookClient(string firstName, string lastName, string phoneNumber,
            int occasionTypeId, DateTime occasionDate, decimal depositAmount)
        {
            ClientModel client = _db.LoadData<ClientModel, dynamic>("dbo.spClients_Insert", 
                new{ firstName, lastName, phoneNumber }, 
                ConnectionStringName,
                true).First();

            OccasionTypeModel occasionType = _db.LoadData<OccasionTypeModel, dynamic>("dbo.spOccasionTypes_GetById",
                               new { Id = occasionTypeId },
                                              ConnectionStringName,
                                              true).First();

            OccasionModel occasion = _db.LoadData<OccasionModel, dynamic>("dbo.spOccasions_Insert",
                new
                {
                    occasionTypeId,
                    occasionDate.Date
                },
                ConnectionStringName,
                true).First();

            decimal remainAmount = occasionType.Price - depositAmount;
            _db.SaveData("dbo.spBookings_Insert", 
                new
                {
                    ClientId = client.Id, 
                    OccasionId = occasion.Id,
                    DepositAmount = depositAmount,
                    RemainAmount = remainAmount,
                    CheckedIn = false
                }, 
                ConnectionStringName,
                true);
        }

        public List<BookingModel> SearchBookings(string lastName)
        {
            return _db.LoadData<BookingModel, dynamic>("dbo.spClients_Search",
                               new
                               {
                                   lastName
                               },
                               ConnectionStringName,
                               true);
        }
    }
}
