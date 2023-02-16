<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Database3ViewPage.aspx.cs" Inherits="ER_System_Synergy.Database3ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <section>
        <div class="container">
            <asp:GridView ID="dgvExcelUploadDB1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="false" EmptyDataText="No Record Found" PageSize="30" HorizontalAlign="Center" BorderColor="#003366" Font-Bold="True" Font-Names="Calibri">
                <Columns>
                    <asp:BoundField DataField="d3date" HeaderText="Date">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d3team" HeaderText="Team">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d3shift" HeaderText="Shift">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d3vsl" HeaderText="VSL">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d3er" HeaderText="ER">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d3gl" HeaderText="GL">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d3budget" HeaderText="Budget">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d3actual" HeaderText="Actual">
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
