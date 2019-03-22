<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication7.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Top" runat="server">
</asp:Content>
<asp:Content ID="Product" ContentPlaceHolderID="MainContent" runat="server">
    <div id="product list">
    <h1> Product Items</h1> </div> 

    <div class="grid-uniform">
  <div class="grid__item large--one-third">
    <div>
              <a href="ProductDetail.aspx">
      <img src="images/YL/003.jpg"/><img src="~/images/YL/003.jpg" style="height: 199px; width: 197px"></a>&nbsp;
        <p style="font-size: larger"><strong>Detail:</strong></p>
        <p style="font-size: larger"><strong>Price:$32.90</strong></p>
    </div>

  </div>
  <div class="grid__item large--one-third">
    <div>
              <a href="ProductDetail.aspx">
      <img src="images/YL/002.jpg" /><img src="~/images/YL/002.jpg" style="height: 199px; width: 197px"></a>&nbsp;
        <p style="font-size: larger"><strong>Detail:</strong></p>
        <p style="font-size: larger"><strong>Price:$32.90</strong></p>
    </div>

  </div>
  <div class="grid__item large--one-third">
    <div>
        <a href="ProductDetail.aspx">
      <img src="images/YL/001.jpg" /><img src="~/images/YL/001.jpg" style="height: 199px; width: 197px"></a>&nbsp;
        <p style="font-size: larger"><strong>Detail:</strong></p>
        <p style="font-size: larger"><strong>Price:$32.90</strong></p>
    </div>

  </div>
  <div class="grid__item large--one-third">
    <div>
              <a href="ProductDetail.aspx">
      <img src="images/YL/004.jpg" /><img src="~/images/YL/004.jpg" style="height: 199px; width: 197px"></a>&nbsp;
        <p style="font-size: larger"><strong>Detail:</strong></p>
        <p style="font-size: larger"><strong>Price:$32.90</strong></p>
    </div>

  </div>
  <div class="grid__item large--one-third">
    <div>
              <a href="ProductDetail.aspx">
      <img src="images/YL/005.jpg" /><img src="~/images/YL/005.jpg" style="height: 199px; width: 197px"></a>&nbsp;
        <p style="font-size: larger"><strong>Detail:</strong></p>
        <p style="font-size: larger"><strong>Price:$32.90</strong></p>
    </div>

  </div>
  <div class="grid__item large--one-third">
    <div>
              <a href="ProductDetail.aspx">
      <img src="images/YL/006.jpg" /><img src="~/images/YL/006.jpg" style="height: 199px; width: 197px"></a>&nbsp;
        <p style="font-size: larger"><strong>Detail:</strong></p>
        <p style="font-size: larger"><strong>Price:$32.90</strong></p>
    </div>

  </div>
</div>
</asp:Content>
