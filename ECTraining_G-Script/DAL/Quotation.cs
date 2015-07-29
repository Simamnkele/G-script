using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Quotation
    {
        
        public int quotationID { get; set; }
        public int companyID { get; set; }
        public int courseID { get; set; }
        public string userID { get; set; }

        public DateTime dateCreated { get; set; }
        public DateTime expiryDate { get; set; }
        public DateTime provStartDate { get; set; }
        public DateTime provEndDate { get; set; }
        public decimal money { get; set; }
        public bool Accepeted { get; set; }


    }
}
