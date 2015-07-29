using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class CourseDBAccess
    {
        public bool AddCourse(Course course)
        {
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@CourseName", course.courseName),
                new SqlParameter("@CourseDescription", course.courseDescription)
            };
            return DBHelper.ExecuteNonQuery("uspInsertNewCourse", CommandType.StoredProcedure, param);
        }
        public DataTable GetMaxCourseNo()
        {
            DataTable table = new DataTable();
             table = DBHelper.ExecuteSelectCommand("uspGetCourseNo", CommandType.StoredProcedure);
            return table;
        }
        public bool UpdateCourse(Course course)
        {
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@courseNo", course.courseNo),
                new SqlParameter("@TotalDuration", course.duration),
                new SqlParameter("@TotalCost", course.price)
            };
            return DBHelper.ExecuteNonQuery("uspInsertDurationPrice", CommandType.StoredProcedure, param);
        }
    }
}
