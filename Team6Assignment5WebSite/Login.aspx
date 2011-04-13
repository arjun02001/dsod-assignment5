<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table runat="server">
            
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label runat="server" ID="errorLabel" ForeColor="Red"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label runat="server">Email:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ID="TableCell1" runat="server">
                    <asp:TextBox runat="server" ID="emailTextBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label runat="server">Password:</asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox runat="server" ID="passwordTextBox" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Button runat="server" ID="loginButton" OnClick="loginButton_Click" Text="Login"/>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:HyperLink runat="server" NavigateUrl="~/Register.aspx">New users please register before logging in</asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
    </div>
    </form>
</body>
</html>
