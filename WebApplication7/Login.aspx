<%@ Page Title="LogIn" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication7.LogInaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
 <h2>Sign In </h2> 

     <asp:Panel ID="register" runat="server">
    <h2>Register</h2>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="register"
            CssClass="errorMessages" />
        <div>
            <asp:Label ID="lblRegUserName" runat="server" Text="UserName" AssociatedControlID="txtRegUserName"></asp:Label>
            <asp:TextBox ID="txtRegUserName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtRegUserName"
                ErrorMessage="Please enter a user name" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblRegPassword" runat="server" Text="Password" AssociatedControlID="txtRegPassword"></asp:Label>
            <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRegPassword"
                ErrorMessage="Please enter a password" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblRegConfirmPassword" runat="server" Text="Confirm Password" AssociatedControlID="txtRegPassword"></asp:Label>
            <asp:TextBox ID="txtRegConfirmPassword" runat="server" TextMode="Password"></asp:TextBox><asp:CompareValidator
                ErrorMessage="Please check your passwords match" ControlToValidate="txtRegConfirmPassword"
                ControlToCompare="txtRegPassword" runat="server" ValidationGroup="register" ID="cvPasswords">*</asp:CompareValidator>
        </div>
        <div>
            <asp:Label ID="lblDOB" runat="server" Text="DOB" AssociatedControlID="txtDOB"></asp:Label>
            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB"
                ErrorMessage="Please enter a Date of Birth" ValidationGroup="register">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvDOB" runat="server" ErrorMessage="Please enter a valid DOB"
                ValidationGroup="register" ControlToValidate="txtDOB" MaximumValue="01/01/2013"
                MinimumValue="01/01/1900" Type="Date">*</asp:RangeValidator>
        </div>
        <div>
            <asp:Button ID="btnRegister" runat="server" Text="Register" ValidationGroup="register" OnClick="btnRegister_Click" />
            <br />
            </div>
            <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
</asp:Panel>
            

      

    <asp:Panel ID="loginuser" runat="server">
        <h2>Log In</h2>
     <asp:ValidationSummary runat="server" ValidationGroup="login" CssClass="errorMessages" />
            <div>
                <asp:Label ID="lblLogInUserName" runat="server" Text="UserName" AssociatedControlID="txtLogInUser"></asp:Label>
                <asp:TextBox ID="txtLogInUser" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ErrorMessage="Please enter a username" ControlToValidate="txtLogInUser" runat="server" ValidationGroup="login" >*</asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="lblLogInPassword" runat="server" Text="Password" AssociatedControlID="txtLogInPassword"></asp:Label>
                <asp:TextBox ID="txtLogInPassword" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator
                    ErrorMessage="Please enter a password" ControlToValidate="txtLogInPassword" ValidationGroup="login" runat="server" >*</asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="login" OnClick="btnLogin_Click" />
                <br />
                </div>
                <asp:Literal ID="LitLoginError" runat="server"></asp:Literal>
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="map" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="leftContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
