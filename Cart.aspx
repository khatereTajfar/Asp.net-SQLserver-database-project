<%@ Page Title="Cart" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-top:50px;">
        <div class="col-md-9 col-xs-11">
            <div class="media " style="border:1px solid #eaeaec;">
              <div class="media-left">
                    <a href="#">
                      <img width="100px" class="media-object" src="Images/item2.png" alt="..."/>
                    </a>
                  </div>
                      <div class="media-body">
                        <h5 class="media-heading ProNameViewCart" >Pro name</h5>
                        <p class="proPriceDiscountView">Size:42</p>
                          <span class="proPriceView">900</span>
                          <span class="proORGPriceView">sfewfwe</span>
                          <p>
                               <asp:Button ID="btnRemove" OnClick="btnRemove_Click" CssClass="RemoveButton" runat="server" Text="REMOVE" />
                          </p>
                  </div>
            </div>
        </div>

        <div class="col-md-3 col-xs-11">

            <div style="border:1px solid #eaeaec;">
                <h5>Price detail</h5>
                <div>
                    <label>Cart total</label>
                    <span class="pull-right">1900</span>
                </div>
                 <div>
                    <label>Cart Discount</label>
                    <span class="pull-right">- 500</span>
                </div>
                 
        </div>
            <div class="proPriceView">
                    <label>Total</label>
                    <span class="pull-right">1400</span>
                </div>
            <div>
                    <asp:Button ID="btnbuyNow" OnClick="btnbuyNow_Click" CssClass="BuyNowButton" runat="server" Text="Buy Now" />
                </div>
    </div>
</asp:Content>

