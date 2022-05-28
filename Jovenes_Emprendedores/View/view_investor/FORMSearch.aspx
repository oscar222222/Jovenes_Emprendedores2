<%@ Page Title="" Language="C#" MasterPageFile="~/View/view_investor/MasterPageInvestor.master" AutoEventWireup="true" CodeFile="~/Controller/investor/FORMSearch.aspx.cs" Inherits="View_view_investor_FORMSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
    .auto-style6 {
        width: 136px;
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="background-color: #C8ECE4; margin-left: 20%; margin-right: 20%; margin-top: 5%; border-radius: 20px;">
        <div style="padding-left: 7%; padding-top: 4%;">
            <p>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Ingresa palabras clave para ayudarte en  la busqueda de proyectos:" Font-Names="Segoe UI Historic" Font-Size="30px" ForeColor="Black"></asp:Label>
            </p>
            <p class="text-center">
                <div class="text-center">
                <asp:TextBox ID="TBSearch" CssClass="form-control" Width="40%" runat="server"></asp:TextBox>
                </div>

            
                <asp:Button ID="BSearch" runat="server" CssClass="btn btn-secondary" OnClick="BSearch_Click" Text="BUSCAR" Font-Names="Segoe UI Historic" Font-Size="24px" />
            
            </p>

            
            <asp:ObjectDataSource ID="DAOsearch" runat="server" SelectMethod="GSaerch" TypeName="DAORegis">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="0" Name="name" SessionField="search" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>

            <p>
                &nbsp;
                <div class="text-center">

                    </div>
            </p>
            <p>
                <asp:CheckBox ID="CHB1" runat="server" Text="TECNOLOGIA" Font-Names="Segoe UI Historic" />
                &nbsp;&nbsp;&nbsp;
       
            <asp:CheckBox ID="CHB2" runat="server" Text="SOFTWARE" Font-Names="Segoe UI Historic" />
                &nbsp;<asp:CheckBox ID="CHB3" runat="server" Text="HADWARE" Font-Names="Segoe UI Historic" />
                &nbsp;
       
            <asp:CheckBox ID="CHB8" runat="server" Text="EDUCACIÓN" Font-Names="Segoe UI Historic" />
       
            <asp:CheckBox ID="CHB9" runat="server" Text="EDUCACIÓN" Font-Names="Segoe UI Historic" />
            </p>
            <p>
       
            <asp:CheckBox ID="CHB4" runat="server" Text="NETWORKING (redes de computadora )" Font-Names="Segoe UI Historic" />
            &nbsp;
                <asp:CheckBox ID="CHB5" runat="server" Text="SALUD" Font-Names="Segoe UI Historic" />
                &nbsp;&nbsp;
       
            <asp:CheckBox ID="CHB6" runat="server" Text="CUIDADO AMBIENTAL" Font-Names="Segoe UI Historic" />
                &nbsp;</p>
            <p>
                <asp:CheckBox ID="CHB7" runat="server" Text="VENTAS" Font-Names="Segoe UI Historic" />
                &nbsp;&nbsp;
       
            </p>
            <p>
                <asp:Button ID="Bfil" runat="server" OnClick="Bfil_Click" Text="FILTRAR" />
            </p>
            <p>

                    <asp:DataList ID="DataList1" runat="server" DataSourceID="DAOsearch" CellPadding="4" ForeColor="#333333" Height="50%" Font-Names="Segoe UI Historic" Font-Size="24px" HorizontalAlign="Center" Width="85%" Visible="False">
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#EFF3FB" />
                        <ItemTemplate>
                            <table class="w-100">
                                <tr>
                                    <td rowspan="12" class="text-center" style="width:25%;">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image_logo") %>' ImageAlign="Middle" Width="300px" />
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Id_user2") %>' Visible="False"></asp:Label>
                                    </td>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label5" runat="server" Font-Size="Larger" ForeColor="#003366" Text="Nombre de proyecto"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="L_DNombre" runat="server" Text='<%# Eval("Name_idea") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label2" runat="server" Font-Size="Larger" ForeColor="#003366" Text="Descripción"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="L_DDescrip" runat="server" Text='<%# Eval("Registred_idea") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-start">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text-start">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text-start">
                                        <asp:Label ID="Label3" runat="server" Font-Size="Larger" ForeColor="#003366" Text="Clasificación"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-start">
                                        <asp:Label ID="L_DTipo" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LB_DVermas" runat="server" OnClick="LB_DVermas_Click">Ver mas...</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>

            </p>
            <p class="text-center">

                    <asp:DataList ID="DataList2" runat="server" DataSourceID="DAOFilter" CellPadding="4" ForeColor="#333333" Height="50%" Font-Names="Segoe UI Historic" Font-Size="24px" HorizontalAlign="Center" Width="85%" Visible="False">
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#EFF3FB" />
                        <ItemTemplate>
                            <table class="w-100">
                                <tr>
                                    <td rowspan="12" class="text-center" style="width:25%;">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image_logo") %>' ImageAlign="Middle" Width="300px" />
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Id_user2") %>' Visible="False"></asp:Label>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:Label ID="Label5" runat="server" Font-Size="Larger" ForeColor="#003366" Text="Nombre de proyecto"></asp:Label>
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
                                        <asp:LinkButton ID="LB_DVermas" runat="server" OnClick="LB_DVermas_Click">Ver mas...</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>

                    <asp:ObjectDataSource ID="DAOFilter" runat="server" SelectMethod="GSaerchFIL" TypeName="DAORegis">
                        <SelectParameters>
                            <asp:SessionParameter Name="name" SessionField="search1" Type="String" />
                        </SelectParameters>
                </asp:ObjectDataSource>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;
            </p>
            <p>
            </p>
        </div>
    </div>
</asp:Content>

