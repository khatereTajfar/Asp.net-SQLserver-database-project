<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="form-horizontal">
            <h2>Add Category</h2>
            <hr />
             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Category Name" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:TextBox ID="txtCategoryName" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtCategoryName"></asp:RequiredFieldValidator>
                    </div>
                </div>
              <div class="form-group">
                   <div class="col-md-2"></div>
                    <div class="col-md-6 col-xs-11">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick= "btnAdd_Click" />
                    </div>
                </div>
            </div>
         <h1>Categorie</h1>
        <hr />
        <div class="panel panel-default">
              <div class="panel-heading">All Categories</div>
              
            <asp:Repeater ID="rptrCategorie" runat="server">
                <HeaderTemplate>

                      <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Category</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                  <tbody>
                </HeaderTemplate>

                <ItemTemplate>

                     <tr>
                          <th><%# Eval("CatID") %></th>
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

