using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


    

namespace Pizza_Assignment
{
    public partial class customerdetails : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            nameLbl.Text = String.Format("{0}", Session["CustomerName"]);
          
         lblTotal.Text = String.Format("{0}", Session["total"]);

            lblOrderDetails.Text = String.Format("{0}",Session["OrderDetails"]);
        }

        protected void confirmButton_Click(object sender, EventArgs e)
        {
            databaseEntities db = new databaseEntities();
            var dbOrders = db.Orders;

            var newOrder = new Order();


            newOrder.CustomerTotal = decimal.Parse(lblTotal.Text);

           
            


           

            newOrder.OrderDetails = lblOrderDetails.Text;

            dbOrders.Add(newOrder);
            db.SaveChanges();

        }
    }
}