using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
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


    protected void BuyNow_Click(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            Response.Redirect("~/DisplayProduct.aspx");
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
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



    protected void ViewMore_Click(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            Response.Redirect("~/DisplayProduct.aspx");
        }
        else
        {
            Response.Redirect("~/ProductDispWithoutLogin.aspx");
        }
    }

   

}