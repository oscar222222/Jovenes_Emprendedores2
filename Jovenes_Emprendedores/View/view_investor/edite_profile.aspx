<%@ Page Title="" Language="C#" MasterPageFile="~/View/view_investor/MasterPageInvestor.master" AutoEventWireup="true" CodeFile="~/Controller/investor/edite_profile.aspx.cs" Inherits="View_view_investor_edite_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style4 {
            height: 21px;
            width:
        }
    .auto-style6 {
        margin-left: 203px;
        margin-right: 1px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        <br />
    </p>
    <div style="margin-left: 10%;">
        <table class="w-100">
            <!--<tr>
                <td>
                   
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id,Registred_idea,Id_user2,Image_logo,Elevator_P,File_idea,Date_idea,Name_idea,Type" DataSourceID="ODS_VerIdeas" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Name_idea" HeaderText="Nombre de Idea" SortExpression="Name_idea" />
                            <asp:BoundField DataField="Registred_idea" HeaderText="Descripcion" SortExpression="Registred_idea" />
                            <asp:BoundField DataField="Type" HeaderText="Clasificación" SortExpression="Type" />
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
                    <asp:ObjectDataSource ID="ODS_VerIdeas" runat="server" SelectMethod="ObtenerIdeasCompleta" TypeName="DAOProyectos"></asp:ObjectDataSource>
                   
            </tr>
               -->
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="padding-left: 3%;">

                    <asp:DataList ID="DataList1" runat="server" DataSourceID="ODS_todasLasIdeas" CellPadding="4" ForeColor="#333333" Height="50%" HorizontalAlign="Center" Font-Names="Segoe UI Historic" Font-Size="24px" Width="65%" CssClass="auto-style6">
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#EFF3FB" />
                        <ItemTemplate>
                            <table class="w-100">
                                <tr>
                                    <td rowspan="12" style="width:25%;">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image_logo") %>' ImageAlign="Middle" Width="300px" />
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Id_user2") %>' Visible="False"></asp:Label>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:Label ID="Label1" runat="server" Font-Size="Larger" ForeColor="#003366" Text="Nombre de proyecto"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="L_DNombre" runat="server" Text='<%# Eval("Name_idea") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="Label2" runat="server" Font-Size="Larger" ForeColor="#003366" Text="Descripción"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="L_DDescrip" runat="server" Text='<%# Eval("Registred_idea") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Font-Size="Larger" ForeColor="#003366" Text="Clasificación"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="L_DTipo" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LB_DVermas" runat="server" OnClick="LB_DVermas_Click1">Ver mas...</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>

                    <asp:ObjectDataSource ID="ODS_todasLasIdeas" runat="server" SelectMethod="ObtenerIdeasCompleta" TypeName="DAOProyectos"></asp:ObjectDataSource>

                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton2" CssClass="btn btn-primary" runat="server" NavigateUrl="~/View/view_investor/FORMSearch.aspx" OnClick="LinkButton2_Click">Busqueda avanzada</asp:LinkButton></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
    <p>
    </p>
    <p>
        &nbsp;
    </p>
</asp:Content>

