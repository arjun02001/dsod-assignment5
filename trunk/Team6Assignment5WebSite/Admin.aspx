<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

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
            <asp:Label ID="lblAddBookTitle" Text="Book Title" runat="server"></asp:Label>
            <asp:TextBox ID="txtAddBookTitle" runat="server"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Label ID="lblAddBookISBN" Text="Book ISBN" runat="server"></asp:Label>
            <asp:TextBox ID="txtAddBookISBN" runat="server"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Label ID="lblAddBookPrice" Text="Book Price" runat="server"></asp:Label>
            <asp:TextBox ID="txtAddBookPrice" runat="server"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell> 
            <asp:Button ID="btnAddBooksToCatalog" runat="server" Text="Add Book To Catalog" OnClick="btnClick_AddBookToCatalog" />
        </asp:TableCell>
    </asp:TableRow>

    <asp:TableRow>
        <asp:TableCell>
            <asp:ListBox ID="ListOfNewBooks" runat="server" Enabled="true"  ></asp:ListBox>
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
            <asp:Label ID="lblErrorMessage" runat="server" Visible="false"></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
