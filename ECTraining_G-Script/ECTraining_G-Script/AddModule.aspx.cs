using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;

namespace ECTraining_G_Script
{
    public partial class AddModule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtModuleName.Focus();
            if (ddLevel.SelectedIndex == 0)
            {
                txtDura.Text = "1";
            }
            else if (ddLevel.SelectedIndex == 1)
            {
                txtDura.Text = "2";
            }
            else if (ddLevel.SelectedIndex == 2)
            {
                txtDura.Text = "3";
            }
             
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Modules module = new Modules();
            module.moduleName = txtModuleName.Text;
            module.moduleLevel = ddLevel.SelectedValue.ToString();
            module.moduleDuration = Convert.ToInt32(txtDura.Text);
            module.modulePrice = Convert.ToDouble(txtPrice.Text);
            module.moduleDescription = txtDesc.Text;
            


            DBHandler handler = new DBHandler();

            if (handler.AddNewModule(module) == true)
            {
                Response.Redirect("ModulesList.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModulesList.aspx");
        }

        protected void ddLevel_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddLevel.SelectedIndex == 0)
            {
                txtDura.Text = "1";
            }
            else if (ddLevel.SelectedIndex == 1)
            {
                txtDura.Text = "2";
            }
            else if (ddLevel.SelectedIndex == 2)
            {
                txtDura.Text = "3";
            }
        }
    }
}