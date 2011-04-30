<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Footer.ascx.cs" Inherits="Footer" %>
<asp:Table runat="server" Width="100%">
    <asp:TableRow>
        <asp:TableCell HorizontalAlign="Center">
            <asp:Label ID="totalUsersLabel" runat="server" Font-Size="Medium" ForeColor="Brown"></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell HorizontalAlign="Center">
            <asp:Label ID="cpy" runat="server" Font-Size="Medium"></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
</asp:Table>
