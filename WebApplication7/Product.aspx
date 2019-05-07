<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication7.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">




    <asp:Panel ID="Form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ItemNo:
            <asp:TextBox ID="ItemNoTextBox" runat="server" Text='<%# Bind("ItemNo") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            PShortName:
            <asp:TextBox ID="PShortNameTextBox" runat="server" Text='<%# Bind("PShortName") %>' />
            <br />
            PDetail:
            <asp:TextBox ID="PDetailTextBox" runat="server" Text='<%# Bind("PDetail") %>' />
            <br />
            Size:
            <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
            <br />
            WholesaleP:
            <asp:TextBox ID="WholesalePTextBox" runat="server" Text='<%# Bind("WholesaleP") %>' />
            <br />
            RetailP:
            <asp:TextBox ID="RetailPTextBox" runat="server" Text='<%# Bind("RetailP") %>' />
            <br />
            PV:
            <asp:TextBox ID="PVTextBox" runat="server" Text='<%# Bind("PV") %>' />
            <br />
            Quantity:
            <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            PType:
            <asp:TextBox ID="PTypeTextBox" runat="server" Text='<%# Bind("PType") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ItemNo:
            <asp:TextBox ID="ItemNoTextBox" runat="server" Text='<%# Bind("ItemNo") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            PShortName:
            <asp:TextBox ID="PShortNameTextBox" runat="server" Text='<%# Bind("PShortName") %>' />
            <br />
            PDetail:
            <asp:TextBox ID="PDetailTextBox" runat="server" Text='<%# Bind("PDetail") %>' />
            <br />
            Size:
            <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
            <br />
            WholesaleP:
            <asp:TextBox ID="WholesalePTextBox" runat="server" Text='<%# Bind("WholesaleP") %>' />
            <br />
            RetailP:
            <asp:TextBox ID="RetailPTextBox" runat="server" Text='<%# Bind("RetailP") %>' />
            <br />
            PV:
            <asp:TextBox ID="PVTextBox" runat="server" Text='<%# Bind("PV") %>' />
            <br />
            Quantity:
            <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            PType:
            <asp:TextBox ID="PTypeTextBox" runat="server" Text='<%# Bind("PType") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:Image ID="img" runat="server" Height="300" Width="300" ImageUrl='<%#"~/Images/" + Eval("ItemNo")+ ".jpg"%>' />
            <br />
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ItemNo:
            <asp:Label ID="ItemNoLabel" runat="server" Text='<%# Bind("ItemNo") %>' />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            PShortName:
            <asp:Label ID="PShortNameLabel" runat="server" Text='<%# Bind("PShortName") %>' />
            <br />
            PDetail:
            <asp:Label ID="PDetailLabel" runat="server" Text='<%# Bind("PDetail") %>' />
            <br />
            Size:
            <asp:Label ID="SizeLabel" runat="server" Text='<%# Bind("Size") %>' />
            <br />
            WholesaleP:
            <asp:Label ID="WholesalePLabel" runat="server" Text='<%# Bind("WholesaleP") %>' />
            <br />
            RetailP:
            <asp:Label ID="RetailPLabel" runat="server" Text='<%# Bind("RetailP") %>' />
            <br />
            PV:
            <asp:Label ID="PVLabel" runat="server" Text='<%# Bind("PV") %>' />
            <br />
            Quantity:
            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
            <br />
            PType:
            <asp:Label ID="PTypeLabel" runat="server" Text='<%# Bind("PType") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
   

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblNewProduct] WHERE ([ProductID] = @ProductID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" Type="INT32" />
        </SelectParameters>
    </asp:SqlDataSource>
     </asp:Panel>








</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="map" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="leftContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
