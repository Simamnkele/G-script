using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace ECTraining_G_Script
{
    public partial class DeletedModules : System.Web.UI.Page
    {
        DBHandler handler = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            handler = new DBHandler();
            if (IsPostBack == false)
            {
                BindData();
            }
        }
        private void BindData()
        {
            List<Modules> modulesList = handler.GetModulesDeleteList();
            gvModulesData.DataSource = modulesList;
            gvModulesData.DataBind();
        }

        protected void gvModulesData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            HiddenField field = gvModulesData.Rows[e.RowIndex].FindControl("moduleNo") as HiddenField;
            int id = Convert.ToInt32(field.Value);

            if (handler.ActivateModule(id) == true)
            {
                lblResult.Text = "Module is Activated Successfully";
            }
            else
            {
                lblResult.Text = "Failed to Activate Module";
            }
            gvModulesData.EditIndex = -1;
            BindData();

        }
    }
}