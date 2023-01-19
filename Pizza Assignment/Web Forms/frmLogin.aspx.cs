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
            
        }

        protected void okButt_Click(object sender, EventArgs e)
        {
            databaseEntities db = new databaseEntities();
            var loginTables = db.LoginTables;

            var newLogin = new LoginTable();

            newLogin.Username = userTB.Text;
            newLogin.Password = passwordTB.Text;
            newLogin.EmailAdress = emailTB.Text;
            newLogin.CustomerName = nameTB.Text;
            newLogin.CustomerSurname = surnameTB.Text;
            newLogin.CustomerPhoneNumber = phoneNumTB.Text;

            nameTB.Text =  Session["CustomerName"]; 

            db.LoginTables.Add(newLogin);
            db.SaveChanges();

            Response.Redirect("customerLogin.aspx");
            
            newLogin.CustomerName = String.Format("{0}", Session["CustomerName"]);
        }
    }
}