using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using System.Globalization;
using System.Threading;
using System.Security.Cryptography;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            BindProductCart();
            
        }
    }

    private void BindProductCart()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] CookieDataArray = CookieData.Split(',');
            if(CookieDataArray.Length>0)
            {
                h3Items.InnerText = "No. of Items in Cart(" + CookieDataArray.Length + ")";
                for(int i=0;i<CookieDataArray.Length;i++)
                {

                    string PID = CookieDataArray[i].ToString().Split('-')[0];
                    string SizeID = CookieDataArray[i].ToString().Split('-')[1];
                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectFruitKing"].ConnectionString))
                    {
                        using (SqlCommand cmd = new SqlCommand("select * from ProductsTable where PID='" + PID + "'", con))
                        {
                            cmd.CommandType = CommandType.Text;
                            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                            {
                                DataTable dt = new DataTable();
                                sda.Fill(dt);
                                
                            }
                        }
                    }
                }
            }
            /////////////////////////////
         }
        else
        {

        }
    }

    protected void RemoveFromCart_Click(object sender, EventArgs e)
    {

    }

    protected void BuyNow_Click(object sender, EventArgs e)
    {

    }
}