<%@ Page Title="" Language="C#" MasterPageFile="~/View/view_young_innova/Master-Innovador.master" AutoEventWireup="true" CodeFile="~/Controller/innovator/InnovatorPage1.aspx.cs" Inherits="View_view_young_innova_InnovatorPage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style4 {
            margin-top: 10%;
            border-radius: 20px;
            height: 30%;
            width: 71%;
            margin-left: 10%;
        }
    .auto-style7 {
        width: 92px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="auto-style4">
        
        <table class="w-100">
            <tr>
                <td colspan="3">
                    <div class="text-center">
                    <asp:GridView ID="GV_edit" runat="server" AutoGenerateColumns="False" CellPadding="4"  EmptyDataText="No hay Ideas aun...¡Agrega la primera!" DataKeyNames="Id_user2,Id" DataSourceID="ODSobtenerIdea" ForeColor="#333333" GridLines="None"  PageSize="3" Width="90%" OnRowUpdating="GV_edit_RowUpdating" Font-Names="Segoe UI Historic" Font-Size="24px" HorizontalAlign="Center" ><EmptyDataRowStyle BackColor="WindowFrame"
          ForeColor="Black"/>
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="PROYECTO" SortExpression="Image_logo">
                                <EditItemTemplate>
                                    <table class="w-100">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="nueva imagen"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:FileUpload ID="FL_Logo" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text="Nuevo nombre"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Name_idea") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <table class="w-100">
                                        <tr>
                                            <td class="text-center">
                                                <br />
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name_idea") %>'></asp:Label>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image_logo") %>' Width="100px" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Registred_idea" HeaderText="DESCRIPCIÓN" SortExpression="Registred_idea" />
                            <asp:TemplateField HeaderText="ELEVATOR PITCH" SortExpression="Elevator_P">
                                <EditItemTemplate>
                                    <table class="w-100">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text="Nuevo elevator"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Elevator_P") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("Elevator_P") %>'>VISUALIZAR ELEVATOR</asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="INFOGRAFÍA" SortExpression="File_idea">
                                <EditItemTemplate>
                                    <table class="w-100">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" Text="Nuevo documento"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Bind("File_idea") %>'>VISUALIZAR DOCUMENTO</asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="FECHA  DE REGISTRO" SortExpression="Date_idea">
                                <EditItemTemplate>
                                    <table class="w-100">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text="Fecha de actualización"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Date_idea", "{0:d}") %>' TextMode="Date"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Date_idea", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="TIPO" SortExpression="Type">
                                <EditItemTemplate>
                                    <table class="w-100">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="auto-style7">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="auto-style7">
                                                <asp:Label ID="Label8" runat="server" Text="Nuevo tipo"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Type") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="auto-style7">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    </div>
                    <asp:ObjectDataSource ID="ODSobtenerIdea" runat="server" SelectMethod="get_Idea" TypeName="DAORegis" DataObjectTypeName="EIdea" DeleteMethod="delete_dataIDea" UpdateMethod="update_dataIDea">
                        <SelectParameters>
                            <asp:SessionParameter Name="user" SessionField="UserID" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <linkbutton class="btn btn-primary">
                        <a href="Registration_of_idea.aspx" style="color: white;">AGREGAR UNA IDEA
            </a>
                    </linkbutton>


                </td>
            </tr>
        </table>

    </div>




</asp:Content>

