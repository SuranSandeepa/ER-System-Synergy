<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="DataEnteringPage.aspx.cs" Inherits="ER_System_Synergy.DataEnteringPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Main.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 32%;
            height: 37px;
            margin: auto;
        }

        .auto-style2 {
            width: 232px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <div>
        <%--dropdown--%>
        <div>
            <div class="container alert alert-primary w3-padding-top w3-padding-bottom w3-margin-top w3-margin-bottom" style="background-color: #28313B; color: white;">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:DropDownList ID="dwRC" CssClass="btn btn-primary dropdown-toggle" runat="server">
                                <asp:ListItem>Factory 01 Shift A</asp:ListItem>
                                <asp:ListItem>Factory 01 Shift B</asp:ListItem>
                                <asp:ListItem>Factory 02 Shift A</asp:ListItem>
                                <asp:ListItem>Factory 02 Shift B</asp:ListItem>
                                <asp:ListItem>SOB Area A</asp:ListItem>
                                <asp:ListItem>SOB Area B</asp:ListItem>
                                <asp:ListItem>SOB Area B</asp:ListItem>
                                <asp:ListItem>Pre Sewing A</asp:ListItem>
                                <asp:ListItem>Pre Sewing B</asp:ListItem>
                                <asp:ListItem>Pre Sewing C</asp:ListItem>
                                <asp:ListItem>Other Department A</asp:ListItem>
                                <asp:ListItem>Other Department B</asp:ListItem>
                            </asp:DropDownList>

                        </td>
                        <td>
                            <asp:Button ID="btnSearchRC" class="btn btn-success" runat="server" Text="Search" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
