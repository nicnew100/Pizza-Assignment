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


            lblTotal.Text = String.Format("{0:C}", Session["total"].ToString());

            lblOrderDetails.Text = (String) Session["OrderDetails"];

           

          
        }

        protected void confirmButton_Click(object sender, EventArgs e)
        {
            databaseEntities db = new databaseEntities(); 
            var dbOrders = db.Orders;
            var newOrder = new Order();
            newOrder.CustomerTotal = decimal.Parse(lblTotal.Text);
            //newOrder.CustomerID = ;          
            newOrder.OrderDetails = lblOrderDetails.Text;
            dbOrders.Add(newOrder);
            db.SaveChanges();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            
            
        }

        protected void btnName_Click(object sender, EventArgs e)
        {
            //nameLbl.Text = GridView1.SelectedValue.ToString();
            int idx = 5;
            nameLbl.Text = GridView1.SelectedRow.Cells[idx].Text;
        }
    }
}