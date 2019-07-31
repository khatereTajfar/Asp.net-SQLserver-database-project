<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="padding-top:50px">
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
              <div class="col-sm-3 col-md-3 col-xs-11">
                  <a style="text-decoration:none;" href="ProductView.aspx?PID=<%# Eval("PID") %>">
                    <div class="thumbnail">
                      <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extension") %>" alt="<%# Eval("ImageName") %>">
                      <div class="caption">
                        <div class="proBrand"><%# Eval("BrandName") %></div>
                        <div class="proName"><%# Eval("PName") %></div>
                          <div class="proPrice"><span class="proORGPrice"><%# Eval("PPrice") %> </span><%# Eval("PSelPrice") %> <span class="proPriceDiscount">(<%# Eval("DiscAmount") %> off)</span></div>
                      </div>
                    </div>
                 </a>
              </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

