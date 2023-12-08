using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class ViewProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["PID"] != null)
        {
            if (!IsPostBack)
            {
                BindProductImage();
                BindProductDetail();

            }
        }
        else
        {
            Response.Redirect("~/DisplayProduct.apsx");
        }
    }

    private void BindProductDetail()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectFruitKing"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select * from ProductsTable where PID='" + PID + "'", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    ProductDetailRepeater.DataSource = dt;
                    ProductDetailRepeater.DataBind();
                }
            }
        }

    }

    private void BindProductImage()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectFruitKing"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select * from ProductImagesTable where PID='"+PID+"'", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    ImageRepeater.DataSource = dt;
                    ImageRepeater.DataBind();
                }
            }
        }
    }

  
    protected void AddToCart_Click(object sender, EventArgs e)
    {
        string SelectedSize = string.Empty;
        foreach (RepeaterItem item in ProductDetailRepeater.Items)
        {
            
            if (item.ItemType==ListItemType.Item || item.ItemType==ListItemType.AlternatingItem)
            {
                var rblist = item.FindControl("RadioButtonListSize") as RadioButtonList;
                SelectedSize = rblist.SelectedValue;
                var lblError = item.FindControl("lblError") as Label;
                lblError.Text = "";
            }
        }

        if (SelectedSize != "")
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                CookiePID = CookiePID + "," + PID + "-" + SelectedSize;
                HttpCookie CartProducts = new HttpCookie("CartPID");
                CartProducts.Values["CartPID"] = CookiePID;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            else
            {
                HttpCookie CartProducts = new HttpCookie("CartPID");
                CartProducts.Values["CartPID"] = PID.ToString() + "-" + SelectedSize;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            Response.Redirect("ViewProduct.aspx?PID=" + PID);


        }
        else
        {
            foreach (RepeaterItem item in ProductDetailRepeater.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var lblError = item.FindControl("lblError") as Label;
                    lblError.Text = "Please select a size";
                }
            }
        }
    }

   
}