<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>A.A.R. Book Store</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ColumnSpan="2">
                    <asp:Image runat="server" ImageUrl="~/Images/title.jpg" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label runat="server" ID="errorLabel" ForeColor="Red"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Height="80px" VerticalAlign="Bottom" HorizontalAlign="Right">
                    <asp:Label runat="server">Email: </asp:Label>
                </asp:TableCell>
                <asp:TableCell ID="TableCell1" runat="server" Height="80px" VerticalAlign="Bottom" HorizontalAlign="Left">
                    <asp:TextBox runat="server" ID="emailTextBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Right">
                    <asp:Label runat="server">Password: </asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox runat="server" ID="passwordTextBox" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">&nbsp;</asp:TableCell>
                <asp:TableCell runat="server" HorizontalAlign="Left">
                    <asp:Button runat="server" ID="loginButton" OnClick="loginButton_Click" Text="Login"/>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:HyperLink runat="server" NavigateUrl="~/Register.aspx">New users please register before logging in</asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableFooterRow runat="server">
                <asp:TableCell runat="server" style="font-size:10px;" padding-top="80px" HorizontalAlign="Center" ColumnSpan="2" Height="100px">
                    Copyright &copy; <%= System.DateTime.Now.Year%> A.A.R. Book Store Inc. All Rights Reserved
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
