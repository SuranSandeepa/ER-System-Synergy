<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ER_System_Synergy.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body>
         <asp:Button ID="btnFeedback" runat="server" Text="FEEDBACK" OnClick="btnFeedback_Click" />
    </body>
   
</asp:Content>
