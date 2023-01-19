using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Pizza_Assignment
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void okButt_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString2"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from AdminLogin where  AdminID=@Username and Password=@Password", con);
            cmd.Parameters.AddWithValue("@Username", idTB.Text);
            cmd.Parameters.AddWithValue("@Password", passTB.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("adminHomePage.aspx");
            }

            else
            {
                MessageBox.Visible = true;
                MessageBox.Text = "Wrong Details";
            }
        }
    }
}