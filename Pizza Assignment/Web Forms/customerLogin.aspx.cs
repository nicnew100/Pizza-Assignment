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
            //opening a sql connection with the databse

            SqlCommand cmd = new SqlCommand("select * from LoginTable where Username =@Username and Password=@Password", con);
            cmd.Parameters.AddWithValue("@Username", usernameTB.Text);
            cmd.Parameters.AddWithValue("@Password", passwordTB.Text);
            //selecting all records from the table where the username entered and password is the same as the ones entered into the textbox

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable datatable = new DataTable();
            da.Fill(datatable);

            if (datatable.Rows.Count > 0)
                //this is basically saying if the rows entered in the textboxes are the same as the ones in the datatable redirect to new web page
            {
                Response.Redirect("Default.aspx");
            }

            else
            //otherwise show message box with "wrong details"
            {
                MessageBox.Visible = true;
                MessageBox.Text = "Wrong Details";
            }

        }   
    }
}