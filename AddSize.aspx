<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddSize.aspx.cs" Inherits="AddSize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="form-horizontal">
            <h2>Add Size</h2>
            <hr />
             <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Size Name" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:TextBox ID="txtSize" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtSize"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Brand" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator2"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="ddlBrand" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                    <asp:Label ID="Label5" runat="server"  Text="Category" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:DropDownList ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator4"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Sub Category" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:DropDownList ID="ddlSCategory" CssClass="form-control" runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator3"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="ddlSCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
              <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Gender" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator5"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="ddlGender" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
      
              <div class="form-group">
                   <div class="col-md-2"></div>
                    <div class="col-md-6 col-xs-11">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                    </div>
                </div>
            </div>
         <h1>Sizes</h1>
        <hr />
        <div class="panel panel-default">
              <div class="panel-heading">All Sizes</div>
              
            <asp:Repeater ID="rptrSizes" runat="server">
                <HeaderTemplate>

                      <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Size</th>
                         <th>Brand</th>
                         <th>Category</th>
                        <th>Sub Category</th>
                        <th>Gender</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                  <tbody>
                </HeaderTemplate>

                <ItemTemplate>

                     <tr>
                          <th><%# Eval("SizeID") %></th>
                          <td><%# Eval("SizeName") %></td>
                         <td><%# Eval("Name") %></td>
                         <td><%# Eval("CatName") %></td>
                         <td><%# Eval("SubCatName") %></td>
                         <td><%# Eval("GenderName") %></td>
                          <td>Edit</td>
                      </tr>   
                </ItemTemplate>

                <FooterTemplate>

                     </tbody>
              </table>
                </FooterTemplate>

            </asp:Repeater>         
        </div>
        </div>
</asp:Content>

