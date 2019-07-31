<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-top:50px">
        <div>
            <div style="max-width:400px"  class="thumbnail">
                <asp:Repeater ID="rptrImage" runat="server">
                    <ItemTemplate> <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extension") %>" alt="<%# Eval("Name") %>" onerror="this.src='Images/no_image.png'"  /></ItemTemplate>               
                 </asp:Repeater>
            </div>
        </div>
        <div class="col-md-7 col-xs-11">
            <asp:Repeater ID="rptrProductDetils" OnItemDataBound="rptrProductDetils_ItemDataBound" runat="server">
                <ItemTemplate>
                    <div class="DivDet1">
                        <h1 class="ProNameView"><%# Eval("PName") %></h1>
                        <span class="proORGPriceView"><%# Eval("PPrice") %> </span>
                        <p class="proPriceView"><%# Eval("PSelPrice") %></p>
                    </div>
                    <div>
                        <h5 class="h5Size">SIZE</h5>
                        <div>
                            <asp:RadioButtonList ID="rblSize" runat="server" RepeatDirection="Horizontal">
                            </asp:RadioButtonList>
                        </div>
                        <div class="DivDet1">
                            <asp:Button ID="btnAddToCart" OnClick="btnAddToCart_Click" CssClass="mainButton" runat="server" Text="Add To Cart" />
                            <asp:Label ID="lblError"  CssClass="text-danger" runat="server" Text=""></asp:Label>
                              </div>
                        <div class="DivDet1">
                            <h5 class="h5Size">Description</h5>
                            <p><%# Eval("PDescription") %></p>
                        </div>
                    </div>
                    <asp:HiddenField ID="hfCatID" Value='<%# Eval("PCategoryID") %>' runat="server" />
                    <asp:HiddenField ID="hfSCatID" Value='<%# Eval("PSubCatID") %>' runat="server" />
                    <asp:HiddenField ID="hfBrandID" Value='<%# Eval("PBrandID") %>' runat="server" />
                    <asp:HiddenField ID="hfGenderID" Value='<%# Eval("PGender") %>' runat="server" />
                  </ItemTemplate>
             </asp:Repeater>
        </div>
    </div>
        
</asp:Content>

