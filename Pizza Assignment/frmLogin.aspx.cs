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
            var dbLoginTable = db.LoginTable;

            var newLogin = new Login();

            newLogin.UserName = UserNameTB.Text;
            
            dbOrders.Add(newOrder);
            db.SaveChanges();
        }
    }
}