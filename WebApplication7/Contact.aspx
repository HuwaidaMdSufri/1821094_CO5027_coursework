<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication7.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Top" runat="server">

    <h2>this page should appear in wbpage</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server"> 
    <h2>Contact Us Form</h2>
    <asp:panel runat="server" ID="pnlCompose">
        <asp:validationsummary runat="server" CssClass="errorMessages">
        </asp:validationsummary>
        <div>
            
            <asp:label id="lblEmail" runat="server" text="Email" associatedcontrolid="txtEmail" ClientMode="Predictable"> 
            </asp:label>
            <p>

            </p>
            <asp:textbox id="txtEmail" runat="server" TextMode="Email"
                 BackColor="White" BorderColor="Black" BorderStyle="Solid" 
                BorderWidth="2px" Width="327px" Height="24px">
            </asp:textbox> 
            <p>

           </p>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="Please enter your email address" 
                ControlToValidate="txtEmail" CssClass="error" Enabled="false">*</asp:RequiredFieldValidator>
 
            <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                ErrorMessage="Please check you entered your email address correctly" 
                ControlToValidate="txtEmail" CssClass="error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:label id="lblConfirmEmail" runat="server" text="Confirm Email" associatedcontrolid="txtConfirmEmail">
            </asp:label>
            <p>

            </p>
            <asp:textbox id="txtConfirmEmail" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Height="32px" Width="327px"></asp:textbox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please check your confirmed email address" 
                ControlToCompare="txtConfirmEmail" ControlToValidate="txtEmail" CssClass="error">*</asp:CompareValidator> 
            <p>

            </p>
        </div>

        <div>
            <asp:label id="lblSubject" runat="server" text="Subject" associatedcontrolid="txtSubject"> 
            </asp:label>
            <p>

            </p>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" 
                ErrorMessage="Please type a subject for the message" 
                ControlToValidate="txtSubject" CssClass="error">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtSubject" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Width="327px" Height="24px"></asp:TextBox>
        </div>
        <div>
            <p>

            </p>
            <asp:label id="lblBody" runat="server" text="Write your message here" associatedcontrolid="txtBody">
            </asp:label>
            <p>

            </p>
            <asp:textbox id="txtBody" runat="server" textmode="MultiLine"  Width="400px" Height="165px" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"></asp:textbox>
            <p>

            </p>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" 
                ErrorMessage="Please type your message" ControlToValidate="txtBody" CssClass="error">*</asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:button id="btnContact" runat="server" text="Send" OnClick="btnContact_Click" />
                
        </div>
        <br/>
        <br/>
        <br/>
      </asp:panel>

    <asp:Panel ID="pnlSent" runat="server" visible="false">
    <p>Your message has been sent</p>
    </asp:Panel>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Geolocation</h2>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MapContent" runat="server">
    <h2>Map</h2>
     <div id="map"></div>
    <script>
        function initMap() {
            var location = { lat: 4.885731, lng: 114.931669 };
            var map = new google.maps.Map(document.getElementById("map"), {
                zoom: 19,
                center: location
            });
            var marker = new google.maps.Marker({
                position: location,
                map:map
            })
        }
        </script>
    
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCBHLescsTdhmVRrGoQVTbQlvrgUHCmDzY&callback=initMap"
  type="text/javascript"></script>    
</asp:Content>
