<%@ Page Title="" Language="C#" MasterPageFile="~/Admin2/Siteadmin.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="WebApplication7.Admin2.Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="76px" HorizontalAlign="Justify" Width="417px">
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
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblNewProduct] WHERE [ProductID] = @original_ProductID AND (([ItemNo] = @original_ItemNo) OR ([ItemNo] IS NULL AND @original_ItemNo IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([PShortName] = @original_PShortName) OR ([PShortName] IS NULL AND @original_PShortName IS NULL)) AND (([PDetail] = @original_PDetail) OR ([PDetail] IS NULL AND @original_PDetail IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND (([WholesaleP] = @original_WholesaleP) OR ([WholesaleP] IS NULL AND @original_WholesaleP IS NULL)) AND (([RetailP] = @original_RetailP) OR ([RetailP] IS NULL AND @original_RetailP IS NULL)) AND (([PV] = @original_PV) OR ([PV] IS NULL AND @original_PV IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([PType] = @original_PType) OR ([PType] IS NULL AND @original_PType IS NULL))" InsertCommand="INSERT INTO [tblNewProduct] ([ItemNo], [ProductName], [PShortName], [PDetail], [Size], [WholesaleP], [RetailP], [PV], [Quantity], [PType]) VALUES (@ItemNo, @ProductName, @PShortName, @PDetail, @Size, @WholesaleP, @RetailP, @PV, @Quantity, @PType)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblNewProduct]" UpdateCommand="UPDATE [tblNewProduct] SET [ItemNo] = @ItemNo, [ProductName] = @ProductName, [PShortName] = @PShortName, [PDetail] = @PDetail, [Size] = @Size, [WholesaleP] = @WholesaleP, [RetailP] = @RetailP, [PV] = @PV, [Quantity] = @Quantity, [PType] = @PType WHERE [ProductID] = @original_ProductID AND (([ItemNo] = @original_ItemNo) OR ([ItemNo] IS NULL AND @original_ItemNo IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([PShortName] = @original_PShortName) OR ([PShortName] IS NULL AND @original_PShortName IS NULL)) AND (([PDetail] = @original_PDetail) OR ([PDetail] IS NULL AND @original_PDetail IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND (([WholesaleP] = @original_WholesaleP) OR ([WholesaleP] IS NULL AND @original_WholesaleP IS NULL)) AND (([RetailP] = @original_RetailP) OR ([RetailP] IS NULL AND @original_RetailP IS NULL)) AND (([PV] = @original_PV) OR ([PV] IS NULL AND @original_PV IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([PType] = @original_PType) OR ([PType] IS NULL AND @original_PType IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ItemNo" Type="String" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_PShortName" Type="String" />
            <asp:Parameter Name="original_PDetail" Type="String" />
            <asp:Parameter Name="original_Size" Type="String" />
            <asp:Parameter Name="original_WholesaleP" Type="String" />
            <asp:Parameter Name="original_RetailP" Type="String" />
            <asp:Parameter Name="original_PV" Type="Decimal" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
            <asp:Parameter Name="original_PType" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ItemNo" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="PShortName" Type="String" />
            <asp:Parameter Name="PDetail" Type="String" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="WholesaleP" Type="String" />
            <asp:Parameter Name="RetailP" Type="String" />
            <asp:Parameter Name="PV" Type="Decimal" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="PType" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ItemNo" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="PShortName" Type="String" />
            <asp:Parameter Name="PDetail" Type="String" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="WholesaleP" Type="String" />
            <asp:Parameter Name="RetailP" Type="String" />
            <asp:Parameter Name="PV" Type="Decimal" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="PType" Type="String" />
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ItemNo" Type="String" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_PShortName" Type="String" />
            <asp:Parameter Name="original_PDetail" Type="String" />
            <asp:Parameter Name="original_Size" Type="String" />
            <asp:Parameter Name="original_WholesaleP" Type="String" />
            <asp:Parameter Name="original_RetailP" Type="String" />
            <asp:Parameter Name="original_PV" Type="Decimal" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
            <asp:Parameter Name="original_PType" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ItemNo" HeaderText="ItemNo" SortExpression="ItemNo" />
            <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
            <asp:BoundField DataField="PShortName" HeaderText="PShortName" SortExpression="PShortName" />
            <asp:BoundField DataField="PDetail" HeaderText="Product Detail" SortExpression="PDetail" />
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
            <asp:BoundField DataField="WholesaleP" HeaderText="Wholesale Price" SortExpression="WholesaleP" />
            <asp:BoundField DataField="RetailP" HeaderText="Retail Price" SortExpression="RetailP" />
            <asp:BoundField DataField="PV" HeaderText="PV" SortExpression="PV" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="PType" HeaderText="Product Type" SortExpression="PType" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="leftContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
