using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCategoriesRptr();
        }

    }

    private void BindCategoriesRptr()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("Select * from tblCategories", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    rptrCategorie.DataSource = dtBrands;
                    rptrCategorie.DataBind();
                }
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("insert into tblCategories values('" + txtCategoryName.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtCategoryName.Text = string.Empty;

        }
        BindCategoriesRptr();
    }
}