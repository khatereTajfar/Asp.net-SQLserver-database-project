using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddSize : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrand();
            BindMainCategory();
            BindGender();
            BindSizesRptr();
        }
    }

    private void BindSizesRptr()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("Select A.*,B.*,C.*,D.*,E.* from tblSizes A inner join tblCategories B on B.CatID=A.CategoryID inner join tblBrands C on C.BrandID=A.BrandID inner join tblSubCategories D on D.SubCatID=A.SubCategoryID inner join tblGender E on E.GenderID=A.GenderID", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    rptrSizes.DataSource = dtBrands;
                    rptrSizes.DataBind();
                }
            }
        }
    }

    private void BindGender()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;
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

    private void BindBrand()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Select * from tblBrands ", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlBrand.DataSource = dt;
                ddlBrand.DataTextField = "Name";
                ddlBrand.DataValueField = "BrandID";
                ddlBrand.DataBind();
                ddlBrand.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }

    }

    private void BindMainCategory()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;
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

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("insert into tblSizes values('" + txtSize.Text + "','" + ddlBrand.SelectedItem.Value + "','" + ddlCategory.SelectedItem.Value + "','" + ddlSCategory.SelectedItem.Value + "','" + ddlGender.SelectedItem.Value + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtSize.Text = string.Empty;

            ddlBrand.ClearSelection();
            ddlBrand.Items.FindByValue("0").Selected = true;

            ddlCategory.ClearSelection();
            ddlCategory.Items.FindByValue("0").Selected = true;

            ddlSCategory.ClearSelection();
            ddlSCategory.Items.FindByValue("0").Selected = true;

            ddlGender.ClearSelection();
            ddlGender.Items.FindByValue("0").Selected = true;


        }
        BindSizesRptr();

    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);
        String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Select * from tblSubCategories where MainCatID='"+ddlCategory.SelectedItem.Value+"'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlSCategory.DataSource = dt;
                ddlSCategory.DataTextField = "SubCatName";
                ddlSCategory.DataValueField = "SubCatID";
                ddlSCategory.DataBind();
                ddlSCategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }

    }
}