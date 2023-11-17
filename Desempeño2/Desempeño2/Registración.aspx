<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registración.aspx.cs" Inherits="Desempeño2.Registración" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleFormulario.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form">
            <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Completar el campo Email" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
    &nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="El valor ingresado no es un Email" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$" Display="None"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Completar el campo Username" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Edad:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="100px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Completar el campo Edad" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
&nbsp;
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="La edad tiene que ser mayor a 15 y menor a 99" ForeColor="Red" MaximumValue="99" MinimumValue="15" Type="Integer" Display="None"></asp:RangeValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Contraseña:"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Completar campo Contraseña" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Reingrese su Contraseña:"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Completar el campo reingrese contraseña" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
&nbsp;
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="No coinciden las contraseñas" ForeColor="Red" Display="None"></asp:CompareValidator>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </div>

   
  
</asp:Content>
