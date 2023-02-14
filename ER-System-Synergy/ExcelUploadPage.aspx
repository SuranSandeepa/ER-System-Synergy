<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="ExcelUploadPage.aspx.cs" Inherits="ER_System_Synergy.ExcelUploadPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <div class="container alert alert-primary w3-padsding-top w3-padding-bottom w3-margin-top w3-margin-bottom" style="text-align: center; background-color: #28313B; color: white;">
        <div class="row align-items-center">
            <div class="col">
                <asp:FileUpload ID="ExcelFileUploadDB1" runat="server" />
            </div>
            <div class="col">
                <asp:Button class="btn btn-success" ID="UploadToDB1" Text="Upload to DB1" runat="server" OnClick="UploadExcelToDB1_Click" />
            </div>
            <div class="col">
                <asp:Button class="btn btn-success" ID="ViewDB1" Text="View Database1" runat="server" OnClick="ViewDB1_Click"/>
            </div>
        </div>
    </div>

</asp:Content>
