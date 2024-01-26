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
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public string? Title { get; set; }
        public string? Description { get; set; }
        public DateTime OccasionDate { get; set; }
        Decimal Price { get; set; }
        public decimal DepositAmount { get; set; }
        public decimal RemainAmount { get; set; }
        public bool CheckedIn { get; set; }
    }
}
