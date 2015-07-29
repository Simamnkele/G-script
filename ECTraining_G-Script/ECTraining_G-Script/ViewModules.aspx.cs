using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using DAL;

namespace ECTraining_G_Script
{
    public partial class ViewModules : System.Web.UI.Page
    {
        DBHandler handler = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            handler = new DBHandler();
            if (IsPostBack == false)
            {
                BindData();
                DataTable mod = new DataTable();
                handler = new DBHandler();
                mod = handler.GetModuleDetails(Convert.ToInt32(DropDownListModules.SelectedItem.Value));
                txtModulePrice.Text = "R ";
                //module.moduleNo = Convert.ToInt32(DropDownListModules.SelectedItem.Value.Trim());
                //Modules module = handler.GetModuleDetails(Convert.ToInt32(DropDownListModules.SelectedItem.Value));
                //handler.GetModuleDetails(Convert.ToInt32(DropDownListModules.SelectedItem.Value.Trim()));
                txtModuleName.Text = mod.Rows[0]["ModuleName"].ToString();
                txtMdouleDuration.Text = mod.Rows[0]["ModuleDuration"].ToString();
                double price = Convert.ToDouble(mod.Rows[0]["ModulePrice"]);
                txtModulePrice.Text += Math.Round(price, 2);
                txtDescription.Text = mod.Rows[0]["ModuleDescription"].ToString();
                txtModuleName.Enabled = false;
                txtMdouleDuration.Enabled = false;
                txtModulePrice.Enabled = false;
            }
            //txtName.Text = DropDownListModules.SelectedItem.ToString();
            
        }
        protected void BindData()
        {
            List<Modules> moduleNames = handler.GetModuleNames();
            DropDownListModules.DataSource = moduleNames;
            DropDownListModules.DataTextField = "ModuleName";
            DropDownListModules.DataValueField = "ModuleNo";
            DropDownListModules.DataBind();
        }

        protected void DropDownListModules_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable mod = new DataTable();
            handler = new DBHandler();
            mod = handler.GetModuleDetails(Convert.ToInt32(DropDownListModules.SelectedItem.Value));


            //module.moduleNo = Convert.ToInt32(DropDownListModules.SelectedItem.Value.Trim());
            //Modules module = handler.GetModuleDetails(Convert.ToInt32(DropDownListModules.SelectedItem.Value));
            //handler.GetModuleDetails(Convert.ToInt32(DropDownListModules.SelectedItem.Value.Trim()));
            txtModulePrice.Text = "R ";
            txtModuleName.Text = mod.Rows[0]["ModuleName"].ToString();
            txtMdouleDuration.Text = mod.Rows[0]["ModuleDuration"].ToString();
            double price = Convert.ToDouble(mod.Rows[0]["ModulePrice"]);
            txtModulePrice.Text += Math.Round(price, 2);
            txtDescription.Text = mod.Rows[0]["ModuleDescription"].ToString();
            txtModuleName.Enabled = false;
            txtMdouleDuration.Enabled = false;
            txtModulePrice.Enabled = false;
            
        }
    }
}