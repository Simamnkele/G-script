using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ApplicationServices;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using DAL;
using BLL;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using Microsoft.Owin.Security;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;

public partial class eClient_Request_Training : System.Web.UI.Page
{
   // UserManager manager = new UserManager();
    DBHandler myHandler = new DBHandler();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (User.Identity.IsAuthenticated == false) 
        {
            Response.Redirect("~/Account/Login.aspx");
        }

      
        

    }
      
}