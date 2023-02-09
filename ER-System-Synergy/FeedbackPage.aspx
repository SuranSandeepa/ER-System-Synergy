<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="FeedbackPage.aspx.cs" Inherits="ER_System_Synergy.FeedbackPage" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="CSS/Main.css" rel="stylesheet" />

    <style>
        span {
            color: black;
            font-weight: bolder;
            font-size: 20px;
        }

        .emojis {
            color: white;
            font-size: 23px;
        }

        .row {
            background: #D3D3D3;
            border-radius: 30px;
        }

        side {
            border-top-left-radius: 30px;
            border-bottom-left-radius: 30px;
        }

        .Rsave {
            border: none;
            outline: none;
            height: 40px;
            width: 80px;
            background-color: black;
            color: white;
            border-radius: 4px;
            font-weight: bold;
        }

            .Rsave:hover {
                background: white;
                border: 1px solid;
                color: black;
            }

        #Fimage {
            border-top-left-radius: 30px;
            border-bottom-left-radius: 30px;
        }

        h1 {
            color: black;
            font-weight: 800;
            font-size: 45px;
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-family: Copperplate;
            margin-top: 25px;
        }

        .rb {
            font-size: 15px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <div class="container">
            <h1>FEEDBACK FORM
            </h1>
        </div>
    </section>

    <section class="Form my-4 mx-5">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-5">
                    <img src="Images/y2.png" id="Fimage" class="side img-fluid" alt="Feedback-Form" />
                </div>
                <div class="col-lg-7 px-5 pt-5">
                    <form>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>EPF No :</span>
                                <asp:TextBox ID="txtREPF" class="form-control my-1 p-1" placeholder="Type Here..." runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>q1 :</span>
                                <asp:TextBox ID="txtQ1" class="form-control my-1 p-1" placeholder="Type Here..." runat="server"></asp:TextBox>
                            </div>
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
                        <div class="form-row">
                            <div class="col-lg-7">
                                <span>Reason :</span>
                                <asp:TextBox ID="txtReason" class="form-control my-1 p-1" placeholder="Type Here..." runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <asp:Button ID="btnRSave" class="Rsave mt-3 mb-5" runat="server" Text="Save" OnClick="btnRSave_Click" />
                                <asp:Button ID="btnCancel" class="Rsave mt-3 mb-5" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                                <asp:Button ID="btnFview" class="Rsave mt-3 mb-5" runat="server" Text="View" OnClick="btnFview_Click" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
