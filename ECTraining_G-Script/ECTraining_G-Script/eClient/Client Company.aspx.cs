using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using BLL;
using DAL;
using System.Data.Entity;
using ECTraining_G_Script.Models;

public partial class eClient_Client_Company : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //var user = new ApplicationUser();
        //UserManager manager = new UserManager();

        //BusinessLogicHandler myHandler = new BusinessLogicHandler();

        //Company company = new Company();

        //List<Company> companyList = new List<Company>();

        //companyList = myHandler.GetCompanyDetails(user.Id);

        //foreach (var item in companyList)
        //{
           
        //}
    }
    public void UpdateCompanyDetails_Click(object sender, EventArgs e)
    {
        var user = new ApplicationUser();
        //var manager = new UserManager { };
        DBHandler myHandler = new DBHandler();

        Company company = new Company();

        List<Company> companyList = new List<Company>();

        companyList = myHandler.GetCompanyDetails(user.Id);

        foreach (var item in companyList)
        {
            /*CompanyName.Text = item.Name;
            ContactPerson.Text = item.ContactPerson;
            CellNo.Text = item.CellNo;
            TellNo.Text = item.TellNo;
            Address.InnerText = item.Address;*/
        }

    }
}