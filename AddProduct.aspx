<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Product</h2>
            <hr />
             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Name" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:TextBox ID="txtPname" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtPname"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Price" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Selling Price" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:TextBox ID="txtSPrice" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtSPrice"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Brand" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:DropDownList ID="ddlBrands" CssClass="form-control" runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator3"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="ddlBrands" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Category" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:DropDownList ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator4"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Sub Category" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:DropDownList ID="ddlScategory" OnSelectedIndexChanged="ddlScategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator5"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="ddlScategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label10" runat="server" Text="Gender" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:DropDownList ID="ddlGender" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator8"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="ddlGender" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label7" runat="server" Text="Size" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:CheckBoxList ID="cblSize" CssClass="form-control" runat="server" RepeatDirection="Horizontal"></asp:CheckBoxList> 
                    </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label11" runat="server" Text="Quantity" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator9"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtSPrice"></asp:RequiredFieldValidator>
                    </div>
                </div>
              <div class="form-group">
                    <asp:Label ID="Label8" runat="server" Text="Description" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:TextBox ID="txtDes" TextMode="MultiLine" CssClass ="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtDes"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                    <asp:Label ID="Label9" runat="server" Text="Upload Image" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:FileUpload ID="fuImg01" runat="server"  /><asp:RequiredFieldValidator ID="RequiredFieldValidator7"  CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="fuImg01"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="form-group">
                   <div class="col-md-2"></div>
                    <div class="col-md-6 col-xs-11">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                    </div>
                </div>


        </div>

    </div>

</asp:Content>

