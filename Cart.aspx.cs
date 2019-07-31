using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // BindCartProducts();
        }
    }

    /*private void BindCartProducts()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] cookieDataArray = CookieData.Split(',');
            if (cookieDataArray.Length > 0)
            {
                DataTable dtBrands = new DataTable();
                for(int i=0;i< cookieDataArray.Length; i++)
                {
                    string PID = cookieDataArray[i].ToString().Split('-')[0];
                    string SizeID = cookieDataArray[i].ToString().Split('-')[1];
                    String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;

                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        using (SqlCommand cmd = new SqlCommand("select * from tblProducts where PID=" + PID + " ", con))
                        {
                            cmd.CommandType = CommandType.Text;
                            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                            {
                                DataTable dtProducts = new DataTable();
                                sda.Fill(dtProducts);
                            }
                        }
                    }
                }
                rptrCartProducts.DataSource = dtBrands;
                rptrCartProducts.DataBind();
            }
            else
            {

            }
        }
        else
        {

        }
    }*/

    protected void btnRemove_Click(object sender, EventArgs e)
    {

    }

    protected void btnbuyNow_Click(object sender, EventArgs e)
    {

    }
}