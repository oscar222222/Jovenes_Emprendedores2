<%@ Page Title="" Language="C#" MasterPageFile="~/View/view_young_innova/Master-Innovador.master" AutoEventWireup="true" CodeFile="~/Controller/innovator/Registration_of_idea.aspx.cs" Inherits="View_view_young_innova_Registration_of_idea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="tablero2">
        <div class="tablero3">
            <center>
                <h1>
            <asp:Label for="TB_NameProject" runat="server" Text="REGISTRA TUS IDEAS:" ID="Label6" Font-Names="Segoe UI Historic" Font-Size="30px"></asp:Label>
                </h1></center>
            <br />
            <asp:Label for="TB_NameProject" runat="server" Text="Ingrese el nombre del proyecto" Font-Names="Segoe UI Historic" Font-Size="24px"></asp:Label>
            <br />
            <asp:TextBox CssClass="form-control" ID="TB_NameProject" runat="server" Width="509px"></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Escribe una breve descripción del proyecto" Font-Names="Segoe UI Historic" Font-Size="24px"></asp:Label>
            <br />
            <asp:TextBox CssClass="form-control" ID="TB_Smallidea" runat="server" Width="509px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Cargue la infografia respectiva del proyecto" Font-Names="Segoe UI Historic" Font-Size="24px"></asp:Label>
            <br />
            <br />
            <asp:FileUpload CssClass="form-control-file" ID="FU_idea" runat="server" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Suba el logo del proyecto" Font-Names="Segoe UI Historic" Font-Size="24px"></asp:Label>
            <br />
            <br />
            <asp:FileUpload ID="FU_Image" runat="server" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Ingresa el link de tu elevator pitch" Font-Names="Segoe UI Historic" Font-Size="24px"></asp:Label>
            <br />
            <asp:TextBox CssClass="form-control" ID="TB_Elevator" runat="server" Width="168px"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Por favor selecciona los temas que contiene tu idea:" Font-Names="Segoe UI Historic" Font-Size="24px"></asp:Label>
            <br />
            <br />
            <asp:CheckBox ID="CHB1" runat="server" Text="TECNOLOGIA" Font-Names="Segoe UI Historic" Font-Size="20px" />
&nbsp;&nbsp;
            <asp:CheckBox ID="CHB2" runat="server" Text="SOFTWARE" Font-Names="Segoe UI Historic" Font-Size="20px" />
&nbsp;
            <asp:CheckBox ID="CHB3" runat="server" Text="HADWARE" Font-Names="Segoe UI Historic" Font-Size="20px" />
&nbsp;<asp:CheckBox ID="CHB7" runat="server" Text="VENTAS" Font-Names="Segoe UI Historic" Font-Size="20px" />
            <br />
            <asp:CheckBox ID="CHB5" runat="server" Text="SALUD" Font-Names="Segoe UI Historic" Font-Size="20px" />
&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CHB8" runat="server" Text="EDUCACIÓN" Font-Names="Segoe UI Historic" Font-Size="20px" />
            &nbsp;&nbsp;
            <asp:CheckBox ID="CHB6" runat="server" Text="CUIDADO AMBIENTAL" Font-Names="Segoe UI Historic" Font-Size="20px" />
            <br />
            <asp:CheckBox ID="CHB4" runat="server" Text="NETWORKING (redes de computadora )" Font-Names="Segoe UI Historic" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
        <br />
            <br />
            
            <center><asp:Button ID="BSave" CssClass="btn btn-primary" runat="server" OnClick="BSave_Click1" Text="Guardar" Font-Names="networking (redes de computadora )" Font-Size="24px" /></center>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-outline-success btn-sm"  OnClick="Button1_Click" Text="volver" />
            <br />
            <br />
            
            <br />
            <br />
        </div>
    </div>
</asp:Content>


