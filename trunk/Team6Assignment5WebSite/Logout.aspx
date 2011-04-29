<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Logout" %>
<%@ Register TagPrefix="Hdr" TagName="Welcome" Src="~/Header.ascx" %>
<%@ Register TagPrefix="Ftr" TagName="Copyright" Src="~/Footer.ascx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>LogOut</title>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%">
        <tr>
            <td><Hdr:Welcome ID="top" runat="server" /></td>
        </tr>
        <tr>
            <td>You have successfully logged out!</td>
        </tr>
        <tr>
            <td style="font-size: 10px; text-align: center;" colspan="2">
                <Ftr:Copyright ID="Cpyrt" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>