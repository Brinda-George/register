<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebformRegister.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h4>User Registration</h4>
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
                <td class="auto-style1">Confirm Password: </td>
                <td><asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Email: </td>
                <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td> 
            </tr>
        </table>
    </div>  
    </form>
</body>
</html>
