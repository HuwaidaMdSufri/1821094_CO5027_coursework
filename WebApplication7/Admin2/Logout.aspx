<%@ Page Title="Log Out" Language="C#" MasterPageFile="~/Admin2/Siteadmin.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="WebApplication7.Admin2.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <asp:Panel ID="logout" runat="server" >
        <h2>Log Out</h2> 

        <p>Do Want to LogOut From Admin?</p>

        <asp:Button ID="btnlogout" runat="server" Text="Yes, Logout" OnClick="btnlogout_Click" style="width: 106px" />&nbsp&nbsp<asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />

    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="leftContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
