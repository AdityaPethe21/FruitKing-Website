using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UNAME"]!=null && (Request.Cookies["PWD"] != null))
            {
                email.Text=Request.Cookies["UNAME"].Value;
                pwd.Text= Request.Cookies["PWD"].Value;
                CheckBox1.Checked=true;

            }
        }

    }

    protected void SignIn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectFruitKing"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from UserLoginData where Email=@email and Password=@pwd", con);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@pwd", pwd.Text);

            SqlDataAdapter SDA = new SqlDataAdapter(cmd);
            DataTable dt=new DataTable();
            SDA.Fill(dt);
            if(dt.Rows.Count == 1 ) 
            {
                if(CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value=email.Text;
                    Response.Cookies["PWD"].Value = pwd.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(10);
                }
                else
                {

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                }
                string Utype;
                Utype=dt.Rows[0][4].ToString().Trim();
                if (Utype == "User")
                {
                    Session["Username"] = email.Text;
                    Response.Redirect("~/Home.aspx");
                }
                else if(Utype == "Admin")
                {
                    Session["Username"] = email.Text;
                    Response.Redirect("~/AdminHome.aspx");
                }
                
            }
            else
            {
                Errortxt.Text = "Invalid Credentials!";
                Errortxt.ForeColor = System.Drawing.Color.Red;
            }
            ClearForm();
            con.Close();
        }
    }

    private void ClearForm()
    {
        email.Text=string.Empty;
        pwd.Text=string.Empty;
        email.Focus();
    }


    protected void SignUp_Click(object sender, EventArgs e)
    {
        if(email.Text==null || pwd.Text == null)
        {

        Response.Redirect("~/Register.aspx");
        }

    }
}