﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["PID"] != null)
        {
            if (!IsPostBack)
            {
                BindProductImage();
                BindProductDetails();
            }
        }
        else
        {
            Response.Redirect("~/Products.aspx");
        }

    }

    private void BindProductDetails()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
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
                    rptrProductDetils.DataSource = dtProducts;
                    rptrProductDetils.DataBind();
                }
            }
        }
    }


    private void BindProductImage()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblProductImages where PID=" + PID + " ", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtProducts = new DataTable();
                    sda.Fill(dtProducts);
                    rptrImage.DataSource = dtProducts;
                    rptrImage.DataBind();
                }
            }
        }
    }


    protected void rptrProductDetils_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if(e.Item.ItemType==ListItemType.Item|| e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string BrandID = (e.Item.FindControl("hfBrandID") as HiddenField).Value;
            string CatID = (e.Item.FindControl("hfCatID") as HiddenField).Value;
            string SubCatID = (e.Item.FindControl("hfSCatID") as HiddenField).Value;
            string GenderID = (e.Item.FindControl("hfGenderID") as HiddenField).Value;

            RadioButtonList rblSize = e.Item.FindControl("rblSize") as RadioButtonList;
            String CS = ConfigurationManager.ConnectionStrings["MyDBConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Select * from tblSizes where BrandID='" + BrandID + "'and CategoryID='" + CatID
                    + "'and SubCategoryID='" + SubCatID + "'and GenderID='" + GenderID + "'", con);
                cmd.CommandType = CommandType.Text;
                using(SqlDataAdapter sda=new SqlDataAdapter(cmd))
                {
                    DataTable dtSizes = new DataTable();
                    sda.Fill(dtSizes);
                    rblSize.DataSource = dtSizes;
                    rblSize.DataTextField = "SizeName";
                    rblSize.DataValueField = "SizeID";
                    rblSize.DataBind();
                }
            }
        }
    }

    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        string SelectedSize = string.Empty;
        foreach(RepeaterItem item in rptrProductDetils.Items)
        {
            if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            {
                var rbList = item.FindControl("rblSize") as RadioButtonList;
                SelectedSize = rbList.SelectedValue;
                var lblError = item.FindControl("lblError") as Label;
                lblError.Text = "";
            }
           
        }
        if (SelectedSize != "")
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                CookiePID = CookiePID + "," + PID+"-"+SelectedSize;

                HttpCookie CartProducts = new HttpCookie("CartPID");
                CartProducts.Values["CartPID"] = CookiePID;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            else
            {
                HttpCookie CartProducts = new HttpCookie("CartPID");
                CartProducts.Values["CartPID"] = PID.ToString() + "-" + SelectedSize;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            Response.Redirect("~/ProductView.aspx?PID="+PID);
        }
        else
        {
            foreach (RepeaterItem item in rptrProductDetils.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var lblError = item.FindControl("lblError") as Label;
                    lblError.Text = "Please Select a Size";
                }

            }

        }
        
       
    }
}