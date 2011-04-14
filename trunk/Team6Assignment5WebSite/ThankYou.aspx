<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThankYou.aspx.cs" Inherits="ThankYou" %>

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
                    <asp:Label runat="server">Thank you</asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">A confirmation email has been sent to:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="emailLabel"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
    </div>
    </form>
</body>
</html>
