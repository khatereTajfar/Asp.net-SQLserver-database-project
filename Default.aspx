<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>next Homepage</title>
    <script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="crossorigin="anonymous"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        $(Document).ready(function myfunction() {
            $("btnCart").click(function myfunction() {
                window.location.href ="/Cart.aspx";
            });
        });
    </script>
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
                    <li class="active"><a href="Default.aspx">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="Products.aspx">All Products</a></li>
                             <li role="separator" class="divider"/>
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
                    <li>
                        <button id="btnCart" class="btn btn-primary navbar-btn" type="button" >
                          Cart <span class="badge" id="PCount" runat="server"></span>
                        </button>
                    </li>
                    <li id="btnSignUp" runat="server"><a href="SignUp.aspx">Sign Up</a></li>
                    <li id="btnSignIn" runat="server"><a href="SignIn.aspx">Sign In</a></li>
                     <li>
                        <asp:Button ID="btnSignOut" runat="server" CssClass="btn btn-default navbar-btn" Text="Sign Out" OnClick="btnSignOut_Click" />
                    </li>
                </ul>
            </div>
        </div>
    </div>
        <!--Carousel-->
 <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      <li data-target="#carousel-example-generic" data-slide-to="3"></li>
      <li data-target="#carousel-example-generic" data-slide-to="4"></li>
      <li data-target="#carousel-example-generic" data-slide-to="5"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="Images/item1.png" alt="..."  width="1580" height="1080"/>
    </div>
    <div class="item">
      <img src="Images/item6.png" alt="..." width="1580" height="1080"/>
    </div>
     <div class="item">
      <img src="Images/item2.png" alt="..." width="1580" height="1080"/>
      <div class="carousel-caption">
        <h3>NEW ARRIVAL</h3>
      </div>
    </div>
      <div class="item">
      <img src="Images/item5.png" alt="..." width="1580" height="1080"/>
    </div>
      <div class="item ">
      <img src="Images/item3.png" alt="..." width="1580" height="1080"/>
    </div>
      <div class="item ">
      <img src="Images/item4.png" alt="..." width="1580" height="1080"/>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        <!--Carousel-->
    </div>
        <br />
        <br />
        <!-- middel content-->
        <div class="container center">
            <div class="row">
                <div class="col-lg-4 col-xs-12">
                    <img class="img-circle" src="Images/content1.png" alt="thumb01" width="140" height="140"/>
                    <h2>Clothes</h2>
                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                    </p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
                </div>
                <div class="col-lg-4 col-xs-12">
                    <img class="img-circle" src="Images/content2.png" alt="thumb02" width="140" height="140"/>
                    <h2>Accesories</h2>
                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                    </p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
                </div>
                 <div class="col-lg-4 col-xs-12">
                    <img class="img-circle" src="Images/content3.png" alt="thumb02" width="140" height="140"/>
                    <h2>Homeware</h2>
                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                    </p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
                </div>
            </div>
        </div>
        <!-- middel content-->
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
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
