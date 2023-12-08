using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["Username"] != null)
        {
            LogOut.Visible = true;
            LogIn.Visible = false;
            //SuccessTxt.Text = "Login Successfull,Welcome " + Session["Username"].ToString();
        }
        else
        {
            LogOut.Visible = false;
            LogIn.Visible = true;
            // Response.Redirect("~/Login.aspx");
            Response.Redirect("~/Default.aspx");

        }
    }

    public void BindCartNumber()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] ProductArray = CookiePID.Split(',');
            int ProductCount = ProductArray.Length;
            pcount.InnerText = ProductCount.ToString();
        }
        else
        {
            pcount.InnerText = 0.ToString();
        }
    }

    protected void LogOut_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Default.aspx");
        Session["Username"] = null;
    }

    protected void LogIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}
