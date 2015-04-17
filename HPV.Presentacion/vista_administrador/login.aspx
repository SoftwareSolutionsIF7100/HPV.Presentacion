<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HPV.Presentacion.vista_administrador.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScripts" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphReservationForm" runat="server">
    
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphCenter" runat="server">
    <form id="formLogin" runat="server" style="text-align:center"><br /><br />
        <asp:Label ID="lblUsername" runat="server">Usuario:</asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="lblContrasenna" runat="server">Contraseña:</asp:Label>
        <asp:TextBox ID="txtContrasenna" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="btnValidar" runat="server" Text="Ingresar" OnClick="btnValidar_Click"/>
    </form>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="cphTopFotter" runat="server">
</asp:Content>
