using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Pizza_Assignment
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {

        }
    
        protected void Session_Start(Object sender, EventArgs e)
        {
            Session["total"] = "0";
            Session["OrderDetails"] = "";
                
        }
    
    
    
    }
}