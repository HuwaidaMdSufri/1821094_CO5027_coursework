<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Loginadmin.aspx.cs" Inherits="WebApplication7.Loginadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h2>Log In Admin</h2>
    <asp:Panel ID="PnlLoginadmin" runat="server" Height="76px">
        <br />
        <asp:Label ID="Label1" runat="server" Text="Email: "></asp:Label>
        <asp:TextBox ID="txtloginadmin" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtloginadminpassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnlogin" runat="server" Text="Log In" OnClick="btnlogin_Click" />
        <asp:Literal ID="LitLoginError1" runat="server"></asp:Literal>
    </asp:Panel>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="map" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="leftContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
