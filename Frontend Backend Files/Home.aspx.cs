using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["Username"] != null)
        {
            LogOut.Visible = true;
            LogIn.Visible = false;
            SuccessTxt.Text= "Login Successfull<br/>Welcome " + Session["Username"].ToString();
        }
        else 
        {
            LogOut.Visible=false;
            LogIn.Visible=true;
           //Response.Redirect("~/Login.aspx");
            
        }
    }

    protected void LogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["Username"] = null;
        //Response.Redirect("~/Login.aspx");
        Response.Redirect("~/Default.aspx");

    }

    protected void LogIn_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("~/Login.aspx");
       

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

}