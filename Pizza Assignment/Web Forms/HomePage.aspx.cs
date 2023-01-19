using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Assignment
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void customerSignUpTB_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmLogin.aspx");

        }

        protected void staffLoginTB_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffLogin.aspx");
        }

        protected void customerLoginTB_Click(object sender, EventArgs e)
        {
            Response.Redirect("customerLogin.aspx");
        }

        protected void adminButt_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}