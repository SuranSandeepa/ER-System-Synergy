<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ER_System_Synergy.HomePage" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body>

        <%--Feedback Modal--%>
        <section>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                GIVE FEEDBACK
            </button>

            <!-- Modal -->
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">ER-System FEEDBACK Form</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="mb-3">
                                    <label for="Fepf" class="col-form-label">EPF:</label>
                                    <asp:TextBox ID="Fepf" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <label for="Fq1" class="col-form-label">Question 01:</label>
                                    <asp:TextBox ID="Fq1" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-row">
                                    <div class="col-lg-8">
                                        <span>How is the application :</span><br />
                                        &nbsp;&nbsp;<asp:RadioButton ID="rbExcellent" GroupName="feedback" class="rb" Text="&#128515; Excellent" runat="server" /><%--<span class="emojis">&#128515;</span>--%><br />
                                        &nbsp;&nbsp;<asp:RadioButton ID="rbGood" GroupName="feedback" class="rb" Text="&#128522; Good" runat="server" /><%--<span class="emojis">&#128522;</span>--%><br />
                                        &nbsp;&nbsp;<asp:RadioButton ID="rbNeutral" GroupName="feedback" class="rb" Text="&#128578; Neutral" runat="server" /><%--<span class="emojis">&#128578;</span>--%><br />
                                        &nbsp;&nbsp;<asp:RadioButton ID="rbPoor" GroupName="feedback" class="rb" Text="&#128577; Poor" runat="server" /><%--<span class="emojis">&#128577;</span>--%>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="message-text" class="col-form-label">Reason:</label>
                                    <asp:TextBox ID="Freason" class="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="btnRSave" class="btn btn-primary" OnClick="btnRSave_Click" runat="server" Text="Save" />
                            <asp:Button ID="btnCancel" class="btn btn-warning" OnClick="btnCancel_Click" runat="server" Text="Cancel" />
                            <asp:Button ID="btnFview" class="btn btn-success" OnClick="btnFeedback_Click" runat="server" Text="View" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </body>

</asp:Content>
