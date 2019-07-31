using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class AddProduct : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrands();
            BindCategories();
            BindGenders();
            ddlScategory.Enabled = false;
            ddlGender.Enabled = false;
        }

    }

    private void BindGenders()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Select * from tblGender ", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlGender.DataSource = dt;
                ddlGender.DataTextField = "GenderName";
                ddlGender.DataValueField = "GenderID";
                ddlGender.DataBind();
                ddlGender.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    }

    private void BindCategories()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Select * from tblCategories ", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CatName";
                ddlCategory.DataValueField = "CatID";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    }

    private void BindBrands()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Select * from tblBrands ", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlBrands.DataSource = dt;
                ddlBrands.DataTextField = "Name";
                ddlBrands.DataValueField = "BrandID";
                ddlBrands.DataBind();
                ddlBrands.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    }
           

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using(SqlConnection con=new SqlConnection(CS))
        {
            SqlCommand cmd= new SqlCommand("ProcInsertProducts", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PName", txtPname.Text);
            cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
            cmd.Parameters.AddWithValue("@PSelPrice", txtSPrice.Text);
            cmd.Parameters.AddWithValue("@PBrandID", ddlBrands.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PCategoryID", ddlCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PSubCatID", ddlScategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PGender", ddlGender.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PDescription", txtDes.Text);
            con.Open();
            Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());
            //Insert size quantity
            for(int i = 0; i < cblSize.Items.Count; i++)
            {
                if (cblSize.Items[i].Selected == true)
                {
                    Int64 SizeID = Convert.ToInt64(cblSize.Items[i].Value);
                    int Quantity = Convert.ToInt32(txtQuantity.Text);
                    SqlCommand cmd2 = new SqlCommand("insert into tblproductSizeQuantity values('" + PID + "','" + SizeID + "','" + Quantity + "')", con);
                    cmd2.ExecuteNonQuery();
                }
            }
            //Insert and Upload Image
            if (fuImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                String Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
                fuImg01.SaveAs(SavePath + "\\" + txtPname.Text.ToString().Trim()+"01"+Extention);
                SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtPname.Text.ToString().Trim()+"01"+"','" + Extention + "')",con);
                cmd3.ExecuteNonQuery();
            }
        }
    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);
        String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Select * from tblSubCategories where MainCatID='" + ddlCategory.SelectedItem.Value + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlScategory.DataSource = dt;
                ddlScategory.DataTextField = "SubCatName";
                ddlScategory.DataValueField = "SubCatID";
                ddlScategory.DataBind();
                ddlScategory.Items.Insert(0, new ListItem("-Select-", "0"));
                ddlScategory.Enabled = true;
            }
        }
    }

    protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);
        String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Select * from tblSizes where BrandID='" + ddlBrands.SelectedItem.Value + "'and CategoryID='" + ddlCategory.SelectedItem.Value + "'and SubCategoryID='" + ddlScategory.SelectedItem.Value + "'and GenderID='" + ddlGender.SelectedItem.Value + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                cblSize.DataSource = dt;
                cblSize.DataTextField = "SizeName";
                cblSize.DataValueField = "SizeID";
                cblSize.DataBind();
              
            }
        }

    }

    protected void ddlScategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlScategory.SelectedIndex != 0)
        {
            ddlGender.Enabled = true;
        }
    }
}