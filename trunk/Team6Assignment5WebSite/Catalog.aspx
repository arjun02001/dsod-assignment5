<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Catalog" %>
<%@ Register TagPrefix="Date" TagName="Time" Src="~/DateTime.ascx" %>
<%@ Register TagPrefix="Hdr" TagName="Welcome" Src="~/Header.ascx" %>
<%@ Register TagPrefix="Ftr" TagName="Copyright" Src="~/Footer.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Catalog</title>
</head>
<body>
    <form id="form1" runat="server">
    <table width="750px">
        <tr>
            <td colspan="2"><Hdr:Welcome ID="top" runat="server" /></td>
        </tr>
        <tr>
            <td width="400px" valign="top"><asp:Panel ID="Panel1" runat="server" Height="219px" Width="200px">
            <Date:Time ID="Time1" runat="server" />
            </asp:Panel></td>
            <td>
                <div>
                    <asp:Table ID="Table1" runat="server">

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" ID="errorLabel" ForeColor="red"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="Label1" runat="server">Available Books: (Title | ISBN | Price)</asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:ListBox runat="server" ID="availableBooksListBox" Height="200"></asp:ListBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Right">
                            <asp:Button runat="server" ID="addToCartButton" Text="Add to Cart" OnClick="addToCartButton_Click" />
                        </asp:TableCell>
                    </asp:TableRow>

                    </asp:Table>
                </div><br /><br />
                <div>
                <asp:Table ID="Table2" runat="server">

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server">Your Cart</asp:Label>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:ListBox runat="server" ID="yourCartListBox" Height="200"></asp:ListBox>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right">
                        <asp:Button runat="server" ID="removeFromCartButton" Text="Remove from Cart" OnClick="removeFromCartButton_Click" />
                    </asp:TableCell>
                </asp:TableRow>

                </asp:Table>
                </div><br /><br />
                <div>
                <asp:Table ID="Table3" runat="server">
            
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button runat="server" ID="proceedToCheckoutButton" Text="Proceed to Checkout" OnClick="proceedToCheckoutButton_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                </asp:Table>
                </div>
            </td>
        </tr>
        <tr>
            <td style="font-size:10px; text-align:center;" colspan="2"><Ftr:Copyright ID="Cpyrt" runat="server" /></td>
        </tr>
    </table>   
    </form>
</body>
</html>
