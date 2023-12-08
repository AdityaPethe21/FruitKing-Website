using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Principal;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            MsgLabel.Text=String.Empty; 
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
        if (isFormValid())
        {
            
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectFruitKing"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into UserLoginData(Username,Email,Password,UserType) values('" + username.Text + "','" + email.Text + "','" + pwd.Text + "','User')", con);
                cmd.ExecuteNonQuery();
                ClearForm();
                con.Close();
                MsgLabel.Text = "Registration Successfull!";
                MsgLabel.ForeColor = System.Drawing.Color.Green;
                
            }
            Response.Redirect("~/Login.aspx");

        }
        else
        {
            if (pwd.Text != cnfmPwd.Text)
            {
                MsgLabel.Text = "Password Not mTached";
                MsgLabel.ForeColor = System.Drawing.Color.Red;

            }
            else
            {
                MsgLabel.Text = "All fields are Required";
                MsgLabel.ForeColor = System.Drawing.Color.Red;
            }
            

        }

    }

    private bool isFormValid()
    {
        if (username.Text == "" || email.Text=="" || pwd.Text=="" || cnfmPwd.Text=="")
        {
            return false;
        }
        else if(pwd.Text!=cnfmPwd.Text)
        {
            return false;
        }
        return true;
    }

    private void ClearForm()
    {
        username.Text=String.Empty;
        email.Text = String.Empty;
        pwd.Text=String.Empty;
        cnfmPwd.Text=String.Empty; 
    }

    protected void SignIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}