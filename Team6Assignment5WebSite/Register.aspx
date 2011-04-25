<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>A.A.R. Book Store</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table runat="server">
            <asp:TableRow ID="TableRow1" runat="server">
                <asp:TableCell ID="TableCell2" runat="server" ColumnSpan="2">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/title.jpg" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" ID="errorLabel" ForeColor="Red"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell Height="80px" VerticalAlign="Bottom" HorizontalAlign="Right">
                    <asp:Label runat="server">Email:</asp:Label>
                </asp:TableCell>
                <asp:TableCell Height="80px" VerticalAlign="Bottom" HorizontalAlign="Left">
                    <asp:TextBox runat="server" ID="emailTextBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:Label runat="server">Password (atleast 6 characters):</asp:Label>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Left">
                    <asp:TextBox runat="server" ID="passwordTextBox" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:Label runat="server">Confirm Password:</asp:Label>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Left">
                    <asp:TextBox runat="server" ID="confirmPasswordTextBox" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell ID="TableCell3" runat="server">&nbsp;</asp:TableCell>
                <asp:TableCell>
                    <asp:Button runat="server" ID="registerButton" OnClick="registerButton_Click" Text="Register"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ID="TableCell4" runat="server">&nbsp;</asp:TableCell>
                <asp:TableCell>
                    <asp:HyperLink runat="server" ID="returnToLoginHyperLink" NavigateUrl="~/Login.aspx">Return to Login</asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableFooterRow ID="TableFooterRow1" runat="server">
                <asp:TableCell ID="TableCell1" runat="server" style="font-size:10px;" padding-top="80px" HorizontalAlign="Center" ColumnSpan="2" Height="100px">
                    Copyright &copy; <%= System.DateTime.Now.Year%> A.A.R. Book Store Inc. All Rights Reserved
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
