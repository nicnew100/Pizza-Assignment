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
    public partial class customerInvoice : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {



        }

        //public Order SomeMethod(string id)
        //{
        //    var con = ConfigurationManager.ConnectionStrings["databaseConnectionString2"].ToString();

        //    Order CustomerID = new Order();
        //    using (SqlConnection myConnection = new SqlConnection(con))
        //    {
        //        string oString = "Select * from Order where CustomerID=@id";
        //        SqlCommand oCmd = new SqlCommand(oString, myConnection);
        //        oCmd.Parameters.AddWithValue("@id", id);
        //        myConnection.Open();
        //        using (SqlDataReader oReader = oCmd.ExecuteReader())
        //        {
        //            while (oReader.Read())
        //            {
        //                CustomerID = (Order)oReader["id"];

        //            }

        //            myConnection.Close();
        //        }
        //    }
        //    return CustomerID;












        }




    }



