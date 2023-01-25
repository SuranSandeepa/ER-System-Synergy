<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ER_System_Synergy.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--Bootstrap CSS--%>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
    <%--Bootstrap JS--%>
    <script src="Bootstrap/JS/bootstrap.min.js"></script>
    <%--Jquery--%>
    <script src="Bootstrap/JS/jquery-3.2.1.slim.min.js"></script>
    <%--Popper JS--%>
    <script src="Bootstrap/JS/popper.min.js"></script>

    <style>
        .wrapper1 {
            height: 100vh !important;
            display: flex;
            align-items: center;
            flex-direction: column;
            justify-content: center;
            width: 100% !important;
            padding: 20px;
            background-color:#f5f5f5 !important;
        }

        .logincontainer{
            border-radius:0px;
            background-color:#fff;
            width:90%;
            max-width:450px;
            position:relative;
            padding:20px;
            border:1px white solid;
            box-shadow:0 15px 10px -10px #acacac;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper1">
            <div class="logincontainer">
                <h3>
                    <img src="Images/lock1.png" />User Login
                </h3>

                <hr />

                <asp:TextBox ID="txtUsername" placeholder="Enter Username..." class="form-control" runat="server"></asp:TextBox>
                <br />

                <asp:TextBox ID="txtPassword" placeholder="Enter Password..." class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-info form-control" OnClick="btnLogin_Click" />
            </div>
        </div>

    </form>
</body>
</html>
