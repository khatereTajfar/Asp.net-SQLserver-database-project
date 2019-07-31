<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign In</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar navbar-default navbar navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Default.aspx"><span><img alt="Logo" src="Images/Next-Logo.png" height="35"/></span></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">Men</li>
                            <li role="separator" class="divider"/>
                            <li><a href="#">Shirts</a></li>
                            <li><a href="#">Pants</a></li>
                            <li><a href="#">Denims</a></li>
                            <li role="separator" class="divider"/>
                            <li class="dropdown-header">Women</li>
                            <li role="separator" class="divider"/>
                            <li><a href="#">Tops</a></li>
                            <li><a href="#">Leggings</a></li>
                            <li><a href="#">Denims</a></li>
                        </ul>
                    </li>
                    <li class="active"><a href="SignIn.aspx">Sign In</a></li>
                </ul>
            </div>
        </div>
    </div>
    </div>
    <!-- Sign in-->
        <div class="container">
            <div class="form-horizontal">
                <h2>Log In</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Username" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:TextBox ID="Username" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername"  CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required" ControlToValidate="Username"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Password" CssClass="col-md-2 control-label" ></asp:Label>
                    <div class="col-md-3 col-xs-11">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" CssClass="text-danger" runat="server" ErrorMessage="The Password field is Required" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6 col-xs-11"">
                        <asp:CheckBox ID="CheckBox1" runat="server" /><asp:Label ID="Label4" runat="server" Text="Remember me"></asp:Label>
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6 col-xs-11"">
                        <asp:Button ID="Button1" runat="server" Text="Log In" CssClass="btn btn-default" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Sign Up" CssClass="btn btn-default" PostBackUrl="~/SignUp.aspx" />
                    </div>
                </div>
           <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6 col-xs-11"">
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    <!-- Sign in-->
      
    </form>
      <!--footer-->
        <hr />
        <footer class="col-xs-12">
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy 2018 khatereTJFR.com &middot;<a href="Default.aspx">Home</a>&middot;
                    <a href="#">About</a>&middot; <a href="#">Contact</a>&middot; <a href="#">Products</a></p>
            </div>
        </footer>
        <!--footer-->
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
