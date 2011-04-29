<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>A.A.R. Book Store</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="Table1" runat="server" Width="100%">
            <asp:TableRow>
                <asp:TableCell ID="TableCell5" runat="server" HorizontalAlign="Center">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/title.jpg" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Table runat="server" Width="100%"><asp:TableRow><asp:TableCell HorizontalAlign="Center">
        <asp:Table ID="Table2" runat="server">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                    <asp:Label runat="server" ID="errorLabel" ForeColor="Red"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2"><h2>Forgot your Password?</h2></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" Height="30px">
                    Enter your email address below and your password will be sent to you.
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Height="10px" VerticalAlign="Bottom" HorizontalAlign="Right">
                    <asp:Label ID="Label1" runat="server">Email:</asp:Label>
                </asp:TableCell>
                <asp:TableCell Height="10px" VerticalAlign="Bottom" HorizontalAlign="Left">
                    <asp:TextBox runat="server" ID="emailTextBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" Height="30px">
                    <asp:Button runat="server" ID="pwButton" OnClick="forgotPassword_Click" Text="Submit" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" Height="30px"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx">Back to Login Page</asp:HyperLink></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        </asp:TableCell></asp:TableRow></asp:Table>
    </div>
    </form>
</body>
</html>
