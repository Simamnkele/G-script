using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using DAL;
using BLL;

namespace ECTraining_G_Script
{
    
    public partial class ModulesList : System.Web.UI.Page
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
            List<Modules> modulesList = handler.GetModulesList();
            gvModulesData.DataSource = modulesList;
            gvModulesData.DataBind();
        }

        protected void btnAddModule_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddModule.aspx");
        }
        
        protected void gvModulesData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            HiddenField field = gvModulesData.Rows[e.RowIndex].FindControl("moduleNo") as HiddenField;
            int id = Convert.ToInt32(field.Value);

            if (handler.DeleteModule(id) == true)
            {
                lblResult.Text = "Module is Deactivated Successfully";
            }
            else
            {
                lblResult.Text = "Failed to Deactivate Module";
            }
            gvModulesData.EditIndex = -1;
            BindData();

        }


        protected void gvModulesData_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int index = gvModulesData.SelectedIndex;
            //int primaryKey = Convert.ToInt32(gvModulesData.DataKeys[index].Value.ToString());
            //MessageBox.Show("key is" + primaryKey);
        }

        
        
        

        

        
    }
}