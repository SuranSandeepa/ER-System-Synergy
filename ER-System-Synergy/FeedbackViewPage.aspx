<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="FeedbackViewPage.aspx.cs" Inherits="ER_System_Synergy.FeedbackViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

        <section>
        <div class="container">
            <asp:GridView ID="gvFeedback" CssClass="table table-bordered table-hover table-responsive" AutoGenerateColumns="false" EmptyDataText="No Record Found" PageSize="30" HorizontalAlign="Center" runat="server" BackColor="White" BorderColor="#003366">
                <Columns>
                    <asp:BoundField DataField="fdate" HeaderText="Date" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="fepf" HeaderText="EPF" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="fq1" HeaderText="Question 01" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="fselect" HeaderText="Selection" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="freason" HeaderText="Reason" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%">
                        <FooterStyle Width="10%"></FooterStyle>

                        <HeaderStyle Width="10%"></HeaderStyle>

                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:BoundField>

                </Columns>
                <HeaderStyle BackColor="#333333" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#003366" BorderStyle="Groove" />
            </asp:GridView>
        </div>
    </section>

</asp:Content>
