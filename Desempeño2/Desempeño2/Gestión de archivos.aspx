<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Gestión de archivos.aspx.cs" Inherits="Desempeño2.Gestión_de_archivos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleArchivos.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Archivos">

   
    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
    &nbsp;<asp:Button ID="Button1" runat="server" Text="Cargar" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Descargar" HeaderText="Descargar" ShowHeader="True" Text="Botón" />
        </Columns>
    </asp:GridView>
    <br />
         </div>
    </asp:Content>
