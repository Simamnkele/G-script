using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class CourseModuleDBAccess
    {
        public bool InserModulesForCourse(int moduleNo)
        {
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ModuleNo", moduleNo)
            };
            return DBHelper.ExecuteNonQuery("uspInsertModulesForCourse", CommandType.StoredProcedure, param);
        }
    }
}
