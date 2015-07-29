using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
   public class CompanyHandler
    {
        public List<Company> GetCompanyDetails(string userId)
        {
            List<Company> companyDetails = null;
            SqlParameter[] Params = { new SqlParameter("@UserID", userId) };
            using (DataTable table = DBHelper.ExecuteParamerizedSelectCommand("sp_SelectCompany", CommandType.StoredProcedure, Params))
            {
                if (table.Rows.Count > 0)
                {
                    companyDetails = new List<Company>();
                    foreach (DataRow row in table.Rows)
                    {
                        Company company = new Company();
                        company.CompanyID = (int)row["CompanyID"];
                        company.Name = row["Name"].ToString();
                        company.userID = row["UserID"].ToString();
                        company.ContactPerson = row["Contact Person"].ToString();
                        company.CellNo = row["Cell No"].ToString();
                        company.TellNo = row["Tell No"].ToString();
                        company.Address = row["Address"].ToString();
                        companyDetails.Add(company);
                    }
                }
            }
            return companyDetails;
        }
        public bool UpdateCompanyDetails(Company company)
        {
            SqlParameter[] Params = new SqlParameter[]
            {
                new SqlParameter("@CompanyID",company.CompanyID),
                new SqlParameter("@Name",company.Name),
                new SqlParameter("@Address",company.Address),
                new SqlParameter("@Telephone",company.TellNo),
                new SqlParameter("@Cellphone",company.CellNo),
                new SqlParameter("@ContactPerson",company.ContactPerson)
                
            };
            return DBHelper.ExecuteNonQuery("sp_UpdateCompany", CommandType.StoredProcedure,
                Params);
        }

        public bool CreateCompany(Company company)
        {
            SqlParameter[] Params = new SqlParameter[]
            {
                new SqlParameter("@CompanyID",company.CompanyID),
                new SqlParameter("@Name",company.Name),
                new SqlParameter("@Address",company.Address),
                new SqlParameter("@Telephone",company.TellNo),
                new SqlParameter("@Cellphone",company.CellNo),
                new SqlParameter("@ContactPerson",company.ContactPerson)
                
            };
            return DBHelper.ExecuteNonQuery("sp_CreateCompany", CommandType.StoredProcedure,
                Params);
        }
    }
}
