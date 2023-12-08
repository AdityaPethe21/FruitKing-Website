using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductDispWithoutLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindProductRepeater();
        if (Session["Username"] != null)
        {
            LOGIN.Text = "";
            REGISTER.Text = "";
            LOGOUT.Visible = true;
            BindCartNumber();
        }
        else
        {
            LOGOUT.Visible = false;
        }
    }

    public void BindCartNumber()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] ProductArray = CookiePID.Split(',');
            int ProductCount = ProductArray.Length;
            pcount.Text = ProductCount.ToString();
        }
        else
        {
            pcount.Text = 0.ToString();
        }
    }

    protected void LogOut_Click(object sender, EventArgs e)
    {

        Session["Username"] = null;
        Response.Redirect("~/Default.aspx");
    }

    protected void Cart_Click(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            Response.Redirect("~/Cart.aspx");

        }
        else
        {

            Response.Redirect("~/Login.aspx");

        }
    }

    private void BindProductRepeater()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectFruitKing"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("BindAllProducts", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    ProductRepeater.DataSource = dt;
                    ProductRepeater.DataBind();
                }
            }
        }
    }


}