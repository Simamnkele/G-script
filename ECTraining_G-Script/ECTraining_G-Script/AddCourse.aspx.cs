using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DAL;
using BLL;

namespace ECTraining_G_Script
{
    public partial class AddCourse : System.Web.UI.Page
    {
        DBHandler handler = null;
        int cNo;
        int cDura;
        double cPrice;
        protected void Page_Load(object sender, EventArgs e)
        {
            handler = new DBHandler();
            if(!IsPostBack)
            {
                BindData();
            }
        }
        public void BindData()
        {
            List<Modules> modules = handler.GetModulesList();
            gvModulesData.DataSource = modules;
            gvModulesData.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Course course = new Course();
            course.courseName = txtCourseName.Text;
            course.courseDescription = txtDesc.Text;
            int duration = 0;
            double price = 0;

            if (handler.AddNewCourse(course) == true)
            {
                CourseModule cm = new CourseModule();
                foreach (GridViewRow row in gvModulesData.Rows)
                {
                    var check = row.FindControl("cbModule") as CheckBox;
                    if (check.Checked)
                    {
                        var moduleNo = row.FindControl("moduleNo") as HiddenField;
                        int module = Convert.ToInt32(moduleNo.Value.ToString());
                        handler.InserModulesForCourse(module);
                        duration += cDura;
                        price += cPrice;
                        DataTable courseNo = new DataTable();
                        courseNo = handler.GetMaxCourseNo();
                        course.courseNo = Convert.ToInt32(courseNo.Rows[0]["CourseNo"].ToString());
                        course.duration = duration;
                        course.price = price;
                        if (handler.UpdateCourse(course) == true)
                        {
                            Response.Redirect("AddCourse.aspx");
                        }

                        //Response.Write(moduleNo.Value.ToString() + ("<br>"));



                    }
                    //if(((CheckBox)row.FindControl("cbModule")).Checked)
                    //{

                    //    cm.moduleNo = cNo;
                    //    
                    //    if(handler.InserModulesForCourse(cm)==true)
                    //    {
                    //        //Response.Redirect("Courses.aspx");
                    //    }

                    //}
                    //    }
                    
                }
            }

        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Courses.aspx");
        }

        protected void gvModulesData_SelectedIndexChanged(object sender, EventArgs e)
        {
            //cNo = Convert.ToInt32(gvModulesData.DataKeys[gvModulesData.SelectedRow.RowIndex].Value.ToString());
            cDura = Convert.ToInt32(gvModulesData.SelectedRow.Cells[3].ToString());
            cPrice = Convert.ToDouble(gvModulesData.SelectedRow.Cells[4].ToString());
        }
    }
}