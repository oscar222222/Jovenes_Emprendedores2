<%@ Page Title="" Language="C#" MasterPageFile="~/View/view_admin/masterADMIN.master" AutoEventWireup="true" CodeFile="~/Controller/admin/EditPerfil.aspx.cs" Inherits="View_view_admin_EditPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style4 {
            color: #000099;
            font-size: xx-large;
        }

        .auto-style5 {
            height: 216px;
        }

        .auto-style6 {
            color: #003366;
            font-size: large;
        }

        .auto-style7 {
            text-align: right;
            color: #003366;
            font-size: large;
        }
        .auto-style8 {
            text-align: right;
            color: #990000;
            font-size: large;
        }
        .auto-style9 {
            font-weight: bold;
        }
        .auto-style10 {
            text-align: center;
            color: #990000;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="w-100">
        <tr>
            <td class="text-center" colspan="2">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Datos Personales."></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style5">

                <div style="background-color: #ECC0A3; border-radius: 30px; margin-left: 35%; margin-right: 35%;">
                    <div style="padding-top:5%; padding-left:3%;">
                    </div>

                    <asp:FormView ID="FormView1" runat="server" DataSourceID="ODS" HorizontalAlign="Center" DataKeyNames="Id,Id_role1,Condition" OnItemUpdated="FormView1_ItemUpdated" Font-Names="Segoe UI Historic" Font-Size="24px" Width="500px">
                        <EditItemTemplate>
                            <br />
                            <table class="w-100">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"><strong>Nombre</strong></td>
                                    <td>
                                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"><strong></strong></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"><strong>Apellidos</strong></td>
                                    <td>
                                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"><strong></strong></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"><strong>E-mail</strong></td>
                                    <td>
                                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"><strong></strong></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"><strong>Nombre de usuario </strong></td>
                                    <td>
                                        <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">&nbsp;<strong>Contraseña</strong></td>
                                    <td><strong>
                                        <asp:TextBox ID="PasswordTextBox0" runat="server"  Text='<%# Bind("Password") %>' TextMode="Password" />
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"><strong>F<span class="auto-style9">echa</span></strong></td>
                                    <td>
                                        <asp:TextBox ID="Date_of_birthTextBox" runat="server" Text='<%# Bind("Date_of_birth") %>' TextMode="Date" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text-center">
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"  />
                                    </td>
                                    <td class="text-center">
                                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            &nbsp;
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Id:
                        <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                            <br />
                            Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            Surname:
                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                            <br />
                            Username:
                        <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                            <br />
                            Email:
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            Password:
                        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                            <br />
                            Date_of_birth:
                        <asp:TextBox ID="Date_of_birthTextBox" runat="server" Text='<%# Bind("Date_of_birth") %>' />
                            <br />
                            Id_role1:
                        <asp:TextBox ID="Id_role1TextBox" runat="server" Text='<%# Bind("Id_role1") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table class="w-100">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"><strong>Nombre:</strong></td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6"><strong></strong></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"><strong>Apellidos:</strong></td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6"><strong></strong></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"><strong>Correo:</strong></td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6"><strong></strong></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"><strong>Usuario: </strong></td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6"><strong></strong></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style7"><strong>Fecha de nacimiento</strong></td>
                                    <td>
                                        <asp:Label ID="Date_of_birthLabel" runat="server" Text='<%# Bind("Date_of_birth", "{0:d}") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6"><strong></strong></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text-center" colspan="2">
                                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-outline-primary btn-sm" runat="server" CausesValidation="False" CommandName="Edit" Text="Actualizar datos..."></asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:ObjectDataSource ID="ODS" runat="server" SelectMethod="get_information" TypeName="DAORegis" DataObjectTypeName="EUserInformation" UpdateMethod="update_data">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="0" Name="user" SessionField="UserID" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>

                </div>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

