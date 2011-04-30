<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>A.A.R. Book Store</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table runat="server" Width="100%">
            <asp:TableRow>
                <asp:TableCell ID="TableCell2" runat="server" HorizontalAlign="Center">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/title.jpg" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Table runat="server" Width="100%">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Table ID="Table1" runat="server">
                        <asp:TableRow ID="TableRow1" runat="server">
                            <asp:TableCell ID="TableCell1" runat="server">
                                <asp:Label runat="server" ID="errorLabel" ForeColor="Red"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow2" runat="server">
                            <asp:TableCell ID="TableCell3" runat="server" Height="80px" VerticalAlign="Bottom"
                                HorizontalAlign="Right">
                                <asp:Label ID="Label1" runat="server">Email: </asp:Label>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell5" runat="server" Height="80px" VerticalAlign="Bottom"
                                HorizontalAlign="Left">
                                <asp:TextBox runat="server" ID="emailTextBox"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow3" runat="server">
                            <asp:TableCell ID="TableCell6" runat="server" HorizontalAlign="Right">
                                <asp:Label ID="Label2" runat="server">Password: </asp:Label>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell7" runat="server" HorizontalAlign="Left">
                                <asp:TextBox runat="server" ID="passwordTextBox" TextMode="Password"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow4" runat="server">
                            <asp:TableCell ID="TableCell8" runat="server">&nbsp;</asp:TableCell>
                            <asp:TableCell ID="TableCell9" runat="server" HorizontalAlign="Left">
                                <asp:Button runat="server" ID="loginButton" OnClick="loginButton_Click" Text="Login" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow5" runat="server">
                            <asp:TableCell ID="TableCell10" runat="server">&nbsp;</asp:TableCell>
                            <asp:TableCell ID="TableCell11" runat="server">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">New users please register before logging in</asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>&nbsp;</asp:TableCell>
                            <asp:TableCell HorizontalAlign="Left">
                                Forgot Password? <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ForgotPassword.aspx">Click Here</asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <asp:Table runat="server" Width="100%">
            <asp:TableRow ID="TableFooterRow1" runat="server">
                <asp:TableCell ID="TableCell4" runat="server" Style="font-size: 14px;" padding-top="80px"
                    HorizontalAlign="Center" Height="100px">
                    Copyright &copy; <%= System.DateTime.Now.Year%> A.A.R. Book Store Inc. All Rights Reserved
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
