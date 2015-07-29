using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
using System.Data;


namespace ECTraining_G_Script
{
    public partial class UpdateModule : System.Web.UI.Page
    {
        public int moduleNo = 0;
        DBHandler handler = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            handler = new DBHandler();
            moduleNo = Convert.ToInt32(Request.QueryString["ModuleNo"].ToString());
            if (!IsPostBack)
            {
                
                BindModuleDetails();

            }
            //txtModuleName.Text = moduleNo.ToString();
        }
        private void BindModuleDetails()
        {
            DataTable table = handler.GetModuleInfo(moduleNo);
            lblModuleNo.Text = moduleNo.ToString();
            txtModuleName.Text = table.Rows[0][1].ToString();
            ddLevel.SelectedValue = table.Rows[0][2].ToString();
            txtDura.Text = table.Rows[0][3].ToString();
            double price = Convert.ToDouble(table.Rows[0][4])/*.ToString())*/;
            txtPrice.Text = Math.Round(price, 2).ToString();
            txtDesc.Text = table.Rows[0][5].ToString();

        }

        protected void ddLevel_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (lblModuleNo != null && txtModuleName != null && ddLevel != null && txtDura != null && txtPrice != null && txtDesc != null)
            {

                Modules module = new Modules();
                module.moduleNo = Convert.ToInt32(lblModuleNo.Text.Trim());
                module.moduleName = txtModuleName.Text;
                module.moduleLevel = ddLevel.SelectedValue;
                module.moduleDuration = Convert.ToInt32(txtDura.Text.Trim());
                module.modulePrice = Convert.ToDouble(txtPrice.Text.Trim());
                module.moduleDescription = txtDesc.Text;

                if (handler.UpdateModule(module) == true)
                {
                    Response.Redirect("ModulesList.aspx");
                }
                //else
                //{
                //    lblResult.Text = "Failed to Update Record";
                //}
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModulesList.aspx");
        }
       
    }
}