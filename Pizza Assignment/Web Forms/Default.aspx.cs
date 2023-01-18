using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Assignment
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void margRadButton_CheckedChanged(object sender, EventArgs e)
        {
            if (margRadButton.Checked)
            {
                pizzaImage.ImageUrl = "models/marg.png";
            }

        }

       
        


        protected void confirmOrderButton_Click(object sender, EventArgs e)
        {
            String OrderDetails = Session["OrderDetails"].ToString();

            if (margRadButton.Checked)
            { OrderDetails += "margharita "; 
            }
            
            if (pepperoniRadButton.Checked)
            {
                OrderDetails += "pepperoni ";
            }

            if (cokeRadButton.Checked)
            {
                OrderDetails += "Coke ";

            }

            if (fantaRadButton.Checked)
            {
                OrderDetails += "Fanta ";
            }

            if (liptonRadButton.Checked)
            {
                OrderDetails += "Lipton ";
            }

            Session["OrderDetails"]=OrderDetails;

            double total = 0.0;
            
            if (margRadButton.Checked)
            {
                total = 4.50;
            }

            else
            {
                total = 5.00;
            }

            if (cokeRadButton.Checked)
            {
                total += 1.10;
            }

            else if (fantaRadButton.Checked)
            {
                total += 1.10;
            }

            else if (liptonRadButton.Checked)
            {
                total += 1.10;
            }

            Session["total"] = total;
            lblTotal.Text = String.Format("{0:C}", total);

        }

        protected void pepperoniRadButton_CheckedChanged(object sender, EventArgs e)
        {
            if (pepperoniRadButton.Checked)
            {
                pizzaImage.ImageUrl = "models/pepp.jfif";
            }

            

        }

        

        protected void nextButton_Click1(object sender, EventArgs e)
        {
            
            



            Response.Redirect("customerdetails.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            

   
        }
    }

}