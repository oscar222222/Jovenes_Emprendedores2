<%@ Page Title="" Language="C#" MasterPageFile="~/View/view_investor/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/innovator/registrationINNOVA.aspx.cs" Inherits="View_view_young_innova_registrationINNOVA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style10 {
            background-color: #568CCA;
            border-radius: 25px;
            height: 220%;
            width: 270%;
            z-index: 10;
            position: relative;
            border: black 3px solid;
            right: 0;
            margin-right: 3%;
            margin-left: 50%;
            transition: right .8s ease-in-out;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <div class="container">
        <div class="backbox">
            <div class="loginMsg">
                <div class="textcontent">
                    <img src="../../imagenes/login.png" width="70%">
                </div>
            </div>

        </div>
        <!-- backbox -->

        <div class="auto-style10">
            <div class="login">


                <layouttemplate>
                    <h1>REGISTRAR</h1>
                    <h4>Joven innovador</h4>
                    <div class="inputbox">



                        <asp:TextBox ID="Tname2" runat="server" Width="90%" CssClass="form-control" placeholder="Nombre"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Tname2" ErrorMessage="Este campo es obligatorio." ToolTip="Este campo es obligatorio." Style="color: red;" ValidationGroup="registrar">* Campo obligatorio</asp:RequiredFieldValidator>

                        <asp:TextBox ID="Tsurname2" runat="server" Width="90%" CssClass="form-control" placeholder="Apellido"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Tsurname2" ErrorMessage="Este campo es obligatorio." ToolTip="Este campo es obligatorio." Style="color: red;" ValidationGroup="registrar">* Campo obligatorio</asp:RequiredFieldValidator>

                        <asp:TextBox ID="Tusername2" runat="server" Width="90%" CssClass="form-control" placeholder="Username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Tusername2" ErrorMessage="Este campo es obligatorio." ToolTip="Este campo es obligatorio." Style="color: red;" ValidationGroup="registrar">* Campo obligatorio</asp:RequiredFieldValidator>

                        <asp:TextBox ID="TPassword2" runat="server" Width="90%" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TPassword2" ErrorMessage="Este campo es obligatorio." ToolTip="Este campo es obligatorio." Style="color: red;" ValidationGroup="registrar">* Campo obligatorio</asp:RequiredFieldValidator>

                        <asp:TextBox ID="TEmail2" runat="server" Width="90%" CssClass="form-control" TextMode="Email" placeholder="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TEmail2" ErrorMessage="Este campo es obligatorio." ToolTip="Este campo es obligatorio." Style="color: red;" ValidationGroup="registrar">* Campo obligatorio</asp:RequiredFieldValidator>

                        <br />
                        <label style="width: 40%;">Fecha de nacimiento</label>
                        <asp:TextBox ID="TDateofBirth2" runat="server" Width="90%" placeholder="Fecha de nacimiento" TextMode="Date" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TDateofBirth2" ErrorMessage="Este campo es obligatorio." ToolTip="Este campo es obligatorio." Style="color: red;" ValidationGroup="registrar">* Campo obligatorio</asp:RequiredFieldValidator>
                    </div>
                    <div>
                    </div>
                    <div style="color: #FF0000">
                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>

                    </div>
                    <asp:LinkButton ID="BSave2" runat="server" Width="20%" CssClass="form-control btn btn-primary btn-block" Text="GUARDAR" OnClick="BSave2_Click" ValidationGroup="registrar" />

                    <br />
                    <br />
                    <br />
                    <div>
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                </layouttemplate>

                <!--  </asp:Login> -->
                &nbsp;
               
               
            </div>



        </div>
        <!-- frontbox -->
    </div>





</asp:Content>

