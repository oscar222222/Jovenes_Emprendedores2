<%@ Page Title="" Language="C#" MasterPageFile="~/View/view_investor/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/investor/registrationINV.aspx.cs" Inherits="View_view_investor_registrationINV" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style10 {
            background-color: #CBCB5B;
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
                    <h4>Inversor</h4>
                    <div class="inputbox">

                        <asp:TextBox ID="Tname1" runat="server" Width="90%" CssClass="form-control" placeholder="Nombre"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Tname1" ErrorMessage="Este campo es obligatorio." ToolTip="Este campo es obligatorio." Style="color: red;" ValidationGroup="registrar">* Campo obligatorio</asp:RequiredFieldValidator>

                        <asp:TextBox ID="Tsurname1" runat="server" Width="90%" CssClass="form-control" placeholder="Apellido"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Tsurname1" ErrorMessage="Este campo es obligatorio." ToolTip="Este campo es obligatorio." Style="color: red;" ValidationGroup="registrar">* Campo obligatorio</asp:RequiredFieldValidator>

                        <asp:TextBox ID="Tusername1" runat="server" Width="90%" CssClass="form-control" placeholder="Username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Tusername1" ErrorMessage="Este campo es obligatorio." ToolTip="Este campo es obligatorio." Style="color: red;" ValidationGroup="registrar">* Campo obligatorio</asp:RequiredFieldValidator>

                        <asp:TextBox ID="TPassword1" runat="server" Width="90%" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TPassword1" ErrorMessage="Este campo es obligatorio." ToolTip="Este campo es obligatorio." Style="color: red;" ValidationGroup="registrar">* Campo obligatorio</asp:RequiredFieldValidator>

                        <asp:TextBox ID="TEmail1" runat="server" Width="90%" CssClass="form-control" TextMode="Email" placeholder="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TEmail1" ErrorMessage="Este campo es obligatorio." ToolTip="Este campo es obligatorio." Style="color: red;" ValidationGroup="registrar">* Campo obligatorio</asp:RequiredFieldValidator>

                        <br />
                        <label style="width: 40%;">Fecha de nacimiento</label>
                        <asp:TextBox ID="TDateofBirth1" runat="server" Width="90%" placeholder="Fecha de nacimiento" TextMode="Date" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TDateofBirth1" ErrorMessage="Este campo es obligatorio." ToolTip="Este campo es obligatorio." Style="color: red;" ValidationGroup="registrar">* Campo obligatorio</asp:RequiredFieldValidator>
                    </div>
                    <div>
                    </div>
                    <div style="color: #FF0000">
                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>

                    </div>
                    <asp:LinkButton ID="BSave1" runat="server" Width="20%" CssClass="form-control btn btn-primary btn-block" Text="GUARDAR" OnClick="BSave1_Click" ValidationGroup="registrar" />

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

