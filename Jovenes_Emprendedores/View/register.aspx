<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/register.aspx.cs" Inherits="View_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>REGISTER</title>
    <link href="../App_Themes/css/Inicio.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 100%;
            text-align: left;
        }

        .auto-style4 {
        }
    </style>
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
                    <li class="nav-item">
                        <button class="btn btn-light"><a href="Login.aspx">Iniciar sesión.</a></button>
                    </li>

                    <!-- Navbar dropdown -->

                </ul>
                <!-- Left links -->
            </div>
            <!-- Collapsible wrapper -->
        </div>
        <!-- Container wrapper -->
    </nav>


    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" border="0">
                <tr>
                    <td class="auto-style2" colspan="2"></td>
                </tr>
                <tr>

                    <td class="auto-style2" colspan="2">

                        <label class="titleR">REGISTRARSE COMO:</label></td>
                </tr>
                <tr>
                    <td style="width: 50%; height: 90%;">
                        <a href="view_young_innova/registrationINNOVA.aspx">
                            <div class="imagenDiv">

                                <img class="imagen" src="../imagenes/emp.png" width="60%">
                                <div class="titleImg">
                                    <label style="color:black;">
                                        Innovador
                               
                                    </label>
                                </div>
                            </div>
                        </a>
                    </td>
                    <td style="width: 50%; height: 90%;">

                        <a href="view_investor/registrationINV.aspx">
                            <div class="imagenDiv">
                                <img class="imagen" src="../imagenes/inve.png" width="60%">
                                <div class="titleImg">
                                    <label style="color:black;">
                                        Inversor
                               
                                    </label>
                                </div>
                            </div>
                        </a>
                    </td>

                    <tr>
                    </tr>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
