using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Pizza_Assignment.Web_Forms
{
    public partial class finalPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            customerID.Text=GridView1.Rows[GridView1.Rows.Count - 1].Cells[0].Text;



        }

        protected void butt_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}