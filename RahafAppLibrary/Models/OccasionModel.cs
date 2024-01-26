using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RahafAppLibrary.Models
{
    public class OccasionModel
    {
        public int Id { get; set; }
        public int OccasionTypeId { get; set; }
        public DateTime OccasionDate { get; set; }
    }
}
