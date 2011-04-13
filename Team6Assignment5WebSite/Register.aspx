<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table runat="server">

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" ID="errorLabel" ForeColor="Red"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Email:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="emailTextBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Password (atleast 6 characters):</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="passwordTextBox" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Confirm Password:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="confirmPasswordTextBox" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button runat="server" ID="registerButton" OnClick="registerButton_Click" Text="Register"/>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:HyperLink runat="server" ID="returnToLoginHyperLink" NavigateUrl="~/Login.aspx">Return to Login</asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
    </div>
    </form>
</body>
</html>
