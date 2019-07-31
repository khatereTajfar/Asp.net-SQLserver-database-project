<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="SubCategory.aspx.cs" Inherits="SubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Sub Category</h2>
            <hr />
            <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Main Category" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator4"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Sub Category" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:TextBox ID="txtSCategoryName" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtSCategoryName"></asp:RequiredFieldValidator>
                    </div>
                </div>
              <div class="form-group">
                   <div class="col-md-2"></div>
                    <div class="col-md-6 col-xs-11">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick= "btnAdd_Click" />
                    </div>
                </div>
            </div>
        <h1>Sub Categorie</h1>
        <hr />
        <div class="panel panel-default">
              <div class="panel-heading">All Sub Categories</div>
              
            <asp:Repeater ID="rptrSubCategorie" runat="server">
                <HeaderTemplate>

                      <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Sub Category</th>
                        <th>Category</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                  <tbody>
                </HeaderTemplate>

                <ItemTemplate>

                     <tr>
                          <th><%# Eval("SubCatID") %></th>
                          <td><%# Eval("SubCatName") %></td>
                         <td><%# Eval("CatName") %></td>
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

