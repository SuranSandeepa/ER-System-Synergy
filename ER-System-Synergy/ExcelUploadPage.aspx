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
                <asp:Button class="btn btn-danger" ID="DeleteDB1" Text="Delete Today's Uploads" runat="server" OnClick="DeleteDB1_Click" />
            </div>
            <div class="col">
                <asp:Button class="btn btn-success" ID="ViewDB1" Text="View DB1" runat="server" OnClick="ViewDB1_Click" />
            </div>
        </div>
    </div>


    <br />

    <div class="container alert alert-primary w3-padsding-top w3-padding-bottom w3-margin-top w3-margin-bottom" style="text-align: center; background-color: #28313B; color: white;">
        <div class="row align-items-center">
            <div class="col">
                <asp:FileUpload ID="ExcelFileUploadDB2" runat="server" />
            </div>
            <div class="col">
                <asp:Button class="btn btn-success" ID="UploadToDB2" Text="Upload to DB2" runat="server" OnClick="UploadToDB2_Click" />
            </div>
            <div class="col">
                <asp:Button class="btn btn-danger" ID="DeleteDB2" Text="Delete Today's Uploads" runat="server" OnClick="DeleteDB2_Click" />
            </div>
            <div class="col">
                <asp:Button class="btn btn-success" ID="ViewDB2" Text="View DB2" runat="server" OnClick="ViewDB2_Click" />
            </div>
        </div>
    </div>




    <%--    <section>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
            Database 01
        </button>

        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Database 01 Excel Upload</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="col">
                            <asp:FileUpload ID="ExcelFileUploadDB1" runat="server" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <asp:Button ID="UploadToDB1" runat="server" OnClick="UploadExcelToDB1_Click" Text="Upload" CssClass="btn btn-primary" data-dismiss="modal" />
                        <asp:Button ID="ViewDB1" runat="server" OnClick="ViewDB1_Click" Text="View DB1" CssClass="btn btn-success" data-dismiss="modal" />
                        <asp:Button ID="DeleteDB1" runat="server" OnClick="DeleteDB1_Click" Text="Delete" CssClass="btn btn-danger" data-dismiss="modal" />
                    </div>
                </div>
            </div>
        </div>

    </section>--%>
</asp:Content>
