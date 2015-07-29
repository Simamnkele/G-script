using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class ClientQuotationHandler
    {
        public bool CreateQuotation(Quotation quotation) 
        {
            SqlParameter[] Params = new SqlParameter[]
            {
                new SqlParameter("@User_Id", quotation.userID),
                new SqlParameter("@CompanyID", quotation.companyID),
                new SqlParameter("@DateCreated", quotation.dateCreated),
                new SqlParameter("@CourseID",quotation.courseID),
                new SqlParameter("@ExpiryDate", quotation.expiryDate),
                new SqlParameter("@StartDate", quotation.provStartDate),
                new SqlParameter("@EndDate", quotation.provEndDate),
                new SqlParameter("@CourseID",quotation.courseID),
            };
            return DBHelper.ExecuteNonQuery("sp_CreateQuotation", CommandType.StoredProcedure,
                Params);
        }

        public bool DeleteQuotation(int quotationID)
        {
            SqlParameter[] Params = new SqlParameter[]
            {
                new SqlParameter("@QuotationID", quotationID)
            };
            return DBHelper.ExecuteNonQuery("sp_DeleteQuotation", CommandType.StoredProcedure,
                Params);
        }

        public bool UpdateQuotation(Quotation quotation)
        {
            SqlParameter[] Params = new SqlParameter[]
            {
                new SqlParameter("@QuotationID", quotation.quotationID),
                new SqlParameter("@DateCreated",quotation.dateCreated),
                new SqlParameter("@ExpiryDate",quotation.expiryDate),
                new SqlParameter("@StartDate",quotation.provStartDate),
                new SqlParameter("@EndDate",quotation.provEndDate),
                new SqlParameter("@Course",quotation.courseID),
                new SqlParameter("@Status",quotation.Accepeted),
                new SqlParameter("@Price",quotation.money)
            };
            return DBHelper.ExecuteNonQuery("sp_UpdateQuotation", CommandType.StoredProcedure,
                Params);
        }
    }
}
