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
    public partial class customerLogin : System.Web.UI.Page
    {
        


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void logButt_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString2"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from LoginTable where Username =@Username and Password=@Password", con);
            cmd.Parameters.AddWithValue("@Username", usernameTB.Text);
            cmd.Parameters.AddWithValue("@Password", passwordTB.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Default.aspx");
            }

            else
            {
                MessageBox.Visible = true;
                MessageBox.Text = "Wrong Details";
            }

        }   
    }
}