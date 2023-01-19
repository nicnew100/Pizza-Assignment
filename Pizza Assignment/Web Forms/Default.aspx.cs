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
        protected void cokeRadButton_CheckedChanged(object sender, EventArgs e)
        {
            if (cokeRadButton.Checked)
            {
                pizzaImage0.ImageUrl = "~/Models/coke.jfif";
            }
        }

        protected void fantaRadButton_CheckedChanged(object sender, EventArgs e)
        {
            if (fantaRadButton.Checked)
            {
                pizzaImage0.ImageUrl = "~/Models/fanta.jpg";
            }
        }

        protected void liptonRadButton_CheckedChanged(object sender, EventArgs e)
        {
            if (liptonRadButton.Checked)
            {
                pizzaImage0.ImageUrl = "~/Models/lipton.jpg";
            }
        }

        protected void margRadButton_CheckedChanged(object sender, EventArgs e)
        {
            if (margRadButton.Checked)
            {
                pizzaImage.ImageUrl = "~/Models/marg.png";
            }

        }
        protected void pepperoniRadButton_CheckedChanged(object sender, EventArgs e)
        {
            if (pepperoniRadButton.Checked)
            {
                pizzaImage.ImageUrl = "~/Models/pepp.jfif";
            }
        }

            protected void Page_Load(object sender, EventArgs e)
            {
           

            }

       
       
        


        protected void confirmOrderButton_Click(object sender, EventArgs e)
        {
            String OrderDetails = Session["OrderDetails"].ToString();

            if (margRadButton.Checked)
            { OrderDetails += "Margharita ";
                
            }
            
            if (pepperoniRadButton.Checked)
            {
                OrderDetails += "Pepperoni ";
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
                total = 3.50;
            }

            else
            {
                total = 4.00;
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

       

            

        

        

        protected void nextButton_Click1(object sender, EventArgs e)
        {
            
            



            Response.Redirect("customerdetails.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            

   
        }

       
    }

}