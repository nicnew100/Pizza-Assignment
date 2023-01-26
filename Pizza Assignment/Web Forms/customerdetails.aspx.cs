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


            lblTotal.Text = String.Format("{0:C}", Session["total"]);

            lblOrderDetails.Text = (String) Session["OrderDetails"];

            nameLbl.Text = GridView1.Rows[GridView1.Rows.Count - 1].Cells[5].Text;



        }

        protected void confirmButton_Click(object sender, EventArgs e)
        {
            databaseEntities db = new databaseEntities(); 
            var dbOrders = db.Orders;
            var newOrder = new Order();
            
            try
            { decimal dTotal = Decimal.Parse(lblTotal.Text.ToString().Remove(0, 1));

                newOrder.CustomerTotal = dTotal;
            }     
            catch
            {
                Response.Redirect("finalPage.aspx");

            }


            newOrder.OrderDetails = lblOrderDetails.Text;
            dbOrders.Add(newOrder);
            db.SaveChanges();

            Response.Redirect("finalPage.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            
            
        }

        protected void btnName_Click(object sender, EventArgs e)
        {
           
            
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}