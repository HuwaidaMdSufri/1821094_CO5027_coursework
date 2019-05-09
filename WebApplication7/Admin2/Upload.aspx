<%@ Page Title="Upload" Language="C#" MasterPageFile="~/Admin2/Siteadmin.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="WebApplication7.Admin2.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">

    <asp:Panel ID="upload" runat="server">
         <p>
        <asp:FileUpload ID="FileUploadImage" runat="server" />
        </p>
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:Image ID="currentimage" runat="server" Height="245px" Width="333px" />
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="leftContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
