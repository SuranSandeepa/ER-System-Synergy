<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Database2ViewPage.aspx.cs" Inherits="ER_System_Synergy.Database2ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <section>
        <div class="container">
            <asp:GridView ID="dgvExcelUploadDB1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="false" EmptyDataText="No Record Found" PageSize="30" HorizontalAlign="Center" BorderColor="#003366" Font-Bold="True" Font-Names="Calibri">
                <Columns>
                    <asp:BoundField DataField="d2date" HeaderText="Date">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d2pn" HeaderText="PN">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d2status" HeaderText="Status">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BackColor="#333333" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#003366" BorderStyle="Groove" />
            </asp:GridView>
        </div>
    </section>

</asp:Content>
