<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="Database1ViewPage.aspx.cs" Inherits="ER_System_Synergy.Database1ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <section>
        <div class="container">
            <asp:GridView ID="dgvExcelUploadDB1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="false" EmptyDataText="No Record Found" PageSize="30" HorizontalAlign="Center" BorderColor="#003366" Font-Bold="True" Font-Names="Calibri">
                <Columns>
                    <asp:BoundField DataField="d1date" HeaderText="Date">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1pn" HeaderText="PN">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1epf" HeaderText="EPF">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1name" HeaderText="Name">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1gender" HeaderText="Gender">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1joindate" HeaderText="Join Date">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1team" HeaderText="Team">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1classification" HeaderText="Classification">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1shift" HeaderText="Shift">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1factory" HeaderText="Factory">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1gl" HeaderText="GL">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1er" HeaderText="ER">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1vsl" HeaderText="VSL">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="d1job" HeaderText="JOB">
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
