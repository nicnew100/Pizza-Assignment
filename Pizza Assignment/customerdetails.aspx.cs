﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Assignment
{
    public partial class customerdetails : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            //public decimal total = decimal.Parse(Session["total"]);

         lblTotal.Text = String.Format("{0}", Session["total"]);

            lblOrderDetails.Text = String.Format("{0}",Session["OrderDetails"]);
        }

        protected void confirmButton_Click(object sender, EventArgs e)
        {
            databaseEntities db = new databaseEntities();
            var dbOrders = db.Orders;

            var newOrder = new Order();

            newOrder.CustomerName = nameTB.Text;
            newOrder.CustomerSurname = surnameTB.Text;
            newOrder.CustomerPhoneNumber=phonenumTB.Text;
            newOrder.CustomerTotal=decimal.Parse(lblTotal.Text);
            newOrder.OrderDetails = lblOrderDetails.Text;

            dbOrders.Add(newOrder);
            db.SaveChanges();

        }
    }
}