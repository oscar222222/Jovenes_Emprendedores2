<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Login.aspx.cs" Inherits="View_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>LOG IN</title>
    <link href="../App_Themes/css/Inicio.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <!-- Container wrapper -->
        <div class="container-fluid">
            <!-- Toggle button -->
            <button
                class="navbar-toggler"
                type="button"
                data-mdb-toggle="collapse"
                data-mdb-target="#navbarCenteredExample"
                aria-controls="navbarCenteredExample"
                aria-expanded="false"
                aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>

            <!-- Collapsible wrapper -->
            <div
                class="collapse navbar-collapse justify-content-center"
                id="navbarCenteredExample">
                <!-- Left links -->
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="navbar-brand" href="Index.aspx">
                            <img src="../imagenes/logo_small.png" width="150px" alt="" style="padding-left: 10%;">
                        </a>
                    </li>
                   
                    <!-- Navbar dropdown -->

                </ul>
                <!-- Left links -->
            </div>
            <!-- Collapsible wrapper -->
        </div>
        <!-- Container wrapper -->
    </nav>


    <div class="container">
        <div class="backbox">
            <div class="loginMsg">
                <div class="textcontent">
                    <img src="../imagenes/login.png" width="70%">
                </div>
            </div>

        </div>
        <!-- backbox -->

        <div class="frontbox">
            <div class="login">
                <form id="form1" runat="server">
                    <asp:Login ID="Login1" runat="server" Height="350px" Width="100%" OnAuthenticate="Login1_Authenticate">
                        <LayoutTemplate>
                            <h1>LOG IN</h1>
                            <div class="inputbox">
                                <!-- <asp:Label ID="UserNameLabel" runat="server" Text="Usuario:" CssClass="control-label col-sm-2 " AssociatedControlID="UserName"></asp:Label>  -->
                                <asp:TextBox ID="UserName" runat="server" CssClass="form-control" placeholder="Usuario" BorderStyle="Ridge"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." Style="color: red;" ValidationGroup="Login1">* Campo obligatorio</asp:RequiredFieldValidator>
                                <!-- <input type="text" name="email" placeholder="  EMAIL">
                                <input type="password" name="password" placeholder="  PASSWORD"> -->
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password" BorderStyle="Ridge"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." Style="color: red;" ValidationGroup="Login1">* Campo obligatorio</asp:RequiredFieldValidator>

                                <i class="bi bi-person-circle my-auto mx-2 h3" aria-hidden="true" id="logoUser"></i>
                                <i class="bi bi-lock-fill my-auto mx-2 h3" aria-hidden="true" id="logoPass"></i>


                            </div>
                            <div>
                                <!--<asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" Text="Contraseña:" CssClass="control-label col-sm-2 "></asp:Label>-->

                                <!-- <input type="text" name="email" placeholder="  EMAIL">
                                <input type="password" name="password" placeholder="  PASSWORD"> -->

                            </div>
                            <div style="color: #FF0000">
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>

                            </div>
                            <asp:LinkButton ID="Button1" runat="server" Width="20%" CommandName="Login" CssClass="form-control btn btn-primary btn-block" Text="Log In" ValidationGroup="Login1" />
                            <br />
                            <br />
                            <a href="register.aspx">registrarse...</a>
                            <br />
                            <div>
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>
                        </LayoutTemplate>

                    </asp:Login>
                    &nbsp;
               
                </form>
            </div>



        </div>
        <!-- frontbox -->
    </div>






</body>
</html>
