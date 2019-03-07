<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication7.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TopContent" runat="server">
</asp:Content>
<asp:Content ID="Product" ContentPlaceHolderID="MainContent" runat="server">
    <div id="product list">
    <h1> Product Items</h1> 
    <link href="CSS/StyleSheet1.css" rel="stylesheet" type="text/css" /> 
             <ul class="repeater">
    <li>
        <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" />
        < href="ProductDetail.aspx"<img src="images/YL/001.jpg" border="0"/>

        <p style="font-size: larger"><strong>Detail:</strong></p>
        <p style="font-size: larger"><strong>Price:$32.90</strong></p>
        <p>&nbsp;</p>

     </li>
</ul>

 </div>
</asp:Content>
