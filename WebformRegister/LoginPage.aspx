<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebformRegister.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 169px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h4>User Login</h4>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">User Name: </td>
                <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>         
            </tr>
            <tr>
                <td class="auto-style1">Password: </td>
                <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:CheckBox ID="chkBoxRememberMe" runat="server" /></td>
                <td><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
            </tr>
        </table>
        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label><br />
        <asp:HyperLink ID="linkRegister" runat="server" NavigateUrl="Register.aspx">Click here to Register</asp:HyperLink>
    </div>
    </form>
</body>
</html>
