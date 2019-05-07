<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index 1.aspx.cs" Inherits="WebApplication7.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Top" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <asp:SqlDataSource ID="productSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
     <link href="CSS/Styles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        .repeater ul li {
            height:500px;
            margin-top:40px;
        }

        .repeater li {
            display: inline-block;
            float: left;
            width: 30%; 
        }

        .repeater ul li a {
            text-decoration: none;
            color: purple;
            font-size: 50px;
        }

        .repeater ul li a p{
            text-align:center;
        }

        .auto-style4{
            font-size: xx-large;
            text-align: center;
            background-color: #99CC00;
        }
    </style>

    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="productSqlDataSource">

        <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate>
            <ul class="repeater">
                <li>
                    <asp:Image runat="server" Height="250" Width="250" ImageUrl='<%#"~/productimage/CEDARWOOD YL.jpg"+ Eval("ProductID")+ ".jpg" %>' />
                    <p> &nbsp </p>
                    <p style="font-size:larger"><strong>Available Product:</strong></p>
                    <p> &nbsp </p>
                    <p><a href="<%#Eval("ProductID","Product.aspx?Id={0}") %>"><%#Eval("ProductName") %></a></p>
                    <p><h2>Quantity:</h2><%#Eval("ProductQuantity") %></p>
                    <p><h2>Price:</h2><%#Eval("ProductPrice") %></p>
                </li>
            </ul>

        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
  

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MapContent" runat="server">
</asp:Content>
