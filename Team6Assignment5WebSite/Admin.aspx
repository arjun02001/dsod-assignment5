﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<%@ Register TagPrefix="Date" TagName="Time" Src="~/DateTime.ascx" %>
<%@ Register TagPrefix="Hdr" TagName="Welcome" Src="~/Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%">
        <tr>
            <td align="center" colspan="2">
                <Hdr:Welcome ID="top" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                    <Date:Time ID="Time1" runat="server" />
            </td>
            <td>
                <div>
                    <asp:Table ID="Table1" runat="server">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="hdrLabel" runat="server" Text="Add Book to Catalog" Font-Bold="true"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblAddBookTitle" Text="Book Title: " runat="server"></asp:Label>
                                <asp:TextBox ID="txtAddBookTitle" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="addBooksValidation" ControlToValidate="txtAddBookTitle"
                                    ValidationGroup="addBookDetails" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblAddBookISBN" Text="Book ISBN: " runat="server"></asp:Label>
                                <asp:TextBox ID="txtAddBookISBN" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="addBooksValidation1" ControlToValidate="txtAddBookISBN"
                                    ValidationGroup="addBookDetails" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="lblAddBookPrice" Text="Book Price: " runat="server"></asp:Label>
                                <asp:TextBox ID="txtAddBookPrice" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="addBooksValidation2" ControlToValidate="txtAddBookPrice"
                                    ValidationGroup="addBookDetails" ErrorMessage="*" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAddBookPrice"
                                    ErrorMessage="Please Enter Numbers" ForeColor="Red" ValidationExpression="^[0-9]*\.?[0-9]+$"
                                    ValidationGroup="addBookDetails"></asp:RegularExpressionValidator>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnAddBooksToCatalog" runat="server" Text="Add Book" OnClick="btnClick_AddBookToCatalog"
                                    CausesValidation="true" ValidationGroup="addBookDetails" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label1" runat="server" Text="List of All Books" Font-Bold="true"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:ListBox ID="ListOfNewBooks" runat="server" Enabled="true" Height="150"></asp:ListBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnViewBookDetails" runat="server" Text="View Book Details" OnClick="btnClick_ViewBookDetails" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblBookName" runat="server" Visible="false"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblBookISBN" runat="server" Visible="false"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblBookPrice" runat="server" Visible="false"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="lblErrorMessage" runat="server" Visible="false" ForeColor="Blue"></asp:Label>
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
