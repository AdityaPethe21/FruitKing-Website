using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;

public partial class AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProductName.Text = string.Empty;
        ProductPrice.Text = string.Empty;
        SellingPrice.Text = string.Empty;
        Desc.Text = string.Empty;
        Details.Text = string.Empty;    
    }

    protected void AddBtn_Click(object sender, EventArgs e)
    {
        if(ProductName.Text!=null&& ProductPrice.Text!=null&& SellingPrice.Text!=null&& BrandDropDown.SelectedItem.Value !=null)
        {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectFruitKing"].ConnectionString))
        {

            SqlCommand cmd = new SqlCommand("InsertProduct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PName", ProductName.Text);
            cmd.Parameters.AddWithValue("@PPrice", ProductPrice.Text);
            cmd.Parameters.AddWithValue("@PSelPrice", SellingPrice.Text);
            cmd.Parameters.AddWithValue("@PBrand", BrandDropDown.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PCategory", CategoryDropDown.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PSubCat", SubCategoryDropDown.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PGender", GenderDropDown.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PSize", DropDownSize.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PDescription", Desc.Text);
            cmd.Parameters.AddWithValue("@PProductDetails", Details.Text);

            if (Delivery.Checked == true)
            {
                cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
            }

           
            if (COD.Checked == true)
            {
                cmd.Parameters.AddWithValue("@COD", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@COD", 0.ToString());
            }

            if (con.State == ConnectionState.Closed) 
            { 
                con.Open(); 
            }
            Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());


            ////////////////////////////////////////////////////////////////////////////
            if (FileUploadImg1.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extention = Path.GetExtension(FileUploadImg1.PostedFile.FileName);
                FileUploadImg1.SaveAs(SavePath + "\\" + ProductName.Text.ToString().Trim() + "01" + Extention);

                //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
                SqlCommand cmd2 = new SqlCommand("insert into ProductImagesTable(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                cmd2.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                cmd2.Parameters.AddWithValue("@Name", ProductName.Text.ToString().Trim() + "01");
                cmd2.Parameters.AddWithValue("@Extention", Extention);
                cmd2.ExecuteNonQuery();
            }


            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //if (FileUploadImg2.HasFile)
            //{
            //    string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
            //    if (!Directory.Exists(SavePath))
            //    {
            //        Directory.CreateDirectory(SavePath);

            //    }

            //    string Extention = Path.GetExtension(FileUploadImg2.PostedFile.FileName);
            //    FileUploadImg2.SaveAs(SavePath + "\\" + ProductName.Text.ToString().Trim() + "02" + Extention);

            //    //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
            //    SqlCommand cmd2 = new SqlCommand("insert into ProductImagesTable(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
            //    cmd2.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
            //    cmd2.Parameters.AddWithValue("@Name", ProductName.Text.ToString().Trim() + "02");
            //    cmd2.Parameters.AddWithValue("@Extention", Extention);
            //    cmd2.ExecuteNonQuery();
            //}

            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //if (FileUploadImg3.HasFile)
            //{
            //    string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
            //    if (!Directory.Exists(SavePath))
            //    {
            //        Directory.CreateDirectory(SavePath);

            //    }

            //    string Extention = Path.GetExtension(FileUploadImg3.PostedFile.FileName);
            //    FileUploadImg3.SaveAs(SavePath + "\\" + ProductName.Text.ToString().Trim() + "03" + Extention);

            //    //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
            //    SqlCommand cmd2 = new SqlCommand("insert into ProductImagesTable(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
            //    cmd2.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
            //    cmd2.Parameters.AddWithValue("@Name", ProductName.Text.ToString().Trim() + "03");
            //    cmd2.Parameters.AddWithValue("@Extention", Extention);
            //    cmd2.ExecuteNonQuery();
            //}

            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //if (FileUploadImg4.HasFile)
            //{
            //    string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
            //    if (!Directory.Exists(SavePath))
            //    {
            //        Directory.CreateDirectory(SavePath);

            //    }

            //    string Extention = Path.GetExtension(FileUploadImg4.PostedFile.FileName);
            //    FileUploadImg4.SaveAs(SavePath + "\\" + ProductName.Text.ToString().Trim() + "04" + Extention);

            //    //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
            //    SqlCommand cmd2 = new SqlCommand("insert into ProductImagesTable(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
            //    cmd2.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
            //    cmd2.Parameters.AddWithValue("@Name", ProductName.Text.ToString().Trim() + "04");
            //    cmd2.Parameters.AddWithValue("@Extention", Extention);
            //    cmd2.ExecuteNonQuery();
            //}

            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //if (FileUploadImg5.HasFile)
            //{
            //    string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
            //    if (!Directory.Exists(SavePath))
            //    {
            //        Directory.CreateDirectory(SavePath);

            //    }

            //    string Extention = Path.GetExtension(FileUploadImg5.PostedFile.FileName);
            //    FileUploadImg5.SaveAs(SavePath + "\\" + ProductName.Text.ToString().Trim() + "05" + Extention);

            //    //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
            //    SqlCommand cmd2 = new SqlCommand("insert into ProductImagesTable(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
            //    cmd2.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
            //    cmd2.Parameters.AddWithValue("@Name", ProductName.Text.ToString().Trim() + "05");
            //    cmd2.Parameters.AddWithValue("@Extention", Extention);
            //    cmd2.ExecuteNonQuery();
            //}


        }

        }
        

    }
}