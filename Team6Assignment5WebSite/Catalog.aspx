﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Catalog" %>

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
                    <asp:Label runat="server">Available Books:</asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:ListBox runat="server" ID="availableBooksListBox"></asp:ListBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button runat="server" ID="addToCartButton" Text="Add to Cart" />
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <br />
        <br />
        <br />
        <br />
        <asp:Table runat="server">

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Your Cart</asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:ListBox runat="server" ID="yourCartListBox"></asp:ListBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button runat="server" ID="removeFromCartButton" Text="Remove from Cart" />
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <br />
        <br />
        <br />
        <br />
        <asp:Table runat="server">
            
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button runat="server" ID="proceedToCheckoutButton" Text="Proceed to Checkout" />
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
    </div>
    </form>
</body>
</html>