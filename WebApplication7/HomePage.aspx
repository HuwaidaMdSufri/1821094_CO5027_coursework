<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication7.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Top" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <style>

        .repeater ul li {
            height:500px;
            margin-top:40px;
        }

        .repeater li {
            display: inline-block;
            float: left;
            width: 20%; 
        }

        .repeater ul li a {
            text-decoration: none;
            color: purple;
            font-size: 50px;
            
        }

        .repeater ul li a p{
            text-align:center;
            
        }

    </style>

    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
      <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate>
            <ul class="repeater">
                <li>
                    
                    <p>
                    <asp:Image ID="Image1" runat="server" Height="155px" Width="144px" />
                    </p>
                    <p> &nbsp </p>
                    <p><b>Name:</b><a href="<%#Eval("ProductID","Product.aspx?Id={0}") %>"><%#Eval("ProductName") %></a></p>
                    <p><b>Quantity:</b><%#Eval("ProductQuantity") %></p>
                    <p><b>Price:</b><%#Eval("ProductPrice") %></p>
                </li>
            </ul>

        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>

    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MapContent" runat="server">
    
    
    
</asp:Content>
