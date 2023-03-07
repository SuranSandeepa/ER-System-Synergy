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

            <section>
        <div class="container">
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="false" EmptyDataText="No Record Found" PageSize="30" HorizontalAlign="Center" BackColor="Silver" BorderColor="#003366" Font-Bold="True" Font-Names="Calibri">
                <Columns>
                    <asp:BoundField DataField="d1epf" HeaderText="EPF" />
                    <asp:BoundField DataField="d1name" HeaderText="Name" />
                    <asp:BoundField DataField="d1team" HeaderText="Team" />
                </Columns>
                <HeaderStyle BackColor="#333333" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#003366" BorderStyle="Groove" />
            </asp:GridView>
        </div>
    </section>
    </div>
</asp:Content>
