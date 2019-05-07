<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="WebApplication7.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Top" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

       <h2 style="font-size: xx-large; background-color: #999999">PRODUCT DESCRIPTIONS:</h2>
       <div style ="padding-left:30px;">
            
           <asp:Image ID="Image1" runat="server" Height="184px" Width="195px" />
           <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="ProductDataSource1">
               <EditItemTemplate>
                   ProductId:
                   <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
                   <br />
                   ProductName:
                   <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                   <br />
                   ProductDesc:
                   <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
                   <br />
                   ProductQuantity:
                   <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                   <br />
                   ProductPrice:
                   <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                   <br />
                   <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                   &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
               </EditItemTemplate>
               <InsertItemTemplate>
                   ProductName:
                   <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                   <br />
                   ProductDesc:
                   <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
                   <br />
                   ProductQuantity:
                   <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                   <br />
                   ProductPrice:
                   <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                   <br />
                   <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                   &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
               </InsertItemTemplate>
               <ItemTemplate>
                   ProductId:
                   <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                   <br />
                   ProductName:
                   <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                   <br />
                   ProductDesc:
                   <asp:Label ID="ProductDescLabel" runat="server" Text='<%# Bind("ProductDesc") %>' />
                   <br />
                   ProductQuantity:
                   <asp:Label ID="ProductQuantityLabel" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                   <br />
                   ProductPrice:
                   <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
                   <br />
                   <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                   &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                   &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
               </ItemTemplate>
           </asp:FormView>
           </div>
&nbsp;</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="ProductDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
</asp:Content>
