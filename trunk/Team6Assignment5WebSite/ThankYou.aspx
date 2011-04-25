<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThankYou.aspx.cs" Inherits="ThankYou" %>
<%@ Register TagPrefix="Date" TagName="Time" Src="~/DateTime.ascx" %>
<%@ Register TagPrefix="Hdr" TagName="Welcome" Src="~/Header.ascx" %>
<%@ Register TagPrefix="Ftr" TagName="Copyright" Src="~/Footer.ascx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>A.A.R. Book Store - Thank you</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2"><Hdr:Welcome ID="top" runat="server" /></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Panel ID="Panel1" runat="server" Height="219px" Width="200px">
                    <Date:Time ID="Time1" runat="server" />
                    </asp:Panel>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Table runat="server">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label1" runat="server">Thank you</asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label2" runat="server">A confirmation email has been sent to:</asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label runat="server" ID="emailLabel"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableFooterRow>
                <asp:TableCell ColumnSpan="2">
                    <Ftr:Copyright ID="Cpyrt" runat="server" />
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
