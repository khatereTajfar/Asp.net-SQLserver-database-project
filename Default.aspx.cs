using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["USERNAME"] != null)
        {
            btnSignIn.Visible = false;
            btnSignUp.Visible = false;
            btnSignOut.Visible = true;
        }
        else
        {
            btnSignIn.Visible = true;
            btnSignUp.Visible = true;
            btnSignOut.Visible = false;
        }
    }

    public void BindCartNumber()
    {
        // Response.Cookies["CartID"].Expires=DateTime.Now.AddDays(-1);

        if (Request.Cookies["CartPID"] != null)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            String[] ProductArray = CookiePID.Split(',');
            int ProductCount = ProductArray.Length;
            PCount.InnerText = ProductCount.ToString();
        }
        else
        {
            PCount.InnerText = 0.ToString();
        }
    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}