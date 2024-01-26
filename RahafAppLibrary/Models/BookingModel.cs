using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RahafAppLibrary.Models
{
    public class BookingModel
    {
        public int Id { get; set; }
        public int ClientId { get; set; }
        public int OccasionId { get; set; }
        public DateTime BookingDate { get; set; }
        public decimal DepositAmount { get; set; }
        public decimal RemainAmount { get; set; }
        public bool CheckedIn { get; set; }
    }
}
