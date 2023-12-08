using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecoverPassword : System.Web.UI.Page
{
    String GUIDvalue;
    DataTable dt = new DataTable();
    int Uid;

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectFruitKing"].ConnectionString))
        {
            con.Open();
            GUIDvalue = Request.QueryString["id"];
            if (GUIDvalue != null)
            {
                //con.Open();
                SqlCommand cmd = new SqlCommand("select * from ForgetPass where Id=@Id", con);

                cmd.Parameters.AddWithValue("@Id", GUIDvalue);

                SqlDataAdapter SDA = new SqlDataAdapter(cmd);

                SDA.Fill(dt);
                if (dt.Rows.Count!=0)
                {
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    lblMsg.Text = "Your link is invalid...";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
            con.Close();
        }

        if(!IsPostBack)
        {
            if (dt.Rows.Count == 1)
            {
                pwdlbl.Visible = true;
                NewPwd.Visible = true;
                PwdValidate.Visible = true;
                cnfpwd.Visible = true;
                CnfmPwd.Visible = true;
                CnfPwdValidate.Visible = true;
                CompareValidatePwd.Visible = true;
                RstBtn.Visible = true;
            }
            else
            {
                lblMsg.Text = "Your link is invalid...";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    protected void RstBtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectFruitKing"].ConnectionString))
        {

            if (NewPwd.Text!="" && CnfmPwd.Text!="" && NewPwd.Text==CnfmPwd.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update UserLoginData set Password=@pwd where Uid=@Uid", con);
                cmd.Parameters.AddWithValue("@pwd", NewPwd.Text);
                cmd.Parameters.AddWithValue("@Uid", Uid);
                cmd.ExecuteNonQuery();


                SqlCommand cmd2 = new SqlCommand("delete from ForgetPass where Uid='" + Uid + "'", con);

                cmd2.ExecuteNonQuery();
                Response.Write("<script>alert('Password Changed Successfully');</script>");
                Response.Redirect("~/Login.aspx");
                con.Close();
            }
            
        }
    }
}