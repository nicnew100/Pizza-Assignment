using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Assignment
{
    public partial class frmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // nameTB.Text = Session["CustomerName"].ToString();
        }

        protected void okButt_Click(object sender, EventArgs e)
        {
            databaseEntities db = new databaseEntities();
            var loginTables = db.LoginTables;
            //connecting to the database and table that im using
            var newLogin = new LoginTable();
            //creating new record in the Login table 
            newLogin.Username = userTB.Text;
            newLogin.Password = passwordTB.Text;
            newLogin.EmailAdress = emailTB.Text;
            newLogin.CustomerName = nameTB.Text;
            newLogin.CustomerSurname = surnameTB.Text;
            newLogin.CustomerPhoneNumber = phoneNumTB.Text;
            //adding the response from the text boxes to each cell in the record
            

            db.LoginTables.Add(newLogin);
            db.SaveChanges();
            //Saving the record in the table
            Response.Redirect("customerLogin.aspx");
            
            
        }
    }
}