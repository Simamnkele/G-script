using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ApplicationServices;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using DataAccess;
using BusinessLogic;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using Microsoft.Owin.Security;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using WebSite2;

public partial class eClient_Request_Training : System.Web.UI.Page
{
    UserManager manager = new UserManager();
    BusinessLogicHandler myHandler = new BusinessLogicHandler();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (User.Identity.IsAuthenticated == false) 
        {
            Response.Redirect("~/Account/Login.aspx");
        }

      
        

    }


    //public async Task<IdentityResult> GetCompanyDetails(IdentityUserLogin user)
    //{
        
    //    var result = await IdentityUserClaim<

    //    Quotation quotation = new Quotation();
    //    Company company = new Company();

        
    //    List<Company> companyDetails = new List<Company>();
    //    companyDetails = myHandler.GetCompanyDetails(user.UserId);

    //    foreach (var item in companyDetails)
    //    {
    //        CompanyName.Text = item.Name;
    //        Contact.Text = item.TellNo;
    //        ContactPerson.Text = item.ContactPerson;
    //    }



    //}




    public void Confirm_Click(object sender, EventArgs e)
    {
        eQuote.Visible = true;

        Quotation quotation = new Quotation();


        
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {

    }

    protected void Arrow_Right_Click(object sender, EventArgs e)
    {
        

        if (availableCourse.SelectedValue == mySelection.SelectedValue)
        {

        }
        else
            availableCourse.DataTextField = mySelection.DataTextField;
    }

    protected void Arrow_Left_Click(object sender, EventArgs e)
    {
        mySelection.SelectedValue = "";
    }

    protected void Remove_Sign_Click(object sender, EventArgs e)
    {
        mySelection.Dispose();
    }
}