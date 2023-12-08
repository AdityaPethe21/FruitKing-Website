using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Resetbtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectFruitKing"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from UserLoginData where Email=@email", con);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);

            SqlDataAdapter SDA = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            SDA.Fill(dt);
            //xqhp uked bosw tqdg    (password)
            if (dt.Rows.Count == 1)
            {
                String myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand c = new SqlCommand("Insert into ForgetPass(Id,Uid,RequestDateTime)Values ('" + myGUID + "','" + Uid + "',GETDATE())", con);
                c.ExecuteNonQuery();

              
                //Email sending
                String ToEmail = dt.Rows[0][2].ToString();
                String Username = dt.Rows[0][1].ToString();
                String EmailBody = "Hi," + Username + ",<br/><br/> Click on below link to reset password<br/><br/> http://localhost:50003/RecoverPassword.aspx?id=" + myGUID;

                var msg = new System.Net.Mail.MailMessage();
                msg.To.Add(ToEmail);
                msg.Subject = "Reset Password";
                msg.Body = EmailBody;
                msg.IsBodyHtml = true;
                var smtp = new System.Net.Mail.SmtpClient();
                smtp.EnableSsl = true;
                smtp.Send(msg);
                

               
                ResetMsg.Text = "Recovery link sent";
                txtEmail.Text=String.Empty;
                txtEmail.Focus();
            }
            else
            {
                ResetMsg.Text = "Email,not exist";
                txtEmail.Text = String.Empty;
            }

        }

    }
}