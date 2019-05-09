<%@ Page Title="Product List" Language="C#" MasterPageFile="~/Admin2/Siteadmin.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="WebApplication7.Admin2.ProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ItemNo" HeaderText="ItemNo" SortExpression="ItemNo" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="PShortName" HeaderText="PShortName" SortExpression="PShortName" />
            <asp:BoundField DataField="PDetail" HeaderText="PDetail" SortExpression="PDetail" />
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
            <asp:BoundField DataField="WholesaleP" HeaderText="WholesaleP" SortExpression="WholesaleP" />
            <asp:BoundField DataField="RetailP" HeaderText="RetailP" SortExpression="RetailP" />
            <asp:BoundField DataField="PV" HeaderText="PV" SortExpression="PV" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="PType" HeaderText="PType" SortExpression="PType" />
            <asp:HyperLinkField Text="Upload Image" DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/Admin2/Upload.aspx?Prod_Id={0}" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblNewProduct] WHERE [ProductID] = @original_ProductID AND (([ItemNo] = @original_ItemNo) OR ([ItemNo] IS NULL AND @original_ItemNo IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([PShortName] = @original_PShortName) OR ([PShortName] IS NULL AND @original_PShortName IS NULL)) AND (([PDetail] = @original_PDetail) OR ([PDetail] IS NULL AND @original_PDetail IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND (([WholesaleP] = @original_WholesaleP) OR ([WholesaleP] IS NULL AND @original_WholesaleP IS NULL)) AND (([RetailP] = @original_RetailP) OR ([RetailP] IS NULL AND @original_RetailP IS NULL)) AND (([PV] = @original_PV) OR ([PV] IS NULL AND @original_PV IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([PType] = @original_PType) OR ([PType] IS NULL AND @original_PType IS NULL))" InsertCommand="INSERT INTO [tblNewProduct] ([ItemNo], [ProductName], [PShortName], [PDetail], [Size], [WholesaleP], [RetailP], [PV], [Quantity], [PType]) VALUES (@ItemNo, @ProductName, @PShortName, @PDetail, @Size, @WholesaleP, @RetailP, @PV, @Quantity, @PType)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblNewProduct]" UpdateCommand="UPDATE [tblNewProduct] SET [ItemNo] = @ItemNo, [ProductName] = @ProductName, [PShortName] = @PShortName, [PDetail] = @PDetail, [Size] = @Size, [WholesaleP] = @WholesaleP, [RetailP] = @RetailP, [PV] = @PV, [Quantity] = @Quantity, [PType] = @PType WHERE [ProductID] = @original_ProductID AND (([ItemNo] = @original_ItemNo) OR ([ItemNo] IS NULL AND @original_ItemNo IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([PShortName] = @original_PShortName) OR ([PShortName] IS NULL AND @original_PShortName IS NULL)) AND (([PDetail] = @original_PDetail) OR ([PDetail] IS NULL AND @original_PDetail IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND (([WholesaleP] = @original_WholesaleP) OR ([WholesaleP] IS NULL AND @original_WholesaleP IS NULL)) AND (([RetailP] = @original_RetailP) OR ([RetailP] IS NULL AND @original_RetailP IS NULL)) AND (([PV] = @original_PV) OR ([PV] IS NULL AND @original_PV IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([PType] = @original_PType) OR ([PType] IS NULL AND @original_PType IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ItemNo" Type="String" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_PShortName" Type="String" />
            <asp:Parameter Name="original_PDetail" Type="String" />
            <asp:Parameter Name="original_Size" Type="String" />
            <asp:Parameter Name="original_WholesaleP" Type="Decimal" />
            <asp:Parameter Name="original_RetailP" Type="Decimal" />
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
            <asp:Parameter Name="WholesaleP" Type="Decimal" />
            <asp:Parameter Name="RetailP" Type="Decimal" />
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
            <asp:Parameter Name="WholesaleP" Type="Decimal" />
            <asp:Parameter Name="RetailP" Type="Decimal" />
            <asp:Parameter Name="PV" Type="Decimal" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="PType" Type="String" />
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ItemNo" Type="String" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_PShortName" Type="String" />
            <asp:Parameter Name="original_PDetail" Type="String" />
            <asp:Parameter Name="original_Size" Type="String" />
            <asp:Parameter Name="original_WholesaleP" Type="Decimal" />
            <asp:Parameter Name="original_RetailP" Type="Decimal" />
            <asp:Parameter Name="original_PV" Type="Decimal" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
            <asp:Parameter Name="original_PType" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="leftContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
