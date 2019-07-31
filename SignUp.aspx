<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign Up</title>

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
                    <li><a href="SignIn.aspx">Sign In</a></li>
                </ul>
            </div>
        </div>
    </div>
        <!--Sign UP-->
        <div class="center-page">
            <label class="col-xs-11">Username</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbUname" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
            </div>
             <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbPass" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>
            <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbCPass" runat="server" CssClass="form-control" placeholder="Confirm Password" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
            </div>
            <label class="col-xs-11">Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
            </div>
            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
            </div>
            <div class="col-xs-11 space-vert">
                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" class="btn btn-success" OnClick="btnSignUp_Click"/>
                <asp:Label ID="lbMsg" runat="server"></asp:Label>
            </div>

        </div>
        <!--Sign UP-->
    </div>
        <!--footer-->
        <hr />
        <footer class="footer-pos col-xs-12">
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy 2018 khatereTJFR.com &middot;<a href="Default.aspx">Home</a>&middot;
                    <a href="#">About</a>&middot; <a href="#">Contact</a>&middot; <a href="#">Products</a></p>
            </div>
        </footer>
        <!--footer-->
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
