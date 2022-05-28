<%@ Page Title="" Language="C#" MasterPageFile="~/View/view_investor/MasterPageInvestor.master" AutoEventWireup="true" CodeFile="~/Controller/investor/VerIdea.aspx.cs" Inherits="View_view_investor_VerIdea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            height: 231px;
        }

        .auto-style7 {
            height: 21px;
        }

        .auto-style8 {
            height: 21px;
            font-size: large;
        }

        .auto-style9 {
            font-size: x-large;
            color: #003399;
        }
        .auto-style10 {
            height: 21px;
            font-size: x-large;
        }
        .auto-style11 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="w-100">
        <tr>
            <td colspan="3">&nbsp;</td>

        </tr>
        <tr>
            <td colspan="3"></td>
        </tr>
        <tr>
            <td colspan="3">

                <div style="padding-left:2%;">
                    <asp:Button ID="Button1" runat="server" Text="volver" class="btn btn-danger btn-sm" OnClick="Button1_Click" />
                </div>

            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <center>
                    <div style="background-color: #C6C9F3; padding-left: 3%; padding-bottom: 3%; padding-top: 3%; width: 70%;">

                        <asp:FormView ID="FormView1" runat="server" DataSourceID="ODS_verMas" HorizontalAlign="Center" Font-Names="Segoe UI Historic" Font-Size="24px" Width="500px">
                            <edititemtemplate>
                                Id:
                        <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                                <br />
                                Registred_idea:
                        <asp:TextBox ID="Registred_ideaTextBox" runat="server" Text='<%# Bind("Registred_idea") %>' />
                                <br />
                                Id_user2:
                        <asp:TextBox ID="Id_user2TextBox" runat="server" Text='<%# Bind("Id_user2") %>' />
                                <br />
                                Image_logo:
                        <asp:TextBox ID="Image_logoTextBox" runat="server" Text='<%# Bind("Image_logo") %>' />
                                <br />
                                Elevator_P:
                        <asp:TextBox ID="Elevator_PTextBox" runat="server" Text='<%# Bind("Elevator_P") %>' />
                                <br />
                                File_idea:
                        <asp:TextBox ID="File_ideaTextBox" runat="server" Text='<%# Bind("File_idea") %>' />
                                <br />
                                Date_idea:
                        <asp:TextBox ID="Date_ideaTextBox" runat="server" Text='<%# Bind("Date_idea") %>' />
                                <br />
                                Name_idea:
                        <asp:TextBox ID="Name_ideaTextBox" runat="server" Text='<%# Bind("Name_idea") %>' />
                                <br />
                                Type:
                        <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                            </edititemtemplate>
                            <insertitemtemplate>
                                Id:
                        <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                                <br />
                                Registred_idea:
                        <asp:TextBox ID="Registred_ideaTextBox" runat="server" Text='<%# Bind("Registred_idea") %>' />
                                <br />
                                Id_user2:
                        <asp:TextBox ID="Id_user2TextBox" runat="server" Text='<%# Bind("Id_user2") %>' />
                                <br />
                                Image_logo:
                        <asp:TextBox ID="Image_logoTextBox" runat="server" Text='<%# Bind("Image_logo") %>' />
                                <br />
                                Elevator_P:
                        <asp:TextBox ID="Elevator_PTextBox" runat="server" Text='<%# Bind("Elevator_P") %>' />
                                <br />
                                File_idea:
                        <asp:TextBox ID="File_ideaTextBox" runat="server" Text='<%# Bind("File_idea") %>' />
                                <br />
                                Date_idea:
                        <asp:TextBox ID="Date_ideaTextBox" runat="server" Text='<%# Bind("Date_idea") %>' />
                                <br />
                                Name_idea:
                        <asp:TextBox ID="Name_ideaTextBox" runat="server" Text='<%# Bind("Name_idea") %>' />
                                <br />
                                Type:
                        <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                            </insertitemtemplate>
                            <itemtemplate>
                                <br />
                                <table class="auto-style4">
                                    <tr>
                                        <td class="auto-style7">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7"><strong>
                                            <asp:Label ID="Name_ideaLabel0" runat="server" CssClass="auto-style9" Text='<%# Bind("Name_idea") %>' />
                                        </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image_logo") %>' Width="200px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8"><strong>Nombre de la idea</strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">
                                            <asp:Label ID="Name_ideaLabel" runat="server" Text='<%# Bind("Name_idea") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style10"><strong><span class="auto-style11">Joven Emprendedor</span></strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Apellido") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8"><strong>Contacto</strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8"><strong>Descripcion</strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">
                                            <asp:Label ID="Registred_ideaLabel" runat="server" Text='<%# Bind("Registred_idea") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8"><strong>Clasificación</strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">
                                            <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7"><strong>Fecha de creacion</strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">
                                            <asp:Label ID="Date_ideaLabel" runat="server" Text='<%# Bind("Date_idea") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7"><strong>Elevator pitch</strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl='<%#   Eval("Elevator_P") %>' Text='<%# Eval("Elevator_P") %>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8"><strong>Documentación</strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">
                                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("File_idea") %>'>Descarga Infografia</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">&nbsp;</td>
                                    </tr>
                                </table>
                            </itemtemplate>
                        </asp:FormView>

                        <asp:ObjectDataSource ID="ODS_verMas" runat="server" SelectMethod="obtenerVerMas2" TypeName="DAOProyectos">
                            <selectparameters>
                                <asp:SessionParameter DefaultValue="0" Name="N_Emp" SessionField="id_Emp" Type="Int32" />
                                <asp:SessionParameter DefaultValue="0" Name="N_Idea" SessionField="nombreIdea" Type="String" />
                            </selectparameters>
                        </asp:ObjectDataSource>
                    </div>

                </center>

            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

