using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["USERNAME"] != null)
        {
            btnSignOut.Visible = true;
            btnSignIn.Visible = false;
            lblsucess.Text="Log In Success, Welcome "+Session["USERNAME"].ToString()+"";
        }
        else
        {
            btnSignOut.Visible = false;
            btnSignIn.Visible = true;
        }

    }

    protected void btnSignOut_click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignIn.aspx");
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
}
