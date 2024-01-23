using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RahafAppLibrary.Databases;
using RahafAppLibrary.Models;

namespace RahafAppLibrary.Data
{
    public class SqlData
    {
        private readonly ISqlDataAccess _db;
        private const string ConnectionStringName = "SqlDb";
        public SqlData(ISqlDataAccess db)
        {
            _db = db;
        }
        public List<OccasionTypeModel> GetAvailableOccasionTypes(DateTime bookingDate, DateTime occasionDate)
        {
            return _db.LoadData<OccasionTypeModel, dynamic>("dbo.spOccasionTypes_GetAvailableTypes",
                new { BookingDate = bookingDate, OccasionDate = occasionDate },
                ConnectionStringName,
                true);
        }
    }
}
