<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Catalog" %>
<%@ Register TagPrefix="Date" TagName="Time" Src="~/DateTime.ascx" %>
<%@ Register TagPrefix="Hdr" TagName="Welcome" Src="~/Header.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Catalog</title>
</head>
<body>
    <form id="form1" runat="server">
   
    <table>
    <tr>
    <td>
    <Hdr:Welcome ID="top" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
     <asp:Panel ID="Panel1" runat="server" Height="219px" Width="394px">
            <Date:Time ID="Time1" runat="server" />
           
        </asp:Panel>
    </td>
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
                <asp:TableCell>
                    <asp:Button runat="server" ID="addToCartButton" Text="Add to Cart" OnClick="addToCartButton_Click" />
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
    </div>
    <div>
       
        <br />
        <br />
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
                <asp:TableCell>
                    <asp:Button runat="server" ID="removeFromCartButton" Text="Remove from Cart" OnClick="removeFromCartButton_Click" />
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <br />
        <br />
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
    </table>
       
    
    </form>
</body>
</html>
