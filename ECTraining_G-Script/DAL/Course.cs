using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Course
    {
        public int courseNo { get; set; }
        public string courseName { get; set; }
        public string courseDescription { get; set; }
        public int duration { get; set; }
        public double price { get; set; }
    }
}
