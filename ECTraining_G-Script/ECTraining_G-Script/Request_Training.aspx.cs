﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECTraining_G_Script
{
    public partial class Request_Training : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Today.Text = DateTime.Now.ToLongDateString();
        }
    }
}