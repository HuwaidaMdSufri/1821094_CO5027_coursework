<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication7.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">

    <asp:Panel ID="Panel1" runat="server">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
        <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate>
            <ul class="repeater">
                <li>
                    
                                     
                    <p><asp:Image ID="img" runat="server" Width="200" Height="200" ImageUrl='<%#"~/Images/" + Eval("ItemNo")+ ".jpg" %>' AlternateText='<%#Eval("ProductName")%>' ToolTip='<%#Eval("ProductName") %>' /> </p>
                    <p> &nbsp </p>
                    <p><a href="<%#Eval("ProductID","Product.aspx?Id={0}") %>"><%#Eval("ProductName") %></a></p>
                    <p><%#Eval("PShortName") %></p>
                    <p><b>Available Quantity:</b><%#Eval("Quantity") %></p>
                    <p><b>Type:</b><%#Eval("PType") %></p>
                </li>
            </ul>

        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>

        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblNewProduct] WHERE (Quantity &gt; 0)"></asp:SqlDataSource>
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="map" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="leftContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
