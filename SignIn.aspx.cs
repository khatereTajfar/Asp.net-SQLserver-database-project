using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if(Request.Cookies["Username"]!=null && Request.Cookies["Password"] != null)
            {
                Username.Text = Request.Cookies["Username"].Value;
                Password.Attributes["values"] = Request.Cookies["Password"].Value;
                CheckBox1.Checked = true;

            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS)) {
            SqlCommand cmd = new SqlCommand("Select * from Users where Username='" + Username.Text+ "' and Password='" + Password.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["Username"].Value = Username.Text;
                    Response.Cookies["Password"].Value = Password.Text;

                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(15);
                    
                }
                else
                {
                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                }
                String Utype;
                Utype = dt.Rows[0][5].ToString().Trim();

                if (Utype == "U") {
                    Session["USERNAME"] = Username.Text;
                    Response.Redirect("~/UserHome.aspx");
                }
                if (Utype == "A")
                {
                    Session["USERNAME"] = Username.Text;
                    Response.Redirect("~/AdminHome.aspx");
                }

            }
            else
            {
                lblError.Text = "Invalid Username or Password.";
            }
        }
    }
}