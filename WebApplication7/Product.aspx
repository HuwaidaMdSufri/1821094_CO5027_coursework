<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication7.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h2 style="height: 29px"> Product Details </h2>  
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="map" runat="server">
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            ProductID:
            <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel1" /><br />
            ItemNo:
            <asp:TextBox Text='<%# Bind("ItemNo") %>' runat="server" ID="ItemNoTextBox" /><br />
            ProductName:
            <asp:TextBox Text='<%# Bind("ProductName") %>' runat="server" ID="ProductNameTextBox" /><br />
            PShortName:
            <asp:TextBox Text='<%# Bind("PShortName") %>' runat="server" ID="PShortNameTextBox" /><br />
            PDetail:
            <asp:TextBox Text='<%# Bind("PDetail") %>' runat="server" ID="PDetailTextBox" /><br />
            Size:
            <asp:TextBox Text='<%# Bind("Size") %>' runat="server" ID="SizeTextBox" /><br />
            WholesaleP:
            <asp:TextBox Text='<%# Bind("WholesaleP") %>' runat="server" ID="WholesalePTextBox" /><br />
            RetailP:
            <asp:TextBox Text='<%# Bind("RetailP") %>' runat="server" ID="RetailPTextBox" /><br />
            PV:
            <asp:TextBox Text='<%# Bind("PV") %>' runat="server" ID="PVTextBox" /><br />
          
            PType:
            <asp:TextBox Text='<%# Bind("PType") %>' runat="server" ID="PTypeTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ItemNo:
            <asp:TextBox Text='<%# Bind("ItemNo") %>' runat="server" ID="ItemNoTextBox" /><br />
            ProductName:
            <asp:TextBox Text='<%# Bind("ProductName") %>' runat="server" ID="ProductNameTextBox" /><br />
            PShortName:
            <asp:TextBox Text='<%# Bind("PShortName") %>' runat="server" ID="PShortNameTextBox" /><br />
            PDetail:
            <asp:TextBox Text='<%# Bind("PDetail") %>' runat="server" ID="PDetailTextBox" /><br />
            Size:
            <asp:TextBox Text='<%# Bind("Size") %>' runat="server" ID="SizeTextBox" /><br />
            WholesaleP:
            <asp:TextBox Text='<%# Bind("WholesaleP") %>' runat="server" ID="WholesalePTextBox" /><br />
            RetailP:
            <asp:TextBox Text='<%# Bind("RetailP") %>' runat="server" ID="RetailPTextBox" /><br />
            PV:
            <asp:TextBox Text='<%# Bind("PV") %>' runat="server" ID="PVTextBox" /><br />
            
            PType:
            <asp:TextBox Text='<%# Bind("PType") %>' runat="server" ID="PTypeTextBox" /><br />
            <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Width="300" Height="300" ImageUrl='<%#"~/Images/" + Eval("ItemNo")+ ".jpg" %>' />
            <p> 

            </p>
            ProductID:
            <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" /><br />
            ItemNo:
            <asp:Label Text='<%# Bind("ItemNo") %>' runat="server" ID="ItemNoLabel" /><br />
            ProductName:
            <asp:Label Text='<%# Bind("ProductName") %>' runat="server" ID="ProductNameLabel" /><br />
            PShortName:
            <asp:Label Text='<%# Bind("PShortName") %>' runat="server" ID="PShortNameLabel" /><br />
            PDetail:
            <asp:Label Text='<%# Bind("PDetail") %>' runat="server" ID="PDetailLabel" /><br />
            Size:
            <asp:Label Text='<%# Bind("Size") %>' runat="server" ID="SizeLabel" /><br />
            WholesaleP:
            <asp:Label Text='<%# Bind("WholesaleP") %>' runat="server" ID="WholesalePLabel" /><br />
            RetailP:
            <asp:Label Text='<%# Bind("RetailP") %>' runat="server" ID="RetailPLabel" /><br />
            PV:
            <asp:Label Text='<%# Bind("PV") %>' runat="server" ID="PVLabel" /><br />
           
            PType:
            <asp:Label Text='<%# Bind("PType") %>' runat="server" ID="PTypeLabel" /><br />

        </ItemTemplate>
    </asp:FormView>
    
    <asp:Label ID="quantity1" runat="server" Text="Qty"></asp:Label>
    <asp:DropDownList ID="list" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:DropDownList>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:IdentityConnectionString %>' SelectCommand="SELECT [ProductID], [ItemNo], [ProductName], [PShortName], [PDetail], [Size], [WholesaleP], [RetailP], [PV], [Quantity], [PType] FROM [tblNewProduct] WHERE ([ProductID] = @ProductID)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID" Name="ProductID" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <p> &nbsp </p>
    <asp:Button ID="addcartbtn" runat="server" Text="ADD TO CART NOW"  Width="227px" Height="35px" OnClick="addcartbtn_Click" />
    <asp:Button ID="homebtn" runat="server" Text="Back to Home page"  Width="227px" Height="35px" OnClick="homebtn_Click" />
   
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="leftContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
