<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebForms3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
            color: #6699FF;
        }
        .auto-style2 {
            width: 100%;
            height: 208px;
        }
        .auto-style4 {
            width: 149px;
        }
        .auto-style5 {
            font-size: large;
            width: 149px;
            height: 63px;
        }
        .auto-style6 {
            height: 63px;
        }
        .auto-style7 {
            font-size: large;
            width: 149px;
            height: 71px;
        }
        .auto-style8 {
            height: 71px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Login Form</strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">Username</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtuser" runat="server" Height="28px" Width="301px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Password</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtpass" runat="server" Height="29px" Width="299px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" style="margin-left: 0px" Text="Login" Width="99px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
